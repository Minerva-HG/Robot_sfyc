*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  dhernandezd
${Pass}  Mega12345
${Contrato}  0120063814

*** Test Cases ***
Ingresar usuario
    Abrir navegador
    Maximize Browser Window
    Sleep   5s
    Seleccionar dominio
    Sleep   5s
    Ingresar usuario contrasena
    Sleep   5s
    Ingresar contrato
    Sleep   5s
    Cerrar navegador


*** Keywords ***
Cerrar navegador
    Sleep   3s
    close browser

Ingresar contrato
    Click Element    xpath=//input[@name='subscriber']
    Sleep   2s
    Input text    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/app-subscriber-search-contract-form[1]/form[1]/div[1]/dx-text-box[1]/div[1]/div[1]/input[1]    ${Contrato}
    Sleep   3s
    Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/div[1]/div[1]/dx-button[2]/div[1]/span[1]
    Sleep   10s

Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   3s
    Click Button    name:button

Seleccionar dominio
    Select From List By Label     name:Domain   SFYC



Abrir navegador
    Open browser    ${Pagina}   ${Navegador}
    title should be  Atención a Clientes