#!/bin/bash


##install jenkins

#!/bin/bash

# Update the system
sudo yum update -y

# Install Java (if not already installed)
sudo yum install java-1.8.0-openjdk -y

# Add the Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

# Install Jenkins
sudo yum install jenkins -y

# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Configure the firewall to allow Jenkins
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

# Print the initial admin password
echo "Initial Admin Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Open a web browser and navigate to http://YOUR_SERVER_IP:8080 to complete the setup


