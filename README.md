# inplace

Está ferramenta pode ser utilizada para alterar o registro do sistema para trocar a edição do Windows 10/11 Pro para o Home/Home Single Language  

-----Instruções usando arquivo .bat-----  
  
1_Baixar a ISO do Windows 10 seguindo as instruções do link: https://support.microsoft.com/pt-br/windows/criar-um-arquivo-iso-para-o-windows-10-38547366-1dcb-7afd-1726-9eb222d72705  
2_Executar como admin o arquivo "inplace.bat"  
3_Selecionar a versão que deseja instalar  
4_Executar "setup.exe" dentro da ISO baixada  
5_Selecionar "Alterar o modo como a Instalação do Windows baixa atualizações" e selecione a opção "Agora não"   
6_Desabilite a opção "Quero ajudar a tornar a Instalação do Windows ainda melhor"  
7_Após isso irá mostrar na tela a versão correta do Windows a ser instalado  
8_Confirme a opção "Alterar o que deve ser mantido"  
9_Clique em instalar  
  
-----Instruções sem usar o arquivo .bat-----  
1_Baixar a ISO do Windows 10 seguindo as instruções do link: https://support.microsoft.com/pt-br/windows/criar-um-arquivo-iso-para-o-windows-10-38547366-1dcb-7afd-1726-9eb222d72705  
2_Executar o CMD como admin  
3_Colar e executar os seguintes comandos escolhendo entre Home ou Home Single Language  
  
---Pro para Home---  
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v EditionID /t REG_SZ /d Core /f  
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName /t REG_SZ /d "Windows 10 Home" /f  
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v EditionID /t REG_SZ /d Core /f  
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v ProductName /t REG_SZ /d "Windows 10 Home" /f  

---Pro para Home Single Language---  
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v EditionID /t REG_SZ /d "CoreSingleLanguage" /f  
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName /t REG_SZ /d "Windows 10 Home Single Language" /f  
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v EditionID /t REG_SZ /d Core /f  
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion"  /v ProductName /t REG_SZ /d "Windows 10 Home" /f  
  
4_Seguir os mesmos passos de 4 até 9  






