/root/.ssh/id_rsa:
	ssh-keygen -t rsa -b 4096 -N "" -f /root/.ssh/id_rsa

/root/.ssh/id_rsa.pub: /root/.ssh/id_rsa

/root/.ssh/authorized_keys: /root/.ssh/id_rsa.pub
	cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
	chmod 600 /root/.ssh/authorized_keys