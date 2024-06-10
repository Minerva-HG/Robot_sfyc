*** Settings ***
Library           String
Library    SeleniumLibrary


*** Variables ***
#Login System
${Navegador}    Chrome
${Pagina}     https://ventas.qa-cluster.sfycnextgen.com.mx/ui/
${User}    mimartinezro
${Pass}    Mega12345
${Botondominio}     xpath=//*[@id="Domain"]/option[3]
${Iniciar}    xpath=//button[@name='button']

#user inventarios


#OPENS


#Sub


*** Test Cases ***
Paso 1
    Login General 

*** Keywords ***

Login General
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Click Element    ${Botondominio} 
    Sleep   5s
    Input Text    name:Username   ${User}
    Input Text    name:Password    ${Pass}       

    Click Element    ${Iniciar}