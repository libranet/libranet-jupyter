# See ../justfile


# symlink bin/ipython to bin/ip
ipython-symlink-to-ip:
	- cd .venv/bin && ln -sf ipython ip && cd -

