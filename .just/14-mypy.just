# See ../justfile


# show which mypy is used
mypy-which:
	@ which mypy


# run mypy on python-files
mypy: mypy-which
	mypy src tests


# run mypy with html-reporting
mypy-report: mypy-which
	@ mkdir -p var/html/mypy/
	mypy src tests --html-report var/html/mypy/


# alias for mypy-report
mypy-html: mypy-report