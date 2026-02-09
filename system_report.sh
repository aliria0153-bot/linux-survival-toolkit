#!/bin/bash
echo "=============================="
echo "Linux System_report"
echo "=============================="
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"
echo ""
echo "Uptime:"
uptime
echo ""
echo "Dis Usage:"
df -h
echo ""
echo "Memory Usage:"
free -h
