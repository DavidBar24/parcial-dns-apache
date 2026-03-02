#!/usr/bin/env bash
set -e

sudo apt update
sudo apt install -y bind9 bind9utils dnsutils

sudo systemctl restart bind9
echo "VM2 listo: BIND9 esclavo."