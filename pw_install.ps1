# 1. Define paths
$MinicondaPath = "C:\Miniconda3" # Update to your Conda path
$EnvName = "sane-env"         # Update to your Conda environment name
$SharedBrowserPath = "C:\PlaywrightBrowsers"

New-Item -ItemType Directory -Force -Path $SharedBrowserPath | Out-Null

[Environment]::SetEnvironmentVariable("PLAYWRIGHT_BROWSERS_PATH", $SharedBrowserPath, "Machine")

$env:PLAYWRIGHT_BROWSERS_PATH = $SharedBrowserPath

Import-Module "$MinicondaPath\shell\condabin\Conda.psm1"
conda activate $EnvName

playwright install chromium

Write-Host "Playwright installation complete. The UI button will now work offline."