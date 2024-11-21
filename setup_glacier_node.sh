#!/bin/bash

# Glacier Verifier Node Setup Script with ASCII Art Header

# Install figlet if not installed
if ! command -v figlet > /dev/null 2>&1; then
    echo "Installing figlet for ASCII art..."
    sudo apt update && sudo apt install -y figlet
fi

# Print ASCII art for "FLIADEX"
figlet "FLIADEX"
echo "==== Welcome to the Glacier Verifier Node Setup Script ===="

# Update and install necessary packages
echo "Updating system and installing prerequisites..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y ca-certificates curl gnupg lsb-release wget

# Install Docker
echo "Installing Docker..."
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verify Docker installation
if ! docker --version > /dev/null 2>&1; then
    echo "Docker installation failed. Exiting."
    exit 1
fi
echo "Docker installed successfully!"

# Prompt for Private Key
echo "Please enter your private key for the Glacier Verifier Node:"
read -s PRIVATE_KEY

# Validate Private Key
if [ -z "$PRIVATE_KEY" ]; then
    echo "Private key is required to proceed. Exiting."
    exit 1
fi

# Pull and Run Glacier Verifier Node
echo "Pulling and running Glacier Verifier Node Docker container..."
docker pull docker.io/glaciernetwork/glacier-verifier:v0.0.1
docker run -d -e PRIVATE_KEY=$PRIVATE_KEY --name glacier-verifier docker.io/glaciernetwork/glacier-verifier:v0.0.1

# Check if the container is running
if docker ps | grep -q "glacier-verifier"; then
    echo "Glacier Verifier Node is running successfully!"
    echo "Use 'docker logs -f glacier-verifier' to monitor the node logs."
else
    echo "Failed to start the Glacier Verifier Node. Check the Docker logs for details."
fi

echo "==== Setup Complete ===="

