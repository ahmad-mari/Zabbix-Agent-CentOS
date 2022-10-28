#!/bin/bash
sudo rpm -Uvh https://repo.zabbix.com/zabbix/4.0/rhel/7/x86_64/zabbix-release-4.0-2.el7.noarch.rpm
sudo yum install zabbix-agent.x86_64 -y
sed -i 's/ServerActive=127.0.0.1/ServerActive=monitor.arabyads.com,134.122.74.169/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/Server=127.0.0.1/Server=monitor.arabyads.com,134.122.74.169/g' /etc/zabbix/zabbix_agentd.conf
sudo systemctl restart zabbix-agent
sudo systemctl status zabbix-agent
