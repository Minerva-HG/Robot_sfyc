*** Settings ***
Library           String
Library    SeleniumLibrary


*** Variables ***
#Login System
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui/
${user}    xpath=//input[@id='Username']
${pw}    xpath=//input[contains(@type,'password')]
${Botondominio}     xpath=//*[@id="Domain"]/option[3]
${Iniciar}    xpath=//button[@name='button']
${Dashboard}    xpath=//span[contains(.,'Dashboard')]


*** Test Cases ***
Paso 1
    Login General 

Paso 2
    Dashboard

*** Keywords ***

Login General
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   Chrome
    Maximize Browser Window
    Sleep   3s
    Click Element    ${Botondominio} 
    Sleep   3s
    Input Text    ${user}     mimartinezro
    Input Text    ${pw}     Mega12345    

    Click Element    ${Iniciar}
    Sleep    5s

Dashboard
    [Tags]    Dashboard
    Click Element    ${Dashboard}
    Sleep    5s








