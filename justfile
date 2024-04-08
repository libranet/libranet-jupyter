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
import '.just/01-path.just'
import '.just/02-dir-structure.just'
import '.just/03-dotenv.just'
import '.just/04-pip.just'
import '.just/05-git.just'
import '.just/10-black.just'
import '.just/11-isort.just'
import '.just/12-flake8.just'
import '.just/13-pylint.just'
import '.just/14-mypy.just'
import '.just/16-ruff.just'
import '.just/17-ipython.just'
import '.just/18-pyroma.just'
import '.just/19-safety.just'
import '.just/20-pytest.just'
import '.just/21-tox.just'
import '.just/22-nox.just'
import '.just/25-sphinx.just'
import '.just/30-pre-commit.just'
import '.just/47-jupyter.just'
import '.just/55-poetry.just'
import '.just/70-supervisord.just'
# import '.just/sshx.just'
import '.just/75-twine.just'
import '.just/just.just'
import '.just/sshx.just'


PROJECT_NAME := 'libranet-jupyter'


# full initial installation
install: create-dirs create-dirs-extra dotenv-install poetry-install symlink-venv-dirs pip-upgrade


# create-dirs-extra ## initialize dir-structure, create dirs & symlinks
create-dirs-extra:
    @ mkdir -p var/envs
    @ mkdir -p var/data
    @ mkdir -p var/notebooks
    @ mkdir -p var/src
