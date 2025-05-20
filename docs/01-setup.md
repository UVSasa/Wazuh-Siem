Detailed steps on prepoing the system:VMs packages, Wazuh install, network eyc

# 01 – Setup and Preparation

> 🧪 This document outlines the initial setup process for building the Wazuh SIEM lab, including system preparation, network layout, script usage, and key configuration steps.

---

## 🖥️ Lab Environment

The lab was built using local virtual machines and a router on a bridged network. All components are isolated from the internet to simulate an offline enterprise-style environment.

### 💻 Machines Used

| Machine            | Role              | OS         | Notes                                  |
|--------------------|-------------------|------------|----------------------------------------|
| Wazuh Manager      | SIEM Server       | Ubuntu(VM)     | Runs Wazuh manager, dashboard |
| Victim Machine     | Monitored Endpoint| Windows 11(VM) | Sends logs to the manager              |
| Kali VM  | Attacker Simulation| Kali Linux | Used for MITM and testing (offline)    |

---

## 🌐 Network Setup

- Both Virtual machines are on the same **bridged network** to allow communication through the physical router.
- The router is disconnected from the internet to simulate a secure local environment.
- Each VM is assigned a static IP for easy reference and firewall rule enforcement.

---

## ⚙️ Installation Steps

### 1. Wazuh Manager Setup

Go to the official Wazuh Page and follow the instructions to download the wazuh manager. For reference I used the quickstart option to install all the central wazuh components.

![image alt](https://github.com/UVSasa/Wazuh-Siem/blob/main/Screenshot%202025-05-20%20154958.png?raw=true)

Once everything is installed use the admin creditentials given to log into the wazuh dashboard. It should look similar to the image below.


![image alt](https://github.com/UVSasa/Wazuh-Siem/blob/main/Screenshot%202025-05-20%20161420.png?raw=true)







