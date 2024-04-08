# See ../justfile


# show which pre-commit is used
pre-commit-which:
	@ which pre-commit


# install the pre-commit-hook in .git/hooks
precommit-install-hook: pre-commit-which
	pre-commit install


# uninstall the pre-commit-hook in .git/hooks
precommit-uninstall-hook: pre-commit-which
	pre-commit uninstall


# run all precommit-steps on all files
precommit-run-files: pre-commit-which
	pre-commit run --all-files


# validate .pre-commit-config.yaml
precommit-validate-config: pre-commit-which
	pre-commit validate-config
