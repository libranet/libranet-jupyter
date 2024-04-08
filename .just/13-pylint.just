# See ../justfile

# show which pylint is used
pylint-which:
	@ which pylint


## run pylint on python-files
pylint: pylint-which
	- pylint src/ tests/
