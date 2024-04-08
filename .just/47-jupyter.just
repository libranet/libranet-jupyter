# See ../justfile

# Start jupyter-lab
jupyter-start:
	jupyter lab


# Show list of available kernels
jupyter-show-kernels:
	jupyter kernelspec list


# Show configuration paths
jupyter-show-paths:
	jupyter --path


# Generate config for jupyter notebooks
jupyter-notebooks-generate-config:
	jupyter notebooks --generate-config


# Generate config for jupyter lab
jupyter-lab-generate-config:
	jupyter lab --generate-config