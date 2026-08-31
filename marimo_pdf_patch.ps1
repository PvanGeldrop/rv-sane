$ErrorActionPreference = "Stop"

$exporter = "C:\Miniconda3\envs\sane-env\Lib\site-packages\marimo\_export\exporter.py"

$content = [IO.File]::ReadAllText($exporter)

$chromium_setting = "    web_exporter.allow_chromium_download = True"

$replacement = @"
    web_exporter.allow_chromium_download = False
    web_exporter.require_js_url = ""
    web_exporter.mathjax_url = ""
    web_exporter.jquery_url = ""
    web_exporter.jupyter_widgets_base_url = ""
    web_exporter.widget_renderer_url = ""
    web_exporter.mermaid_js_url = ""
    web_exporter.mermaid_layout_elk_js_url = ""
"@.TrimEnd()

if (-not $content.Contains($chromium_setting)) {
    throw "Expected web_exporter line not found, possible change in Marimo code?"
}

Copy-Item $exporter "$exporter.backup" -Force

$content = $content.Replace($chromium_setting, $replacement)
[IO.File]::WriteAllText($exporter, $content)

Write-Host "Marimo WebPDF patch applied."