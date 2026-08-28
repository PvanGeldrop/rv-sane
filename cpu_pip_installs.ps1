$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"
$CondaExe = "$MinicondaPath\Scripts\conda.exe"

& $CondaExe run -n $EnvName python -m pip install "torch==2.10.0" playwright 2>&1 | Write-Host
