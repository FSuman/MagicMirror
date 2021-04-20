DEPLOY_HOST = 192.168.2.251


push:
	 rsync -rv ./ pi@192.168.2.251:/home/pi/MagicMirror/ --exclude .git

restart_server:
	ssh pi@$(DEPLOY_HOST) pm2 restart mm


deploy:
	make push
	make restart_server
