# Terraform and Jenkins Cycle
Terraform and Jenkins to automate deployments.

# Overview : 
- Jenkins Server is configured on Azure.
- [Jenkins Server URL](http://rundotpyjenkins.eastus.cloudapp.azure.com:8080/)
- This pre-built Jenkins Server is based off Windows 2019 Server.
- Git and Terraform Plugins were installed, within Jenkins.
- Git and Terraform Install directories are located and provided within Jenkins.
- These install locations were updated via the Global Tool Configurations Menu.
- Terragrunt was installed on the Jenkins Server

# Overview :
- Jenkins Server is configured to run as a docker image in detached mode.
- Required ports : 8080, for default communication.
- Required ports : 50000, for master/slave communication.
- A Jenkins Credential with Global Scope is created with the details of this GitHub Repo.
- Jenkins Global Scope Credential ID : rundotpy_cred_global_github

# Jenkins Setup.
- Obtain the latest Jenkins image, from docker hub - https://hub.docker.com/r/jenkins/jenkins
- Required ports : 8080 default communication + 50000 for master/slave communication.
- `docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts`

# Jenkins Multi-branch pipeline job. 
- A multi-branch pipeline project is created. 
- Within the scope specific to the created pipeline new credentials are created.



