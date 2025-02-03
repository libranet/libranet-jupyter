# See ../justfile


# Start jupyter-lab
[group: 'jupyter']
jupyter-start:
	jupyter lab


# Show list of available kernels
[group: 'jupyter']
jupyter-show-kernels:
	jupyter kernelspec list


# Show configuration paths
[group: 'jupyter']
jupyter-show-paths:
	jupyter --path


# Generate config for jupyter notebooks
[group: 'jupyter']
jupyter-notebooks-generate-config:
	jupyter notebooks --generate-config


# Generate config for jupyter lab
[group: 'jupyter']
jupyter-lab-generate-config:
	jupyter lab --generate-config