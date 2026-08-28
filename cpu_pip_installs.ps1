$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"

Import-Module "$MinicondaPath\shell\condabin\Conda.psm1"
conda activate $EnvName

python -m pip install "torch==2.10.0" 2>&1 | Write-Host
