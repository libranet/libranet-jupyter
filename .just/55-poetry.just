# See ../justfile

# run poetry install to create the virtualenv
poetry-install:
	poetry install


# run poetry install without dev-dependencies
poetry-install-no-dev:
	poetry install --no-dev


# run poetry lock to update poetry.lock
poetry-lock:
	poetry lock


# run poetry update to update your project-dependencies
poetry-update:
	poetry update


# run poetry build to create the python-package
poetry-build:
	poetry build


# publish the package to pypi
poetry-publish:
	poetry publish


## run poetry check on python-package
poetry-check:
	poetry check


# run poetry lock --check on python-package
poetry-lock-check:
	poetry lock --check


# run env info
poetry-env-info:
	poetry env info


# generate a requirements.txt-file
poetry-export-requirements:
	poetry export --format requirements.txt --output requirements.txt


# generate a requirements.txt-file for readthedocs
# poetry-export-requirements-docs:
# 	poetry export --format requirements.txt --only=docs --without-hashes --output docs/requirements.txt