#!/bin/zsh

echo "Starting Ansible Playbook Execution..."
ansible-playbook -i ansible/inventory.yml, -c local ansible/playbook.yml -vvvv
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    echo "Ansible Playbook Execution Failed!"
else
    echo "Ansible Playbook Execution Completed Successfully!"
fi


