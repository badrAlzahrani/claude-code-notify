# Claude Code Notification Hook
# Works on Windows only
# Place this file at: C:\Users\YOUR_USERNAME\.claude\hooks\notify.ps1

param([string]$Message = "Claude Code needs your attention")

Add-Type -AssemblyName System.Windows.Forms
[System.Media.SystemSounds]::Beep.Play()
$f = New-Object System.Windows.Forms.Form
$f.TopMost = $true
$f.ShowInTaskbar = $false
$f.WindowState = [System.Windows.Forms.FormWindowState]::Minimized
$f.Show()
[System.Windows.Forms.MessageBox]::Show($f, $Message, "Claude Code")
$f.Dispose()