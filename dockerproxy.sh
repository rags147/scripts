#sudo mkdir -p /etc/systemd/system/docker.service.d
cd /etc/systemd/system/docker.service.d
sudo vi /etc/systemd/system/docker.service.d/proxy.conf
#####
#[Service]
#Environment="HTTP_PROXY=http://myproxy.hostname:8080"
#Environment="HTTPS_PROXY=https://myproxy.hostname:8080/"
#Environment="NO_PROXY="localhost,127.0.0.1,::1"
####
sudo systemctl daemon-reload
sudo systemctl restart docker.service
