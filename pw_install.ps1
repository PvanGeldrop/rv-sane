$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"
$SharedBrowserPath = "C:\PlaywrightBrowsers"

New-Item -ItemType Directory -Force -Path $SharedBrowserPath | Out-Null

[Environment]::SetEnvironmentVariable("PLAYWRIGHT_BROWSERS_PATH", $SharedBrowserPath, "Machine")

$env:PLAYWRIGHT_BROWSERS_PATH = $SharedBrowserPath

Import-Module "$MinicondaPath\shell\condabin\Conda.psm1" 2>&1  Write-Output
Enter-CondaEnvironment $EnvName 2>&1 | Write-Output

python -m playwright install chromium 2>&1 | Write-Output
