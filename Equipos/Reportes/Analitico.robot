*** Settings ***
Library  SeleniumLibrary
Library  String


*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonreportes}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[8]
${Bottonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[normalize-space()='Analítico de equipos por ubicación y modelo']
${Bottontipodeequipo}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-summary-equipment-models-form/form/div/div/div/app-type-equipment-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]
${Seleccionarequipo}  xpath=//td[normalize-space()='CABLE MODEMS']
${Bottonenviar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Bottonlimpiar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[3]/dx-button
${Equipodiferentealprimero}  xpath=//td[normalize-space()='ACCESS POINT']
${Bottoncancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[2]/dx-button


*** Test Cases ***
Ingresar usuario
    
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    #Set Selenium Timeout    50s
    Sleep   5s
    Ingresar usuario contrasena

Pantalla de Liquidaciones
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar reportes
    Sleep   8s    
    Seleccionar botton para desplegar reportes
    Sleep   5s
    Seleccionar reporte
    Sleep   5s
    Seleccionar botton tipo de equipo
    Sleep   5s
    Seleccionar equipo
    Sleep   5s
    Seleccionar botton enviar

Botton limpiar
    Sleep    10s
    Seleccionar botton limpiar
    Sleep    5s

Listado
    Sleep    5s
    Seleccionar botton tipo de equipo
    Sleep    5s
    Seleccionar otro equipo diferente al primero
    Sleep    5s
    Seleccionar botton enviar

Botton cancelar
    Sleep    10s
    Seleccionar botton cancelar
    Sleep    3s




*** Keyword ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar reportes
    Click element  ${Bottonreportes}

Seleccionar botton para desplegar reportes
    Click Element    ${Bottonparadesplegarreportes}

Seleccionar reporte
    Click Element    ${Reporte}

Seleccionar botton tipo de equipo
    Click Element    ${Bottontipodeequipo}

Seleccionar equipo
    Click Element    ${Seleccionarequipo}

Seleccionar botton enviar
    Click Element    ${Bottonenviar}

Seleccionar botton limpiar
    Click Element    ${Bottonlimpiar}

Seleccionar otro equipo diferente al primero
    Click Element    ${Equipodiferentealprimero}

Seleccionar botton cancelar
    Click Element    ${Bottoncancelar}