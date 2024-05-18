*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonreportes}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[8]
${Bottonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Campodescripcion}  xpath=//input[@role='textbox']
${Nombrereporte}    Auxiliar de equipos por estado
${Reporte}    xpath=//td[normalize-space()='Equipos en repeat offender']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Bottonlistafechadesde}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Fechadesde}    xpath=(//span[contains(.,'28')])[1]
${Bottonlistafechahasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Fechahasta}    xpath=(//span[contains(.,'30')])[6]
${Bottonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]
${Bottonlimpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de equipos en repeat offender
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Preliminar
    Seleccionar lista fecha desde
    Seleccionar fecha desde
    Seleccionar lista fecha hasta
    Seleccionar fecha hasta
    Seleccionar botton aceptar

Boton limpiar
    Sleep    5s
    Seleccionar botton limpiar

Boton cancelar
    Sleep    5s
    Seleccionar botton cancelar

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
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

Seleccionar lista fecha desde
    Click Element When Visible    ${Bottonlistafechadesde}

Seleccionar fecha desde
    Click Element When Visible    ${Fechadesde}

Seleccionar lista fecha hasta
    Click Element When Visible    ${Bottonlistafechahasta}

Seleccionar fecha hasta
    Click Element When Visible    ${Fechahasta}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}