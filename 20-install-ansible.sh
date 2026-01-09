if [ ! -d /etc/ansible ]; then
	sudo mkdir /etc/ansible
fi

if [ -f /etc/ansible/hosts ]; then
	sudo mv /etc/ansible/hosts /etc/ansible/hosts.orig
else
	echo "/etc/ansible/hosts backed up"
fi

sudo sh -c "cat << EOF > /etc/ansible/hosts 
[localhost]
127.0.0.1

[local]
127.0.0.1
EOF"
