$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"
$CondaExe = "$MinicondaPath\Scripts\conda.exe"

# --index-url makes pip look for playwright in that location as well, keep them separated.

& $CondaExe run -n $EnvName python -m pip install playwright 2>&1 | Write-Host
& $CondaExe run -n $EnvName python -m pip install --index-url https://download.pytorch.org/whl/cu129 torch 2>&1 | Write-Host