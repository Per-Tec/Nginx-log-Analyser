#!/bin/bash
LOG_FILE="../logs/access.log"
echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

