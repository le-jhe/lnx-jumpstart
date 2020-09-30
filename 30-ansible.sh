ANSIBLE_PLAYBOOK_HOME=./30-ansible
ANSIBLE_USER=jhe
echo "running with ANSIBLE_PLAYBOOK_HOME=${ANSIBLE_PLAYBOOK_HOME}"
#ansible-playbook -s --ask-become-pass ${ANSIBLE_PLAYBOOK_HOME}/docker.yml -u ${ANSIBLE_USER}
ansible-playbook -s --ask-become-pass ${ANSIBLE_PLAYBOOK_HOME}/jdk.yml -u ${ANSIBLE_USER}
ansible-playbook -s --ask-become-pass ${ANSIBLE_PLAYBOOK_HOME}/mvn.yml -u ${ANSIBLE_USER}
