# See ../justfile


# Add virtualenv to PATH, same effect as activating the virtualenv
# VENV_BIN_DIR := $(shell pwd)/.venv/bin

# VENV_DIR := $(shell poetry env info --path)

# VENV_BIN_DIR := ${VENV_DIR}/bin
# export PATH := $(VENV_BIN_DIR):$(PATH)

# prepend local bin-directory to $PATH
venv_bin_dir := if os_family() == "windows" { justfile_directory() / ".venv/Scripts" } else { justfile_directory() / ".venv/bin" }
export PATH := if os_family() == "windows" { venv_bin_dir + x";${PATH}" } else { venv_bin_dir + x":${PATH}" }
