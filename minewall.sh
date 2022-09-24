#!/bin/bash

# FUNCIONES
apt install firewalld && firewall-cmd --permanent --zone=public --add-port=25565/tcp && firewall-cmd --permanent --zone=public --add-port=25565/udp && firewall-cmd --permanent --zone=public --add-port=8080/tcp && firewall-cmd --permanent --zone=public --add-port=8080/udp && firewall-cmd --permanent --zone=public --add-port=5657/tcp && firewall-cmd --permanent --zone=public --add-port=5657/udp && firewall-cmd --permanent --zone=public --add-port=25580/tcp && firewall-cmd --permanent --zone=public --add-port=25580/udp && firewall-cmd --permanent --zone=public --add-port=25577/tcp && firewall-cmd --permanent --zone=public --add-port=25577/udp && firewall-cmd --permanent --zone=public --add-port=25566/tcp && firewall-cmd --permanent --zone=public --add-port=25566/udp && firewall-cmd --permanent --zone=public --add-port=25590/tcp && firewall-cmd --permanent --zone=public --add-port=25590/udp && firewall-cmd --permanent --zone=public --add-port=3306/tcp && firewall-cmd --permanent --zone=public --add-port=80/tcp && firewall-cmd --permanent --zone=public --add-port=8000 && firewall-cmd --reload
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
apt-get install pufferpanel
systemctl enable pufferpanel
systemctl start pufferpanel
pufferpanel user add
