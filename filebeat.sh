#!/bin/bash
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a 
/etc/apt/sources.list.d/elastic-6.x.list
sudo apt-get update && sudo apt-get install filebeat
sudo rm -f /etc/filebeat/filebeat.yml
sudo cp filebeat.yml /etc/filebeat/ && sudo cp suricata /etc/logrotate.d/ && sudo logrotate /etc/logrotate.d/suricata && sudo chmod 775 /var/log/suricata/eve.json 
