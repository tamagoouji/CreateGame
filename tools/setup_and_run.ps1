<#
PowerShell helper script
Usage:
  .\tools\setup_and_run.ps1 -Branch main -GodotPath "C:\path\to\Godot_v4.exe"

This script will fetch origin, checkout the branch, pull, and then launch Godot (if path provided).
#>
param(
    [string]$Branch = "main",
    [string]$GodotPath = ""
)

Write-Host "Fetching origin..."
git fetch origin

Write-Host "Checking out branch: $Branch"
if (-not (git rev-parse --verify $Branch -q)) {
    git checkout -b $Branch
} else {
    git checkout $Branch
}

Write-Host "Pulling latest..."
git pull origin $Branch

if ($GodotPath -ne "") {
    Write-Host "Launching Godot: $GodotPath"
    & $GodotPath -e .
} else {
    Write-Host "No GodotPath specified. Set -GodotPath 'C:\path\to\Godot.exe' to launch Godot automatically."
}
