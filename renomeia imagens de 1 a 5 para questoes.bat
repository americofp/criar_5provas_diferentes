@echo off
setlocal EnableDelayedExpansion

echo.
echo Digite o número dessa questão:
set /p valorPrefixo=

set /a contador=1
for /f "tokens=*" %%a in ('dir /b /o:n *.jpg') do (
    if "%%a" neq "%~nx0" (
        set "extensao=%%~xa"
        REM Verifica se o arquivo é .jpg antes de renomear
        if "!extensao!"==".jpg" (
            set "novoNome=q%valorPrefixo%_!contador!.jpg"
            echo Renomeando "%%a" para "!novoNome!"
            ren "%%a" "!novoNome!"
            set /a contador+=1
            if !contador! gtr 5 (
                goto :fim
            )
        )
    )
)

:fim

echo.
rem echo Operacao concluida.
rem pause