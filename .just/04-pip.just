# See ../justfile


# show which python is used
python-which:
	@ which python


# show which pip is used
pip-which:
	@ which pip


# upgrade pip itself
pip-upgrade: python-which
    python -m pip install --upgrade pip