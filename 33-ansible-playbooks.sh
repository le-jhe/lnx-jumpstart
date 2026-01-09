ANSIBLE_PLAYBOOK_HOME=./30-ansible
ANSIBLE_CONFIG=${ANSIBLE_PLAYBOOK_HOME}/ansible.cfg
export ANSIBLE_PLAYBOOK_HOME ANSIBLE_USER ANSIBLE_CONFIG
echo "running with ANSIBLE_PLAYBOOK_HOME=${ANSIBLE_PLAYBOOK_HOME}"
pushd ${ANSIBLE_PLAYBOOK_HOME}
ansible-playbook -i inventories/local -k playbooks/pkgs.yml
ansible-playbook -i inventories/local -k playbooks/jdk.yml
ansible-playbook -i inventories/local -k playbooks/mvn.yml
popd
