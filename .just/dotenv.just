# See ../justfile


# See https://stackoverflow.com/questions/19456518/error-when-using-sed-with-find-command-on-os-x-invalid-command-code
# By default MacOS does not use GNU Sed, but a different less-compatible sed-implemenation that
# easily triggers following error: 'invalid command code'.
# You need to install GNU Sed via 'brew install gnu-sed' to make the 'gsed'-command available on $PATH.
# In our makesfiles, use gsed if found, otherwise regular sed.
SED := `command -v gsed || command -v sed`


# instantiate the dotenv-file (no override)
# cp --backup  creates .env~, but will overwrite this next time.
# safest way, is to not overwrite existing .env-files, manual intervention needed.
[group: 'dotenv']
dotenv-install-from-template:
	@echo -e "Copying .env.template to .env" ;\
	cp -n .env.template .env ;\
	echo "Please review any credentials in the .env-file."


# replace placeholder __CDW__ with current working directory
[group: 'dotenv']
dotenv-set-basedir:
	@echo -e "Replacing string __CWD__ -> $(PWD)" ;\
	sed -i 's@__CWD__@'"$(PWD)"'@'  .env


# install .env-file from .env.template
[group: 'dotenv']
dotenv-install: dotenv-install-from-template dotenv-set-basedir