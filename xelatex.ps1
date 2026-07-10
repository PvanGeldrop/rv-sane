Invoke-WebRequest -Uri "https://github.com/rstudio/tinytex-releases/releases/download/daily/TinyTeX-1.zip" -OutFile "C:\TinyTeX.zip"

Expand-Archive -Path "C:\TinyTeX.zip" -DestinationPath "C:\TinyTeX" -Force

$TinyTexBin = "C:\TinyTeX\TinyTeX\bin\windows"
$CurrentPath = [Environment]::GetEnvironmentVariable("PATH", "Machine")

if ($CurrentPath -notmatch [regex]::Escape($TinyTexBin)) {
    $NewPath = $CurrentPath + ";" + $TinyTexBin
    [Environment]::SetEnvironmentVariable("PATH", $NewPath, "Machine")
}