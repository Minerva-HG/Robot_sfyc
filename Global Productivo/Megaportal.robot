** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://global.sfycnextgen.com.mx/ui/
#${modulo}  xpath=//img[@src='../../../../assets/img/iconos/sfyc/global.png']
${Cdomino}    xpath=//select[contains(@id,'Domain')]
${Dominio}    xpath=//*[@id="Domain"]/option[3]
${Cuser}    xpath=//input[contains(@id,'Username')]
${Cpass}    xpath=//input[contains(@id,'Password')]
${IniSe}    xpath=//button[@class='btn-login'][contains(.,'Iniciar sesión')]





*** Test Cases ***
Ingresar Portal
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep    5s
 
Seleccionar menu
    Credenciales modulo


*** Keyword ***
 
Credenciales modulo
    Click Element    ${Cdomino}
    Sleep    2s
    Click Element    ${Dominio} 
    Sleep    2s
    Click Element    ${Cuser} 
    Sleep    2s
    Input Text    ${Cuser}     MBELTRANG
    Sleep    2s
    Input Password    ${Cpass}     Mega2022
    Click Button    ${IniSe}
