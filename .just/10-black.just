# See ../justfile

# show which black is used
black-which:
	@ which black


# run black on python-files
black: black-which
	- black docs/ src/ tests/
