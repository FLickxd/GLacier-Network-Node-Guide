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

Copy and run the following command in your VPS terminal:

```bash
curl -sSL https://raw.githubusercontent.com/FLickxd/GLacier-Network-Node-Guide/main/setup_glacier_node.sh | bash

