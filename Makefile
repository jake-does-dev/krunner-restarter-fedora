install:
	sudo cp krunner-watch.sh /usr/local/bin/krunner-watch
	sudo chmod +x /usr/local/bin/krunner-watch
	sudo cp krunner-watch.service /usr/lib/systemd/user/krunner-watch.service
	systemctl --user enable --now krunner-watch
uninstall:
	sudo rm /usr/local/bin/krunner-watch
	systemctl --user disable --now krunner-watch
	sudo rm /usr/lib/systemd/user/krunner-watch.service
