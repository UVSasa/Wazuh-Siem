# 03 – Reducing Alert Noise

> 📉 After installing Wazuh and connecting agents, the next step was to reduce unnecessary alert noise from routine activity, especially on the Windows agent.

---

## 🔊 The Problem: Alert Noise

Once the Windows agent was active, Wazuh began generating large volumes of alerts for normal behavior such as:

- Repeated successful logins (Event ID 4624)
- Legitimate `svchost.exe` activity
- Legitimate registry changes
- Normal software executions like Windows Defender, WMI, or update services
- System file changes unrelated to attacks


This noise can obscure meaningful alerts and waste analyst time, so the goal was to tune it down without suppressing important events.

---

## 🛠️ Strategy: Using `local_rules.xml`

Wazuh uses a rules-based engine to classify logs. You can override or suppress specific alerts by creating custom rules in:

```bash
/etc/ossec/rules/local_rules.xml
