#!/bin/bash

# Відображення версії ОС
echo "==== ОS Info ===="
cat /etc/os-release | grep -E 'NAME=|VERSION='

echo -e "\n==== Bash users ===="
awk -F':' '$NF ~ /bash$/ {print $1}' /etc/passwd

echo -e "\n==== Open ports ===="
ss -tuln | awk 'NR>1 {print $1, $5}' 

