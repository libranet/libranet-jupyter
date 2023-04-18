[![Testing](https://img.shields.io/github/actions/workflow/status/libranet/libranet-jupyter/testing.yaml?branch=main&longCache=true&style=flat-square&label=tests&logo=GitHub%20Actions&logoColor=fff")](https://github.com/libranet/libranet-jupyter/actions/workflows/testing.yaml)
[![Linting](https://img.shields.io/github/actions/workflow/status/libranet/libranet-jupyter/linting.yaml?branch=main&longCache=true&style=flat-square&label=linting&logo=GitHub%20Actions&logoColor=fff")](https://github.com/libranet/libranet-jupyter/actions/workflows/linting.yaml)
[![Read the Docs](https://readthedocs.org/projects/libranet-jupyter/badge/?version=latest)](https://libranet-jupyter.readthedocs.io/en/latest/)
[![Codecov](https://codecov.io/gh/libranet/libranet-jupyter/branch/main/graph/badge.svg?token=QTOWRXGH61)](https://codecov.io/gh/libranet/libranet-jupyter)
[![PyPi Package](https://img.shields.io/pypi/v/libranet-jupyter?color=%2334D058&label=pypi%20package)](https://pypi.org/project/libranet-jupyter/)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/libranet/libranet-jupyter/blob/main/docs/license.md)



## Introduction

A Jupyter-notebook environment.


## Installation


```
cd <your-projects-dir>
git clone https://github.com/libranet/libranet-jupyter.git
make install
```


## Running Jupyter
Start jupyter-lab in foreground:

```
make jupyter-start
```



## Running pytest
Run the unittests with pytest:

```
make pytest
```


## Open in VS Code

```
code .
```