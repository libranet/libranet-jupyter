# See ../justfile

# run poetry install to create the virtualenv
[group: 'poetry']
poetry-install:
	poetry install


# run poetry install without dev-dependencies
[group: 'poetry']
poetry-install-no-dev:
	poetry install --no-dev


# run poetry lock to update poetry.lock
[group: 'poetry']
poetry-lock:
	poetry lock


# run poetry update to update your project-dependencies
[group: 'poetry']
poetry-update:
	poetry update


# run poetry build to create the python-package
[group: 'poetry']
poetry-build:
	poetry build


# publish the package to pypi
[group: 'poetry']
poetry-publish:
	poetry publish


## run poetry check on python-package
[group: 'poetry']
poetry-check:
	poetry check


# run poetry lock --check on python-package
[group: 'poetry']
poetry-lock-check:
	poetry lock --check


# run env info
[group: 'poetry']
poetry-env-info:
	poetry env info


# generate a requirements.txt-file
[group: 'poetry']
poetry-export-requirements:
	poetry export --format requirements.txt --output requirements.txt


# generate a requirements.txt-file for readthedocs
# [group: 'poetry']
# poetry-export-requirements-docs:
# 	poetry export --format requirements.txt --only=docs --without-hashes --output docs/requirements.txt