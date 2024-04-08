# See ../justfile


# show which tox is used
tox-which:
	@ which tox


# run tox
tox: tox-which
	- tox

