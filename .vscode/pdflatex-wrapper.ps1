# Wrapper around pdflatex that ignores MiKTeX's harmless "you have not
# checked for MiKTeX updates" nag (which makes pdflatex.exe return a
# non-zero exit code even on a fully successful compile) and instead
# determines success/failure from pdflatex's own reported log file.

$miktexBin = "$env:LOCALAPPDATA\Programs\MiKTeX\miktex\bin\x64"
$pdflatex = Join-Path $miktexBin "pdflatex.exe"

$output = & $pdflatex @args 2>&1 | Out-String
Write-Output $output

# pdflatex always prints a line like: "Transcript written on main.log."
# Use that to find the real log file, regardless of how the doc arg
# was passed in (with or without .tex extension).
if ($output -match 'Transcript written on ([^\s.]+(?:\.[^\s.]+)*?\.log)\.') {
    $logFile = $matches[1]
    if (Test-Path $logFile) {
        $logContent = Get-Content $logFile -Raw
        if ($logContent -match 'Output written on') {
            exit 0
        }
    }
}

exit $LASTEXITCODE
