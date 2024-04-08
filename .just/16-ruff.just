# See ../justfile

# show which ruff is used
ruff-which:
	@ which ruff


# run ruff on python-files
ruff: ruff-which
	- ruff docs/ src/ tests/


# run ruff --check on python-files
ruff-check: ruff-which
	- ruff check docs/ src/ tests/


## run ruff --fix on python-files
ruff-fix: ruff-which
	- ruff --fix docs/ src/ tests/