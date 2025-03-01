# GCP VM Auto-Scaling and Security

## 📌 Overview
This repository contains scripts to create a Virtual Machine (VM), configure auto-scaling based on CPU utilization, and set up firewall rules on **Google Cloud Platform (GCP)**.

---

## 🚀 Setup Instructions

### **1️⃣ Clone the Repository**
Run the following command to clone the repository and navigate into the directory:
```bash
git clone https://github.com/your-username/gcp-vm-auto-scaling.git
cd gcp-vm-auto-scaling
**### **2️⃣ Deploy the VM**
Run the setup script to create a VM in GCP:

bash
Copy
Edit
chmod +x setup-vm.sh
./setup-vm.sh
This script will:

Create a VM instance with Debian 11.
Use an e2-medium machine type.
Assign a public IP and allow HTTP/HTTPS traffic.
