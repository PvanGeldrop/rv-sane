$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"
$SharedBrowserPath = "C:\PlaywrightBrowsers"
$CondaExe = "$MinicondaPath\Scripts\conda.exe"

New-Item -ItemType Directory -Force -Path $SharedBrowserPath | Out-Null
$env:PLAYWRIGHT_BROWSERS_PATH = $SharedBrowserPath

& $CondaExe run -n $EnvName python -m playwright install chromium 2>&1 | Write-Output
