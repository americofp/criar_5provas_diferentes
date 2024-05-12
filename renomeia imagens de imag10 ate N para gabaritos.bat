@echo off
setlocal EnableDelayedExpansion

set "logFile=alteracoes.txt"
if exist "%logFile%" del "%logFile%"


echo Renomeando arquivos que terminam com um unico digito...
for %%a in (*) do (
    if "%%a" neq "%~nx0" if "%%a" neq "%logFile%" (
        set "nomeArquivo=%%~na"
        set "extensao=%%~xa"
        echo !nomeArquivo!| findstr /r /c:".*[0-9]$" >nul && (
            echo !nomeArquivo!| findstr /r /c:".*[0-9][0-9]$" >nul || (
                set "novoNome=!nomeArquivo:~0,-1!0!nomeArquivo:~-1!!extensao!"
                echo %%a -^> !novoNome!>>"%logFile%"
                ren "%%a" "!novoNome!"
            )
        )
    )
)


echo.
echo Digite o novo prefixo para os arquivos .jpg:
set /p novoPrefixo=

set /a contador=10
for /f "tokens=*" %%a in ('dir /b /o:n *.jpg') do (
    if "%%a" neq "%~nx0" (
        set "extensao=%%~xa"
        REM Verifica se o arquivo é .jpg antes de renomear
        if "!extensao!"==".jpg" (
            set "novoNome=!novoPrefixo!!contador!!extensao!"
            echo Renomeando "%%a" para "!novoNome!"
            ren "%%a" "!novoNome!"
            set /a contador+=1
        )
    )
)

rem del alteracoes.txt

echo.
echo Operacao concluida.
pause