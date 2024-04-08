# See ../justfile


# show which pyroma is used
pyroma-which:
	@ which pyroma


# run pyroma
pyroma: pyroma-which
	- pyroma .

