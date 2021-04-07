## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below using an instance of ansible deployed from a docker image.

![ELK and DVWA Deployment Diagram](Diagrams/DVWAandELK_CloudDiagram.png)

These files have been tested and used to generate 3 instances of the "Damned Vulnerable Web Application" and a live ELK stack deployment on an Azure cloud Resource group (although it is not limited to that environment the provided documentation will be for setup with Azure). By setting up the network architecture in the Azure portal and running the provided playbooks over SSH you will create the above network. Alternatively, you can install portions of the network on your own system using the provided playbooks individually (assuming your network has a similar topology and you are using ansible). This would allow you to install just the dvwa, or the elk stack and its beats depending on your preference.

  - dvwa playbook: Ansible/dvwaPlaybooks_Ansible/pentest.yml
  - elk playbook: Ansible/elkPlaybooks_Ansible/install-elk.yml
  - filebeat: Ansible/elkPlaybooks_Ansible/filebeat-playbook.yml
  - metricbeat: Ansible/elkPlaybooks_Ansible/metricbeat-playbook.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application, although you can also modify the playbooks to deploy an a docker image of your preference.

Load balancing ensures that the application will be highly available as no one server will be overworked, in addition to restricting access to the network based on IP.
- _Load Balancers protect the availablilty of a system, and specifically act as a guard against DDoS attacks. By having multiple instances of a web application in an availability set hooked up to a load balancer we can ensure our organization's material is still available if one or more of the servers are compromised.  The advantage of accessing this from the backend with a jumpbox is that it provides a secure backdoor to the systme that only the administrator can access, and in combination with the docker container ensures that noone can ssh into the web server from outside, and even if they can, the assets are secured within the docker container that the intruder would require knowledge of to access (although this is a last ditch defence if the attacker has already gained persistence)_

- !IMPORTANT _while in this example the ssh keys are stored in the .ssh folder of the ansible container THIS IS BAD PRACTICE and is only for simplicity of the demonstration. Store your SSH keys securely in an external repository!_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the containers and system files, services, & logs.
- _filebeat is a module in elk for forwarding and centralizing log data. It runs as an agent on your servers, monitoring the log files or locations you specify, collects, and forwards them to Elasticsearch or Logstach for indexing_
- _Metricbeat, as the name implies, is used to periodically collect metrics from the operating system and services running on the container/server, and ship them to ELK_



The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Ubuntu/Linux     |
| Web-1    | Server   | 10.0.0.5   | Ubuntu/Linux     |
| Web-2    | Server   | 10.0.0.6   | Ubuntu/Linux     |
| Web-3    | Server   | 10.0.0.7   | Ubuntu/Linux     |
| Elk-VM   | Monitor  | 10.2.0.5   | Ubuntu/Linux     |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by _____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | (#mypublicIP)        |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._