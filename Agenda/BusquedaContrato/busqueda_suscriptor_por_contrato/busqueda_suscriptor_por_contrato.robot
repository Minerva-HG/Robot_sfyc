*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Cajadetextoserie}  xpath=//input[@name='subscriber']
${Contrato}  0120063814
${BotonConsultar}  Xpath: //div[@class='add-subscriber-buttons']



*** Test Cases ***
Ingresar usuario
    Abrir navegador
    Maximize Browser Window
    Sleep   5s
    Seleccionar dominio
    Sleep   5s
    Ingresar usuario contrasena
    Sleep   10s
    Ingresar suscriptor por contrato
    Sleep   10s
    Seleccionar boton consultar
    Sleep   10s
    Cerrar navegador


*** Keyword ***
Cerrar navegador
    Sleep   3s
    close browser

Seleccionar boton consultar
    Click Button    ${BotonConsultar}

Ingresar suscriptor por contrato
    Input text    ${Cajadetextoserie}   ${Contrato}


Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   3s
    Click Button    name:button

Seleccionar dominio
    Select From List By Index     name:Domain   0



Abrir navegador
    Open browser    ${Pagina}   ${Navegador}
    title should be  Atención a Clientes Web