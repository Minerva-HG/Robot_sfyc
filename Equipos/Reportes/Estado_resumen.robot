*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://servicios.dev-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Bottonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Campodescripcion}  xpath=//input[contains(@maxlength,'7081')]
${Nombrereporte}    Resumen de equipos por estado
${Reporte}    xpath=//td[normalize-space()='Resumen de equipos por estado']
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]
${Bottonlimpiar}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]
${Bottonaceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]


*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    

Pantalla de resumen de equipos por estado
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Boton limpiar
    Seleccionar botton limpiar

Boton enviar e imprimir
    Seleccionar botton aceptar

Boton cancelar
    Sleep    7s
    Seleccionar botton cancelar


*** Keyword ***
Ingresar usuario contrasena
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element If Visible   name:button

Seleccionar menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Seleccionar reportes
    Wait Until Element Is Visible    ${Bottonreportes}
    Click Element    ${Bottonreportes}

Seleccionar botton para desplegar reportes
    Wait Until Element Is Visible    ${Bottonparadesplegarreportes}
    Click Element    ${Bottonparadesplegarreportes}

Seleccionar campo descripcion
    Wait Until Element Is Visible    ${Campodescripcion}   
    Click Element    ${Campodescripcion}

Teclear nombre de reporte
    Input Text When Element Is Visible    ${Campodescripcion}   ${Nombrereporte}

Seleccionar reporte
    Wait Until Element Is Visible    ${Reporte}   
    Click Element    ${Reporte}

Seleccionar botton cancelar
    Wait Until Element Is Visible    ${Bottoncancelar}   
    Click Element    ${Bottoncancelar}

Seleccionar botton limpiar
    Wait Until Element Is Visible    ${Bottonlimpiar}   
    Click Element    ${Bottonlimpiar}

Seleccionar botton aceptar
    Wait Until Element Is Visible    ${Bottonaceptar}   
    Click Element    ${Bottonaceptar}