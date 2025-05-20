Detailed steps on prepoing the system:VMs packages, Wazuh install, network eyc

# 01 – Setup and Preparation

> 🧪 This document outlines the initial setup process for building the Wazuh SIEM lab, including system preparation, network layout, script usage, and key configuration steps.

---

## 🖥️ Lab Environment

The lab was built using local virtual machines and a router on a bridged network. All components are isolated from the internet to simulate an offline enterprise-style environment.

### 💻 Machines Used

| Machine            | Role              | OS         | Notes                                  |
|--------------------|-------------------|------------|----------------------------------------|
| Wazuh Manager      | SIEM Server       | Ubuntu     | Runs Wazuh manager, filebeat, dashboard |
| Victim Machine     | Monitored Endpoint| Windows 11 | Sends logs to the manager              |
| Kali VM (optional) | Attacker Simulation| Kali Linux | Used for MITM and testing (offline)    |

---

## 🌐 Network Setup

- All machines are on the same **bridged network** to allow communication through the physical router.
- The router is disconnected from the internet to simulate a secure local environment.
- Each VM is assigned a static IP for easy reference and firewall rule enforcement.

---

## ⚙️ Installation Steps

### 1. Wazuh Manager Setup

Used the provided script to install Wazuh and dependencies:

edit
```bash
setup-scripts/install-wazuh.sh