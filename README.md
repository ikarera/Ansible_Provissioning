# README #
### Ansible playbook to install openmrs on servers. The modules and war files are from Rwanda IMB Steps ###
###########################################################################################################

1) copy your database to /tmp (Ensure that the name is openmrs.sql).
    * A rwink db (5 GB) takes one hour and a few minutes to be source.
    * A butaro takes (less than 30 minutes).
    - Sourcing time is minimised by disabling foreign key checks.
2) You will have to enter both SSH password and SUDO password[defaults to SSH password]
3) default password for the playbook is "password"
4) Change passwords in
   * rwandadeployment/playbook/roles/mysql/defaults/main.yml
   *  rwandadeployment/playbook/roles/users/defaults/main.yml
   * rwandadeployment/playbook/roles/openmrs/defaults/main.yml
5) cd rwandadeplyoment
6) run sh +x install.sh
7) You will have to enter both SSH password and SUDO password[defaults to SSH password]

### What is this repository for? ###
####################################

* This repository is for deploying a new openmrs server. It is customised for Rwanda. All the modules and war versions are for Rwanda. It 
also deploys all the necessaru packages for a functional server
* Version 1


### How do I get set up? ###
############################

* See steps above

### Who do I talk to? ###
@@@@@@@@@@@@@@@@@@@@@@@@@

* James Mbabazi
*jmbabazi@pih.org
