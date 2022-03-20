sudo mkdir /opt/teamcity
cd /opt/teamcity

# We need to download a zip file from the teamcity server to install it on the agent. Replace the server-url with your server ip or server hostname.

wget http://127.0.0.1:8111/update/buildAgent.zip
sudo unzip buildAgent.zip
sudo chmod +x bin/agent.sh
cp conf/buildAgent.dist.properties conf/buildAgent.properties

#Now we need to open the buildAgent.properties file and change the serverUrl with your server URL on line 9.

#Teamcity agent startup script
#Now we will create teamcity agent startup script so that we can manage it easily.

if [ ! -f /path/to/file ]
then
  sudo cp ./teamcity-agent.service /etc/systemd/system/teamcity-agent.service
else
  echo "File found: /etc/systemd/system/teamcity-agent.service"
fi

sudo systemctl enable teamcity-agent
sudo systemctl start teamcity-agent
