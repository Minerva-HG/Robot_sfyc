*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  http://qa.sfycnextgen.com.mx/schedule360/ui/
${Usuario}  softteck01
${Pass}  123456c

*** Test Cases ***
Ingresar usuario
    Abrir navegador
    Maximize Browser Window
    Sleep   5s
    Seleccionar dominio
    Sleep   5s
    Ingresar usuario contrasena
    Sleep   20s
    Cerrar navegador


*** Keyword ***
Cerrar navegador
    Sleep   3s
    close browser



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