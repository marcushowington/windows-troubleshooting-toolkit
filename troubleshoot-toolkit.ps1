$ReportPath = "support_report.txt"
"Troubleshooting Report - $(Get-Date)" | Out-File $ReportPath

"=== SYSTEM INFO ===" | Out-File $ReportPath -Append
Get-ComputerInfo | Select WindowsProductName, WindowsVersion, OsArchitecture | Out-File $ReportPath -Append

"n=== NETWORK STATUS ===" | Out-File $ReportPath -Append
Test-Connection google.com -Count 4 | Out-File $ReportPath -Append
ipconfig /all | Out-File $ReportPath -Append

"n=== PUBLIC IP ===" | Out-File $ReportPath -Append
Invoke-RestMethod "https://api.ipify.org/?format=text" | Out-File $ReportPath -Append

"n=== DISK USAGE ===" | Out-File $ReportPath -Append
Get-PSDrive -PSProvider FileSystem | Out-File $ReportPath -Append

"n=== PROCESSES (TOP CPU) ===" | Out-File $ReportPath -Append
Get-Process | Sort CPU -Descending | Select -First 10 | Out-File $ReportPath -Append