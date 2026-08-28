$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"
$CondaExe = "$MinicondaPath\Scripts\conda.exe"

& $CondaExe run -n $EnvName python -m  pip install --index-url https://download.pytorch.org/whl/cu129 torch  | Write-Host
