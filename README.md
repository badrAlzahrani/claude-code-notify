# Claude Code Notification Hook (Windows)

Get a popup + sound notification whenever Claude Code finishes a task or needs your input.

## Setup

### 1. Create the hooks folder
```powershell
New-Item -Path "$env:USERPROFILE\.claude\hooks" -ItemType Directory -Force
```

### 2. Copy notify.ps1
Place `notify.ps1` in:
```
C:\Users\YOUR_USERNAME\.claude\hooks\notify.ps1
```

### 3. Update settings.json
Open:
```
C:\Users\YOUR_USERNAME\.claude\settings.json
```
Copy the contents of `settings.json` from this repo and replace `YOUR_USERNAME` with your actual Windows username.

If the file doesn't exist, create it:
```powershell
New-Item -Path "$env:USERPROFILE\.claude\settings.json" -ItemType File -Force
```

## How it works

| Event | When |
|---|---|
| `Stop` | Claude finished the task |
| `Notification` | Claude needs your input or approval |

## Requirements
- Windows only
- Claude Code installed
