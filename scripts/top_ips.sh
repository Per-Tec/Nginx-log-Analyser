#!/bin/bash
LOG_FILE="../logs/access.log"
echo "Top 5 IP addresses:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

