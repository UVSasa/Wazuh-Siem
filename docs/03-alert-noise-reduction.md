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


To this end, Wazuh uses a rules-based engine to classify logs. You can override or suppress specific alerts by creating custom rules in:

/etc/ossec/rules/local_rules.xml

---

## 🧨 Real Example
The alert below continuously fired....

![image alt](https://github.com/UVSasa/Wazuh-Siem/blob/main/Alert752Ex.png?raw=true)


summary of alert:


Instead of blindly suppressing or escalating the alert, the process followed was:

1. 🔍 Look at Process Context
2. 📚 Search Trusted Sources
3. 🧩 Check for Patterns

✅ Final Determination summary

All future alerts like this will go through this same triage process:
	1.	Read the event log
	2.	Analyze the process and file paths
	3.	Check MITRE technique for context
	4.	Search threat intel databases
	5.	Decide whether to suppress, reduce severity, or escalate

All supression rules I have written so far can be found in the local_rules.xml in the configs folder
