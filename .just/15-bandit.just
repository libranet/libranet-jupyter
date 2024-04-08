# See ../justfile


# show which bandit is used
bandit-which:
	@ which bandit


# run bandit
bandit:
# bandit --configfile pyproject.toml --recursive src --baseline etc/bandit-baseline.json
	bandit --configfile pyproject.toml --recursive .


# run bandit with htm-report
bandit-html:
	@ mkdir -p var/html/bandit
	@ echo -e "Bandit-report generated in var/html/bandit/bandit.html"
	bandit --config pyproject.toml --recursive . --format html > var/html/bandit/bandit.html


# update bandit baseline
bandit-update-baseline:
	bandit --configfile pyproject.toml --recursive .  --format json --output etc/bandit-baseline.json