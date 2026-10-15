# Script: auto_report.ps1
# Tac gia: bùi quang đạt
# Ngay tao: 15/10
 
Write-Host "Dang loc log..."
 
"=== BAO CAO LOI ===" > logs/auto_report.txt 
Get-Content logs/member.log | Select-String "ERROR" >> logs/auto_report.txt 
 
Write-Host "Hoan thanh!"
