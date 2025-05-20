Walkthrough/ Documentation of the setup and lab

# 00 – Overview

> 🧪 This project is a hands-on home lab built to simulate a small monitored network environment using Wazuh for endpoint detection and response.  
> The goal is to gain real-world experience with SIEM concepts, alert tuning, log analysis, and custom rule development in a self-contained environment.

---

## 🎯 Purpose

The primary objective of this lab is to:
- Learn how to install, configure, and manage a Wazuh-based SIEM.
- Monitor system activity and detect suspicious behavior using logs and alerts.
- Tune alert noise by writing and applying custom rules.
- Document the process for both personal learning and future reference.

This lab mirrors the type of work expected in a SOC environment and serves as a foundation for developing security analyst skills.

---

## 🧱 Architecture

The lab consists of a local, offline network with the following components:

- **Wazuh Manager (Ubuntu)** – Collects, analyzes, and displays security data.
- **Wazuh Agent (Windows 11)** – Sends logs and telemetry to the manager.
- **Firewall** – Controls traffic and provides visibility into network segmentation.
- **(Optional) Kali VM** – Used for basic attack simulation and red team testing.

📌 See the full network diagram:  
[`architecture/network-diagram.png`](../architecture/network-diagram.png)

---

## 🗂️ Repository Layout