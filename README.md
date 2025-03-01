

### **📄 Full `README.md` File**
```md
# 🚀 GCP VM Auto-Scaling and Security

## 📌 Overview
This repository contains scripts to:
- **Create a Virtual Machine (VM) on Google Cloud Platform (GCP).**
- **Configure auto-scaling** based on CPU utilization.
- **Set up security policies** such as firewall rules.

---

## 🏗️ Project Structure
```
/gcp-vm-auto-scaling
├── setup-vm.sh         # Shell script to create a VM
├── auto-scaling.yaml   # YAML file for auto-scaling setup
├── firewall-rules.sh   # Script to configure firewall rules
└── README.md           # Project documentation
```

---

## 🔧 **Setup Instructions**

### **1️⃣ Clone the Repository**
Run the following commands **on your local machine**:
```bash
git clone https://github.com/your-username/gcp-vm-auto-scaling.git
cd gcp-vm-auto-scaling
```

---

### **2️⃣ Deploy the VM**
Make the setup script executable and run it:
```bash
chmod +x setup-vm.sh
./setup-vm.sh
```
📌 **This script will:**
✅ Create a VM in **us-central1-c**  
✅ Attach a **Ubuntu** OS image  
✅ Assign HTTP & HTTPS firewall tags  

---

### **3️⃣ Apply Auto-Scaling Configuration**
Deploy the **auto-scaling policy**:
```bash
gcloud deployment-manager deployments create auto-scale-deploy --config auto-scaling.yaml
```

📌 **Auto-Scaling Policy Details:**  
- **Min instances:** 1  
- **Max instances:** 10 
- **Scaling based on CPU utilization (60%)**

---

### **4️⃣ Configure Firewall Rules**
Run the firewall configuration script:
```bash
chmod +x firewall-rules.sh
./firewall-rules.sh
```
📌 **Security Rules Applied:**
✔ **Allowed:** HTTP (80), HTTPS (443)  
❌ **Restricted:** External SSH access  

---

### **5️⃣ Verify the Setup**
#### ✅ **Check if VM is running:**
```bash
gcloud compute instances list
```
#### ✅ **Verify auto-scaling settings:**
```bash
gcloud compute instance-groups managed describe instance-group
```
#### ✅ **Test the web server (if running Apache or Nginx):**
```bash
curl -I http://<VM_EXTERNAL_IP>
```
📌 **Replace `<VM_EXTERNAL_IP>` with your actual VM's external IP address.**

---

## 🔒 **Security Measures Implemented**
✔ **IAM Roles:** Restricted access to authorized users only  
✔ **Firewall Rules:** Allow HTTP/HTTPS, block external SSH  
✔ **Auto-healing Policy:** Ensures high availability  

---

---

## 📜 **License**
This project is licensed under the **MIT License**.

---

### **🎯 Next Steps**
- Enable **Cloud Monitoring** for detailed metrics  
- Configure **Cloud Logging** for better debugging  
- Add **Load Balancer** for better distribution  

---
