# Glacier Network Node Guide

This repository provides a one-click guide to set up and run a **Glacier Verifier Node** on your VPS. The script automates the installation of necessary dependencies like Docker and configures the Glacier Verifier Node for you.

---

## Features

- **Automated Setup**: Installs Docker and other dependencies automatically.
- **Easy Configuration**: Just provide your private key when prompted.
- **Lightweight**: Requires minimal system resources.
- **ASCII Art Header**: Displays your custom "FLIADEX" logo during setup.

---

## Requirements

### **Minimum Hardware Requirements**
- CPU: 1+ cores
- RAM: 2GB
- Internet Speed: 4 Mbps (Download)

### **Recommended Hardware**
- CPU: 2+ cores
- RAM: 4GB+
- Internet Speed: 8 Mbps (Download)

### **Software Requirements**
- A Linux-based VPS.
- Docker installed (the script will handle installation if not present).

---

## Setup Instructions

### **Step 1: Run the Setup Script**

Before running the script, make sure you have **OpBNB** to cover gas fees.  
Get **OpBNB** from the **https://discord.com/invite/bnbchain** Discord and bridge your **BNB** to **OpBNB** here https://opbnb-testnet-bridge.bnbchain.org/deposit.

Once you have OpBNB, copy and run one of the following commands in your VPS terminal:

#### Using `curl`:
```bash
curl -sSL https://raw.githubusercontent.com/FLickxd/GLacier-Network-Node-Guide/main/setup_glacier_node.sh | bash


#### Using `wget`:
wget -qO- https://raw.githubusercontent.com/FLickxd/GLacier-Network-Node-Guide/main/setup_glacier_node.sh | bash


View Logs:
docker logs -f glacier-verifier


Stop the Node:
docker stop glacier-verifier && docker rm glacier-verifier

