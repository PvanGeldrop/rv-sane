# Playwright install needed to be able to download PDFs from Marimo
$MinicondaPath = "C:\Miniconda3"
$EnvName = "sane-env"

Import-Module "$MinicondaPath\shell\condabin\Conda.psm1"

conda activate $EnvName
playwright install chromium