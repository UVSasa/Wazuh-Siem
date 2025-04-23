## Topology

    Internet
        |
[Router/Switch]
        |
+———————+
|     Host System(PC)  |
|  (VMware Workstation)|
+———————+              |
|        |        |
|        |        |
|        |        |
[Ubuntu] [Windows] [Kali Linux]
Wazuh    Victim     Attacker
Manager    VM          VM


## Components

### 1. **Wazuh Manager (Ubuntu VM)**
- **Role**: Central SIEM system
- **Tasks**:
  - Collects and analyzes logs from all endpoints
  - Stores alerts and audit logs
  - Hosts the Wazuh dashboard (optional if web UI is installed)

### 2. **Windows 11 VM (Victim/Endpoint)**
- **Role**: Simulates a typical workstation
- **Tasks**:
  - Runs the Wazuh Agent
  - Sends security and system logs to the Wazuh Manager
  - Used to simulate user activity and trigger alerts

### 3. **Kali Linux VM (Attacker)**
- **Role**: Red team/Offensive testing
- **Tasks**:
  - Runs scans and attacks against the Windows VM
  - Used to generate detectable malicious behavior
- **Tools**: Ettercap, Nmap, Hydra, etc.

### 4. **Host Firewall**
- **Role**: Simulated network perimeter
- **Tasks**:
  - Controls inbound/outbound traffic
  - Logs connections and activity (basic UFW setup)

## Network Configuration

- All VMs are configured to use **Bridged Networking**.
- Each system receives an IP from the router on the same subnet.

## Log Collection and Analysis
- **Log Types**:
  - Sysmon (on Windows)
  - Windows Security and Application logs
  - Linux auth logs and auditd (optional)
- **Alerts**:
  - Stored in `alerts/sample-alerts.json`
  - Example alerts include login failures, privilege escalation, and FIM triggers
  - 
## Goals

This lab helps practice:
- Deploying and configuring a HIDS/SIEM system
- Writing and testing custom rules in `local_rules.xml`
- Detecting attacker behavior using MITRE ATT&CK mappings
- Simulating red team attacks and observing how they appear in logs

## Future Additions
- 
