# See ../justfile

relative_venv_dir := if os_family() == "windows" { ".venv" } else { ".venv" }

# initialize dir-structure, create dirs
create-dirs:
    @ echo -e "In current working dir: ${PWD}"
    mkdir -p var
    mkdir -p var/cache
    mkdir -p var/cache/vscode
    mkdir -p var/log
    mkdir -p var/tmp


# symlinks to venv-dirs to make bin/python work
symlink-venv-dirs:
    @ echo -e "Symlinking venv-dirs to make bin/python work"
    @ ln -sf {{relative_venv_dir}}/bin
    @ ln -sf {{relative_venv_dir}}/lib
    @ ln -sf {{relative_venv_dir}}/pyvenv.cfg
    @ if [ -d "{{relative_venv_dir}}/lib64" ]; then ln -sf "{{relative_venv_dir}}/lib64" ; fi  # optional lib64