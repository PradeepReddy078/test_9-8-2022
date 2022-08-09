Installation Guide 

The following prerequisites and requirements must be satisfied in order to install successfully.

a) Operating system preferred to be ubuntu linux distribution   b) To check your Ubuntu version,open the terminal by using [Ctrl] + [Alt] + [T] or manually and type the command lsb_release -a into the command line and press enter.

Pre-Installation Requirements:

1) User must execute the following list of commands in the user terminal (i.e non-root)

Type the below commands to enter into the users workspace (i.e /home/$user) 

i) cd ~
ii) pwd

2) Git should be download in the users local machine for cloning the repository form the bitbucket 
i) To install the git : sudo apt install git 
ii)To check the git version: git --version

3)Clone the repository from the Bit-bucket of pkms by executing the below commands

  git clone https://pradeep078@bitbucket.org/pkms-solar/docker-qa-automation.git
 
  cd docker-qa-automation
 
For executing the script file permissions are given through the below commands

 chmod +x install.sh
 chmod +x docker-run.sh
 
 4) Intially docker and docker-compose tools are required for running the multi-containers, for installing these tools execute the install.sh file 
 
 1) sh/install.sh or ./install.sh or /bin/bash install.sh

 After successful executing of this file check the docker and docker-compose version by using the below commands
  
 sudo docker version
 sudo docker-compose --version
 
 
5) Executing the docker-run.sh   shell script either by using sh docker-run.sh or /bin/bash docker-run.sh

After executing this command, containers will up and run

Note: **This execution may takes for the 10 t0 15 minutes based on internet speed
      **After successful installation you will get below message prin
      
      creating jenkins... done
      creating node_server....done  
      
 6) After successfull installation of containers, open the chrome-browser and type localhost:8082 
 
You will see the jenkins start page "welcome to jenkins" enter the login credentials   username: admin & Password: admin to get into the jenkins server
