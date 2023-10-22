#!/bin/bash

# Define container ID and IP address
container_id=100  # Replace with your container's ID
container_ip=192.168.1.10  # Replace with your container's IP

# Enable TTY and Nesting in Proxmox
pct set $container_id --features tty=1,nesting=1

# SSH Configuration
ssh_command="apt-get update; apt-get install -y openssh-server; systemctl start ssh; systemctl enable ssh"

# Execute SSH configuration command inside the container
pct exec $container_id -- $ssh_command

# Optionally, you can add firewall rules here if needed
# For example, to allow SSH traffic, you can use:
# pct exec $container_id -- ufw allow 22/tcp

# Notify the user
echo "SSH has been enabled in Container $container_id with IP $container_ip"
