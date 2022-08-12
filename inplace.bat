@echo off
openfiles>nul 2>&1 
if %errorlevel% EQU 0 goto terms
mshta.exe vbscript:Execute("msgbox ""Execute esta ferramenta como administrador. Clique com o botao direito e selecione a opcao 'Executar como administrador'"",0,""INPLACE"":close")
exit
:terms
echo. 
echo    TROCAR VERSAO DO WINDOWS
echo  ==================================
echo  1. HOME      
echo  2. HOME SINGLE LANGUAGE
echo  3. SAIR

set /p escolha=Escolha:

if %escolha% equ 1 goto home
if %escolha% equ 2 goto homesl
if %escolha% equ 3 (goto end) else (goto end)

:home
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v EditionID /t REG_SZ /d Core /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName /t REG_SZ /d "Windows 10 Home" /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v EditionID /t REG_SZ /d Core /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v ProductName /t REG_SZ /d "Windows 10 Home" /f
regedit
goto end

:homesl
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v EditionID /t REG_SZ /d "CoreSingleLanguage" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName /t REG_SZ /d "Windows 10 Home Single Language" /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v EditionID /t REG_SZ /d Core /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v ProductName /t REG_SZ /d "Windows 10 Home" /f
regedit
goto end

:end
echo Fim
pause