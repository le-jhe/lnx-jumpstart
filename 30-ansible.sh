ANSIBLE_PLAYBOOK_HOME=./30-ansible
ANSIBLE_USER=m999jve
echo "running with ANSIBLE_PLAYBOOK_HOME=${ANSIBLE_PLAYBOOK_HOME}"
ansible-playbook -vvvv -s --ask-become-pass ${ANSIBLE_PLAYBOOK_HOME}/docker.yml -u ${ANSIBLE_USER}
