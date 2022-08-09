FROM ubuntu:20.04

RUN apt-get update && apt-get install openssh-server -y
RUN apt search vim
RUN apt install vim -y

# created a user called test and add it to the sudo group
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 
RUN  echo 'test:test' | chpasswd 

RUN usermod -aG sudo test
WORKDIR /home/ubuntu
RUN mkdir -p /home/ubuntu/pms 
RUN chmod 755 /home/ubuntu/pms
#RUN chown test:test -R /home/ubuntu/pms

# copied keys to the pms folder
COPY ./id_rsa.pub /home/ubuntu/pms/id_rsa.pub
RUN groupadd test 

## changed the ownership & file permissions of the file 
RUN chown test:test -R /home/ubuntu/pms/id_rsa.pub
RUN chmod 600 /home/ubuntu/pms/id_rsa.pub 

# Enabled passwordAuthentication
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN service ssh start
EXPOSE 22

# home/pms
volume /home/ubuntu/pms
CMD ["/usr/sbin/sshd","-D"]
