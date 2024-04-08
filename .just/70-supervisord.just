# See ../justfile


# execute bin/supervisord
supervisord-start:
	bin/supervisord


# execute bin/supervisorctl shutdown
supervisord-stop:
	bin/supervisorctl shutdown


# execute bin/supervisorctl status
supervisord-status:
	bin/supervisorctl status
