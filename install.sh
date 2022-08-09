#!/bin/bash

#curl
if ! [ -x "$(command -v curl)" ];
then
        echo '---------------------------------------'
    echo '---------- Installing Curl -----------'
        echo '---------------------------------------'

        sudo apt install -yq curl
else
        echo '---------- Curl is already installed -----------'

fi

#docker
if ! [ -x "$(command -v docker)" ];
then
        echo '---------------------------------------'
    echo '---------- Installing Docker -----------'
        echo '---------------------------------------'

        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
        sudo apt-get update
        apt-cache policy docker-ce

        sudo apt-get install -y docker-ce

else
        echo '---------- Docker is already installed -----------'

fi

#docker-compose
if ! [ -x "$(command -v docker-compose)" ];
then
                 echo '---------------------------------------'
         echo '------ Installing Docker-Compose ------'
         echo '---------------------------------------'

         sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
         sudo chmod +x /usr/local/bin/docker-compose
         docker-compose –version

else
        echo '---------- Docker already installed -----------'
fi

#creating user for docker
sudo usermod -aG docker ${USER}

var1=`pwd`


mkdir $var1/docker-volumes
mkdir $var1/docker-volumes/keys
mkdir $var1/docker-volumes/jobs-config
mkdir $var1/docker-volumes/jenkins
mkdir $var1/docker-volumes/node_home
echo $var1



#docker login


cat $var1/password.txt | docker login --username electrumlocaltesting --password-stdin

