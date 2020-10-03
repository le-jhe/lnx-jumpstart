#ANSIBLE_PLAYBOOK_HOME=${PWD}/30-ansible
ANSIBLE_PLAYBOOK_HOME=./30-ansible
ANSIBLE_USER=jhe
ANSIBLE_CONFIG=${ANSIBLE_PLAYBOOK_HOME}/ansible.cfg
export ANSIBLE_PLAYBOOK_HOME ANSIBLE_USER ANSIBLE_CONFIG
echo "running with ANSIBLE_PLAYBOOK_HOME=${ANSIBLE_PLAYBOOK_HOME}"
#ansible-playbook -s --ask-become-pass ${ANSIBLE_PLAYBOOK_HOME}/docker.yml -u ${ANSIBLE_USER}
#ansible-playbook -vvvvv -s --ask-become-pass -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l local ${ANSIBLE_PLAYBOOK_HOME}/playbooks/mvn.yml -u ${ANSIBLE_USER} --check --diff
#ansible -vvvvv -s --ask-become-pass -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/mvn.yml -u ${ANSIBLE_USER} --check --diff --list-hosts -e ANSIBLE_CONFIG=$ANSIBLE_CONFIG
#sudo ansible -vvvvv -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/mvn.yml --check --diff
#ansible-playbook -vvvvv -s --ask-become-pass -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/mvn.yml -u ${ANSIBLE_USER} --check --diff --list-hosts
#ansible-playbook -s --ask-become-pass -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/mvn.yml -u ${ANSIBLE_USER} --check --diff
ansible-playbook -vvv -s --ask-become-pass -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/pkgs.yml -u ${ANSIBLE_USER}
ansible-playbook -s --ask-become-pass -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/mvn.yml -u ${ANSIBLE_USER}
ansible-playbook -s --ask-become-pass -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/jdk.yml -u ${ANSIBLE_USER}
#sudo ansible-playbook -i ${ANSIBLE_PLAYBOOK_HOME}/inventories/local -l localhost ${ANSIBLE_PLAYBOOK_HOME}/playbooks/jdk.yml
