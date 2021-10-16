if [ ! -d /etc/ansible ]; then
	mkdir /etc/ansible
fi

if [ -f /etc/ansible/hosts ]; then
	sudo mv /etc/ansible/hosts /etc/ansible/hosts.orig
else
	echo "/etc/ansible/hosts does not exist"
fi

sudo sh -c "cat << EOF > /etc/ansible/hosts 
[localhost]
127.0.0.1

[local]
127.0.0.1
EOF"
