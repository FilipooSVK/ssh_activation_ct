# Proxmox Container SSH Enabler

This Bash script is designed to automate the process of enabling SSH in a Proxmox Container. It simplifies the steps required to configure SSH access within a Proxmox Container.

## Features

- Enables TTY and Nesting in the Proxmox Container.
- Installs and configures the SSH server inside the container, allowing remote SSH access.
- Provides the option to add firewall rules for enhanced security.

## Usage

1. Customize the script by setting the appropriate `container_id` and `container_ip` to match your Proxmox Container.
   
   ```bash
   container_id=100  # Replace with your container's ID
   container_ip=192.168.1.10  # Replace with your container's IP


## Requirements
A Proxmox server with LXC containers.
Appropriate permissions to modify and configure containers.

## Note
Ensure that you have proper access controls and security configurations in place, especially when enabling SSH in a container.
Disclaimer: Use this script responsibly and in accordance with your organization's security policies. The script author takes no responsibility for any misuse or damage caused by the script.

Download the script: 

  ```bash
https://raw.githubusercontent.com/FilipooSVK/ssh_activation_ct/main/activate_ssh.sh
