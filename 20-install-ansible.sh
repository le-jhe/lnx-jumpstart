sudo mv /etc/ansible/hosts /etc/ansible/hosts.orig
sudo sh -c "cat << EOF > /etc/ansible/hosts 
[local]
127.0.0.1
EOF"
