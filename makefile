# This is a comment.
# Important: You *must* indent using <TAB>s, not spaces.
#
# For more information, please see
#   - https://www.gnu.org/software/make/manual/make.html
#
# General syntax:
#   targets : prerequisites; recipes
#   <TAB>recipe
#
# - Commands starting with
#     "-" are ignoring their exit-code.
#     "@" do not echo the command itself.
#
# - make starts a new shell process for each recipe line.
#   Thus shell variables, even exported environment variables, cannot propagate upwards.
#   Therefore better concatenate your multiline-commands with ";\" into a single line.

PROJECT_NAME='libranet-jupyter'

# include re-usable makefiles
-include .make/*.mk


.PHONY: install  ## full initial installation
install: create-dirs create-dirs-extra dotenv-install poetry-install symlink-venv-dirs pip-upgrade


.PHONY: create-dirs-extra ## initialize dir-structure, create dirs & symlinks
create-dirs-extra:
	mkdir -p var/envs
	mkdir -p var/data
	mkdir -p var/notebooks
	mkdir -p var/src