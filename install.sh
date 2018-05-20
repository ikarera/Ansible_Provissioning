#/bin/bash
PLAYBOOK=rwanda
echo precedence ::ffff:0:0/96  100 >> /etc/gai.conf
apt-get -y -o Acquire::ForceIPv4=true update
apt-get -y -o Acquire::ForceIPv4=true upgrade
apt-get -y update
apt-get -y upgrade
apt-get -f -y install
apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y install software-properties-common
apt-get update
sudo apt-get -y install ansible
sudo apt-get -y install ubuntu-desktop
sudo apt-get -y install true cryptsetup
sudo apt-get -y install lsb

cp sourcedb.sh /tmp
ansible-playbook --sudo --ask-pass --ask-sudo-pass -i hosts "playbook/$PLAYBOOK.yml" --limit "$HOST_GROUP" --extra-vars "$3" -vvvv
