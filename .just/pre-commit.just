# See ../justfile


# show which pre-commit is used
[group: 'pre-commit']
pre-commit-which:
	@ which pre-commit


# install the pre-commit-hook in .git/hooks
[group: 'pre-commit']
precommit-install-hook: pre-commit-which
	pre-commit install


# uninstall the pre-commit-hook in .git/hooks
[group: 'pre-commit']
precommit-uninstall-hook: pre-commit-which
	pre-commit uninstall


# run all precommit-steps on all files
[group: 'pre-commit']
precommit-run-files: pre-commit-which
	pre-commit run --all-files


# validate .pre-commit-config.yaml
[group: 'pre-commit']
precommit-validate-config: pre-commit-which
	pre-commit validate-config
