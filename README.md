# Windows Troubleshooting Toolkit  
A lightweight PowerShell script to automate system diagnostics and generate a support report for tech support tasks.  
## Features  
- System info collection
- Internet connectivity check
- IP configuration
- Public IP detection
- Disk usage
- Top processes  
## How To Use  
1. Right click the script file troubleshooting-toolkit.ps1
2. Select "Run with PowerShell"
3. A file named support_report.txt will be created in the same folder
4. Open that file to view the results (system info, IP address, internet status, etc.)

## Note:  
If PowerShell is blocked run this command first:  
Set-ExecutionPolicy Bypass -Scope Process  
Then run:  
.\troubleshoot-toolkit.ps1

