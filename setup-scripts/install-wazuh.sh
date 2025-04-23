#Download and run the wazuh instalation assistant for wazuh manager and agents
#This will install the Wazuh manager, indexer, and dashboard
curl -sO https://packages.wazuh.com/4.11/wazuh-install.sh && sudo bash ./wazuh-install.sh -a

# You should now be able to access the wazuh web interface using https://<WAZUH_DASHBOARD_IP_ADDRESS> and your credentials you
# were given when the installation was complete
