# See ../justfile


# show which nox is used
nox-which:
	@ which nox


# run nox
nox: nox-which
	- nox
