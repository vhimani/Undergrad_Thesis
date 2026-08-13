PYTHON := .venv/bin/python
YEARLY_SUBSETS := $(wildcard ALL/[0-9][0-9]_subset.dta)

.PHONY: all data tables figures validate clean

all:
	./scripts/run-thesis-pipeline.sh

data: derived/all_atus_qtr_temp.dta

tables: outputs/tables/regression-results.csv
	$(PYTHON) analysis/generate_outputs.py

figures: outputs/tables/regression-results.csv
	$(PYTHON) analysis/generate_outputs.py

validate: tables
	$(PYTHON) analysis/validate_outputs.py

ALL/all_atus.dta: ALL/merge.do $(YEARLY_SUBSETS)
	./scripts/run-stata.sh ALL/merge.do

derived/all_atus_qtr_temp.dta: ALL/all_atus.dta analysis/prepare_data.do
	./scripts/run-stata.sh analysis/prepare_data.do

outputs/tables/regression-results.csv: derived/all_atus_qtr_temp.dta analysis/regression_tables.do
	./scripts/run-stata.sh analysis/regression_tables.do

$(PYTHON): requirements.txt
	python3 -m venv .venv
	$(PYTHON) -m pip install -r requirements.txt

clean:
	rm -rf derived logs tmp .venv analysis/__pycache__
