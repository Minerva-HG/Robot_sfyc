*** Settings ***
Library  SeleniumLibrary
Library  String
Resource    ../../Login/Nuevo_Login.robot

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui/
${User}  mimartinezro
${Pass}  Mega12345
${Botondominio}    xpath=//*[@id="Domain"]/option[3]
${Iniciar}    xpath=//button[@name='button']
${Bottonmenu}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]

*** Test Cases ***
Paso 1
    Login General

#Paso 2
#    Seleccionar Menu


*** Keyword ***
Login General
    [Tags]
    Open Browser    ${Pagina}    ${Navegador}
    Maximize Browser Window
    Sleep    3s
    Click Element    ${Botondominio}
    Sleep    3s
    Input text    name:Username   ${User}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Element    ${Iniciar}

#Seleccionar Menu
#    Click Element    ${Bottonmenu}
#    Sleep    4s
#    Close Browser
