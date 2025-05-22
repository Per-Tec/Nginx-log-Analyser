#!/bin/bash
LOG_FILE="../logs/access.log"
echo "Top 5 user agents:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

