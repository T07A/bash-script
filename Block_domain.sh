#!/bin/bash

read -p "Enter domain to block: " domain

ip=$(nslookup "$domain" | awk '/^Address: / {print $2}' | tail -n1)

if [[ -z "$ip" ]]; then
  echo "Failed to resolve IP for $domain"
  exit 1
fi

echo "Blocking IP: $ip"

sudo iptables -A OUTPUT -d "$ip" -j DROP
