
@echo off

set downloadUrl=https://download.jetbrains.com/idea/ideaIC-2021.1.3.win.zip
set savePath=C:\path\to\save\ideaIC-2021.1.3.win.zip

REM Check if IntelliJ Community Edition is already downloaded
if exist "%savePath%" (
    echo IntelliJ Community Edition is already downloaded.
    exit /b 0
)

REM Download IntelliJ Community Edition
curl -o "%savePath%" "%downloadUrl%"

REM Check if the download was successful
if exist "%savePath%" (
    echo IntelliJ Community Edition has been downloaded successfully.
    exit /b 0
) else (
    echo Failed to download IntelliJ Community Edition.
    exit /b 1
)
