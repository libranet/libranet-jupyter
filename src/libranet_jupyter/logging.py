"""libranet_jupyter/logging."""
import pathlib as pl

import os
import sys
import libranet_logging


def configure_logging() -> None:
    """Configure logging from the packaged etc/logging.yml"""
    base_dir = pl.Path(sys.prefix).parent
    logging_yml_file = base_dir / "etc" / "logging.yml"
    libranet_logging.initialize(path=logging_yml_file)


def show_loglevels() -> None:
    """Print current loglevels set as environment variables."""
    for key, val in os.environ.items():
        if "LOGLEVEL_" in key:
            print(f"{key}={val}")
