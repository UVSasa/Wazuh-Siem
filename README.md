# Wazuh EDR Lab

Welcome to my Wazuh-based Endpoint Detection & Response (EDR) lab! This repository documents my hands-on journey in building and managing a cyber defense lab using open-source tools like **Wazuh**, **Elasticsearch**, and **Kibana**.

The goal of this lab is to strengthen my skills in cyber defense. I will be practicing things like:
- Log collection and analysis
- Host and network monitoring
- Threat hunting
- Custom rule creation
- Incident detection and response
- Mapping alerts to the MITRE ATT&CK framework

---

## Lab Overview

**Architecture**  
This lab simulates a corporate network with multiple virtual machines monitored by a Wazuh manager:

- **Wazuh Manager** on Ubuntu (log collection, analysis, rules)
- **Windows 10/11 VM** (victim machine, Wazuh Agent installed)
- **Kali Linux VM** (offensive simulation)
- **Mac host system** (also monitored)
- **Wazuh Dashboard** (Elastic Stack integration)

See [architecture/](architecture/) for diagrams and deployment notes.

---

## Skills Demonstrated

| Area | Description |
|------|-------------|
| **Log Monitoring** | Parsing and analyzing Windows Security, Sysmon, and application logs |
| **Vulnerability Detection & Management** | Detect and Manage system and application vulnerabilities|
| **Threat Hunting** | Manual investigation of events like failed logins, privilege escalation |
| **Custom Rule Creation** | Writing Wazuh `local_rules.xml` for fine-tuned detection |
| **Incident Simulation** | Simulated brute-force attacks, malware drops, lateral movement |
| **Alerting and Reporting** | Custom alerts triggered with detailed context |
| **MITRE ATT&CK Mapping** | Detected behaviors mapped to MITRE techniques (TTPs) |

---
