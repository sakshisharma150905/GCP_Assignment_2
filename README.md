
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
```

---

### **2️⃣ Deploy the VM**
Run the setup script to create a VM in GCP:
```bash
chmod +x setup-vm.sh
./setup-vm.sh
```
This script will:
- Create a VM instance with **Ubuntu 20.04**.
- Use an **e2-medium** machine type.
- Assign a public IP and allow HTTP/HTTPS traffic.

---

### **3️⃣ Apply Auto-Scaling Configuration**
Run the following command to enable auto-scaling:
```bash
gcloud deployment-manager deployments create auto-scale-deploy --config auto-scaling.yaml
```
This will:
- Create an **instance group** based on a VM template.
- Enable **auto-healing** with an initial delay of **300 seconds**.
- Set **auto-scaling** based on **CPU utilization (60%)**.
- Define **minimum 1 instance** and **maximum 10 instances**.

---

### **4️⃣ Configure Firewall Rules**
Run the following script to allow HTTP and HTTPS:
```bash
chmod +x firewall-rules.sh
./firewall-rules.sh
```
This will:
- Allow HTTP traffic on **port 80**.
- Allow HTTPS traffic on **port 443**.
- Restrict SSH access from external sources.

---

## 🔥 **Auto-Scaling Policy**
- **Minimum Instances:** 1  
- **Maximum Instances:** 10  
- **Scaling Trigger:** CPU utilization **≥ 60%**  

---

## 🔒 **Security Measures**
✔ **Firewall Rules:**
   - Allows HTTP (port 80) and HTTPS (port 443).  
   - Restricts SSH from external sources.

✔ **Auto-Healing:**
   - Automatically replaces unhealthy instances.

---

## 📜 **Files in This Repository**
| File Name            | Description |
|----------------------|-------------|
| `setup-vm.sh`       | Script to create a VM instance. |
| `auto-scaling.yaml` | YAML file for auto-scaling configuration. |
| `firewall-rules.sh` | Script to configure firewall rules. |
| `README.md`         | Documentation and setup instructions. |

---

## 🛠 **Useful Commands**
### ✅ **Check Running Instances**
```bash
gcloud compute instances list
```

### ✅ **Monitor Auto-Scaling**
```bash
gcloud compute instance-groups managed describe instance-group
```

### ✅ **Test HTTP/HTTPS Access**
```bash
curl -I http://<VM_EXTERNAL_IP>
```
*(Replace `<VM_EXTERNAL_IP>` with your actual VM’s external IP.)*

---

## 🎯 **Conclusion**
This setup provides **automated scaling**, **firewall security**, and **auto-healing** for your GCP VM instance group. 🚀  

---

