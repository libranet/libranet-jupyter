# See ../justfile


# Upload packages
[group: 'twine']
twine-upload:
	twine upload var/wheels/*.whl --skip-existing --verbose
