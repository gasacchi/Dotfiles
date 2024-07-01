link:
	stow .

delete:
	stow -D .

kanata:
	doas cp .config/kanata/kanata.service /lib/systemd/system/kanata.service
	doas systemctl start kanata.service
	doas systemctl enable kanata.service
