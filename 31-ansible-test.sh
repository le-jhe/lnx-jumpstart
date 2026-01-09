# https://docs.ansible.com/projects/ansible/latest/network/getting_started/first_playbook.html
# -k => using password
#ansible all -i localhost, -k -m debug -e msg="Hello, jhe world !"
# without -k, it does not ssh ?
#ansible all -i localhost, -m debug -e msg="Hello, jhe world !"
# the msg is not used inside the command..
ansible all -m debug -e msg="Hello, jhe world !"
ansible all -m debug

# now playbooks
ansible-playbook -i localhost, -k 32-simple_playbook.yml
