# This is a comment.
#
# Just is a crossplatform task-runner, similar to make.
# And justfiles are equivalent to makefiles.
#
# Official docs:
#  - https://just.systems/man/en
#
# Usage:
#   > just --help
#   > just <taskname>
#
# For more information, please see
#   - https://www.gnu.org/software/make/manual/make.html
#
# General syntax:
#   targets : prerequisites; recipes
#   <TAB>recipe
#
# - indent with 4 spaces (convention)
#
# - Commands starting with
#     "-" are ignoring their exit-code.
#     "@" do not echo the command itself.
#
# - just starts a new shell process for each recipe line.
#   Thus shell variables, even exported environment variables, cannot propagate upwards.
#   Therefore better concatenate your multiline-commands with ";\" into a single line.
#
# - Comments immediately preceding a recipe will appear in just --list:




# load environment variables from .env file
set dotenv-filename := ".env"
set dotenv-load	:= true

# search for justfiles in parent directories
set fallback

# set tempdir := "var/tmp"

# set shell to powershell on Windows
set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
set shell := ["bash", "-uc"]

# Help target
help:
    @ just --list --unsorted

# include re-usable justfiles
import '.just/path.just'
import '.just/dir-structure.just'
import '.just/dotenv.just'
import '.just/git.just'
import '.just/sphinx.just'
import '.just/pre-commit.just'
import '.just/jupyter.just'
import '.just/supervisord.just'
import '.just/just.just'
import '.just/uv.justfile'


PROJECT_NAME := 'libranet-jupyter'


# full initial installation
# install: create-dirs create-dirs-extra dotenv-install poetry-install symlink-venv-dirs pip-upgrade
install: create-dirs create-dirs-extra dotenv-install uv-sync-all-groups symlink-venv-dirs


# create-dirs-extra ## initialize dir-structure, create dirs & symlinks
create-dirs-extra:
    @ mkdir -p var/envs
    @ mkdir -p var/data
    @ mkdir -p var/notebooks
    @ mkdir -p var/src
