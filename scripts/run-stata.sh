#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 path/to/script.do" >&2
    exit 64
fi

case "$1" in
    /*) script_path=$1 ;;
    *) script_path=$repo_root/$1 ;;
esac

if [ ! -f "$script_path" ]; then
    echo "Stata script not found: $script_path" >&2
    exit 66
fi

case "$script_path" in
    "$repo_root"/*.do) ;;
    *)
        echo "Script must be a .do file inside $repo_root" >&2
        exit 65
        ;;
esac

if [ -n "${STATA_BIN:-}" ]; then
    stata_bin=$STATA_BIN
elif command -v stata-mp >/dev/null 2>&1; then
    stata_bin=$(command -v stata-mp)
elif command -v stata-se >/dev/null 2>&1; then
    stata_bin=$(command -v stata-se)
elif command -v stata >/dev/null 2>&1; then
    stata_bin=$(command -v stata)
elif [ -x /Applications/StataNow/StataMP.app/Contents/MacOS/stata-mp ]; then
    stata_bin=/Applications/StataNow/StataMP.app/Contents/MacOS/stata-mp
else
    echo "Stata not found. Set STATA_BIN to its command-line executable." >&2
    exit 69
fi

relative_path=${script_path#"$repo_root"/}
script_dir=$(dirname -- "$script_path")
log_stem=$(printf '%s' "$relative_path" | tr '/ ' '__' | sed 's/\.do$//')
log_dir=$repo_root/logs
mkdir -p "$log_dir"

bootstrap_dir=$(mktemp -d "${TMPDIR:-/tmp}/undergrad-thesis-stata.XXXXXX")
trap 'rm -rf "$bootstrap_dir"' EXIT HUP INT TERM
bootstrap=$bootstrap_dir/$log_stem.do
log_file=$log_dir/$log_stem.log

{
    printf 'global PROJECT_ROOT "%s"\n' "$repo_root"
    printf 'set more off\n'
    printf 'cd "%s"\n' "$script_dir"
    printf 'do "%s"\n' "$script_path"
} > "$bootstrap"

rm -f "$log_dir/$log_stem.log"
(
    cd "$log_dir"
    "$stata_bin" -b do "$bootstrap"
)

generated_log=$log_dir/$log_stem.log
if [ ! -f "$generated_log" ]; then
    echo "Stata did not produce the expected log: $generated_log" >&2
    exit 70
fi

if grep -Eq '^r\([0-9]+\);$' "$generated_log"; then
    echo "Stata failed. See $generated_log" >&2
    tail -n 25 "$generated_log" >&2
    exit 1
fi

echo "Stata completed: $relative_path"
echo "Log: $log_file"
