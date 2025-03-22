echo "Starting Ansible Playbook Execution..."
ansible-playbook -i ansible/inventory.yml, -c local ansible/playbook.yml -K -vvv
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    echo "Ansible Playbook Execution Failed! Stopping container my_setup_container..."
    docker stop my_setup_container && echo "Container my_setup_container stopped successfully!"
else
    echo "Ansible Playbook Execution Completed Successfully!"
fi

