#!/bin/bash
LOG_FILE="../logs/access.log"
echo "Top 5 requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

