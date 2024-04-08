# See ../justfile


# show which safety is used
safety-which:
	@ which safety


# run safety check
safety-check:
	safety check


# run safety check with html-report
safety-check-html:
	@ mkdir -p var/html/safety
	safety check --save-html var/html/safety/safety.html
