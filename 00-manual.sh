# FIXME : switch between apy & yum / dnf at least.. or pacapt
# let a variable choose the package manager and do : ${PKG_MANAGER} install xxx
apt install sudo # if I am root already 
sudo apt update
sudo apt upgrade
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y curl ansible python-is-python3
# FIXME : could be installed via ansible
sudo apt -y install vim git openssh-server curl
