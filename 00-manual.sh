apt install sudo # if I am root already 
sudo apt update
sudo apt -y install vim git openssh-server curl
sudo apt upgrade
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
