wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
sudo apt-get update && sudo apt-get install elasticsearch
echo 'To change Elasticsearch config options, sudo vi /etc/elasticsearch/elasticsearch.yml'
echo 'If /bin/systemctl is installed run sudo /bin/systemctl daemon-reload && sudo /bin/systemctl enable elasticsearch.service && sudo /bin/systemctl start elasticsearch.service'
echo 'If /bin/systemctl is not installed run sudo service elasticsearch status'
