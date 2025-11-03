#!/bin/bash

echo "Открытые TCP/UDP порты:"
ss -tulpn | tail -n +2 | awk '{print $5}' | awk -F: '{print $NF}' | sort -nu
