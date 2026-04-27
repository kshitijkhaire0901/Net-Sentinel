# Net-Sentinel
A lightweight Bash-based network diagnostic utility for multi-layer connectivity auditing (Layer 3 &amp; Layer 7) on Linux.

About Net-Sentinel
Net-Sentinel is a tactical network monitoring script designed to identify logical connectivity breaches. Unlike standard uptime monitors that only check the physical or network layers, Net-Sentinel verifies the application layer's ability to resolve hostnames.

Key Features
Dual-Layer Verification: Simultaneously audits Gateway accessibility (ICMP) and DNS Resolution (Layer 7).

Latency Tracking: Provides real-time millisecond feedback for both resolution and ping.

Persistent Logging: (Planned) Documentation of failures for long-term infrastructure analysis.

Zero Dependencies: Runs on native Bash with standard Linux networking binaries (ping, nslookup).

The "Infrastructure Audit" Highlight
Since this repo is special because of your documentation, add this specific section right after the Features:

Case Study: Audit-0001
This repository serves as a live demonstration of an Infrastructure Audit. The included docs/ folder contains a full technical report documenting:

Detection: Identifying a DNS failure while the gateway remained reachable.

Isolation: Using script logic to prove a Layer 7 anomaly.

Remediation: Validating the system recovery following service stabilization.
