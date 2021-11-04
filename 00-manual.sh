apt install sudo # if I am root already 
sudo apt update
sudo apt upgrade
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
# FIXME : could be installed via ansible
sudo apt -y install vim git openssh-server curl
