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
${Campodescripcionreporte}  xpath=//input[@role='textbox'] 
${Textoreporte}  Resumen de equipos reparados
${Reporte}  xpath=//td[normalize-space()='Resumen de equipos reparados']
${Iconodesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Iconohasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Bottonenviar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Bottonimprimir}  xpath=//*[@id="DocumentViewer"]/div/div[1]/div[1]/div[1]/div/div[1]/div[2]/div/div[13]/div
${Bottonlimpiar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[3]/dx-button
${Bottoncancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[2]/dx-button


*** Test Cases ***
Ingresar usuario
    
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    #Set Selenium Timeout    50s
    Sleep   5s
    Ingresar usuario contrasena

Pantalla resumen de equipos por ubicacion
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar reportes
    Sleep   8s    
    Seleccionar botton para desplegar reportes
    Sleep   5s
    Seleccionar campo descripcion reporte
    Sleep   5s
    Teclear nombre del reporte
    Sleep   5s
    Seleccionar reporte
    Sleep   5s

Fechas correctas
    Sleep   5s    
    Seleccionar icono desde
    Sleep   10s
    Seleccionar icono desde
    Sleep   3s
    Seleccionar icono hasta
    Sleep   10s
    Seleccionar icono hasta

Enviar
    Sleep   5s
    Seleccionar botton enviar
    
Limpiar
    Sleep    10s
    Seleccionar botton limpiar

Cancelar
    Sleep    10s
    Seleccionar botton cancelar


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

Seleccionar campo descripcion reporte
    Click Element    ${Campodescripcionreporte}

Teclear nombre del reporte
    Input Text    ${Campodescripcionreporte}    ${Textoreporte}

Seleccionar reporte
    Click Element    ${Reporte}

Seleccionar icono desde
    Click Element    ${Iconodesde}

Seleccionar icono hasta
    Click Element    ${Iconohasta}

Seleccionar botton enviar
    Click Element    ${Bottonenviar}

Seleccionar botton limpiar
    Click Element    ${Bottonlimpiar}

Seleccionar botton cancelar
    Click Element    ${Bottoncancelar}