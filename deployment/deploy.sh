ansible-playbook -i hosts ssh_key_setup.yml --ask-pass --extra-vars "ansible_sudo_pass=dede"
ansible-playbook -i hosts virtual_machine_setup.yml --extra-vars "ansible_sudo_pass=dede"