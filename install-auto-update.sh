#write out current crontab
sudo crontab -l > mycron
#echo new cron into cron file
echo "@reboot bash /autodarts/auto-update.sh" >> mycron
#install new cron file
sudo crontab mycron
rm mycron
