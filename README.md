# Block Domain Bash Script

This repository contains a simple Bash script to block access to a specific domain by resolving its IP address and creating an `iptables` rule to drop the traffic.

## 🛠️ How It Works

1. Prompts the user to enter a domain name (e.g. `example.com`).
2. Uses `nslookup` to resolve the domain to its IP address.
3. Adds an `iptables` rule to block incoming traffic from/to that IP
