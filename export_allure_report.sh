#!/bin/bash

# Run allure serve and redirect the output to a file
npx allure serve allure-results > allure_report.log

# Find the line containing the URL of the generated report
report_url=$(grep -oP 'http://[^\s]*' allure_report.log)

# Download the HTML content of the report
curl -o index.html "$report_url"

# Terminla permission 
# chmod +x export_allure_report.sh
# Execute the script
# ./export_allure_report.sh
