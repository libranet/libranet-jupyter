# See ../justfile


# Upload packages
twine-upload:
	twine upload var/wheels/*.whl --skip-existing --verbose
