$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"

Import-Module "$MinicondaPath\shell\condabin\Conda.psm1"
conda activate $EnvName

python -m pip install --index-url https://download.pytorch.org/whl/cu129 torch  | Write-Host
