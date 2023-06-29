#!/bin/bash
sudo su
yum update –y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
amazon-linux-extras install epel -y
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
systemctl enable jenkins
systemctl start jenkins

# Installing Git
yum install git -y
###

# Use The Amazon Linux 2 AMI When Launching The Jenkins VM/EC2 Instance
# Instance Type: t2.medium or small minimum
# Open Port (Security Group): 8080 
