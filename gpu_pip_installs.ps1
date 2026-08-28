$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"

Import-Module "$MinicondaPath\shell\condabin\Conda.psm1"
conda activate $EnvName

python -m pip install  | Write-Host
