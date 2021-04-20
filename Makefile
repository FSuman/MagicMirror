DEPLOY_HOST = 192.168.2.251


push:
	scp -r . pi@$(DEPLOY_HOST):/home/pi/MagicMirror/

restart_server:
	ssh pi@$(DEPLOY_HOST) pm2 restart mm
