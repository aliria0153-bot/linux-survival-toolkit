#!/bin/bash
echo "=============================="
echo "Log Analyzer Report"
echo "=============================="
echo ""
LOG_FILE="sample.log"
echo "Total lines:"
wc -l $LOG_FILE
echo ""
echo "Error count:"
grep -c "ERROR" Â$LOG_FILE 
echo ""
echo "Warning count:"
grep -c "WARNING" $LOG_FILE
