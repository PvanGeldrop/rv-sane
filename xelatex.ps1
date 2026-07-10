[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$DownloadUrl = "https://github.com/rstudio/tinytex-releases/releases/download/daily/TinyTeX.zip"
$ZipPath = "C:\TinyTeX.zip"
$ExtractPath = "C:\TinyTeX"

Invoke-WebRequest -Uri $DownloadUrl -OutFile $ZipPath

New-Item -ItemType Directory -Force -Path $ExtractPath | Out-Null

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($ZipPath, $ExtractPath)

$TinyTexBin = "$ExtractPath\bin\windows" 
$CurrentPath = [Environment]::GetEnvironmentVariable("PATH", "Machine")

if ($CurrentPath -notmatch [regex]::Escape($TinyTexBin)) {
    $NewPath = $CurrentPath + ";" + $TinyTexBin
    [Environment]::SetEnvironmentVariable("PATH", $NewPath, "Machine")
}

Remove-Item $ZipPath -Force
if (Test-Path "$TinyTexBin\xelatex.exe") {
    Write-Host "Success: xelatex.exe is installed and ready for Marimo."
} else {
    Write-Host "Warning: Extracted successfully, but xelatex.exe was not found in $TinyTexBin. Please verify the folder structure inside the zip."
}