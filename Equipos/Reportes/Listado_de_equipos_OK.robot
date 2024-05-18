** Settings ***
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
${Nombrereporte}    Listado de equipos Ok vs cliente
${Reporte}    xpath=//td[normalize-space()='Listado de equipos Ok vs cliente']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Bottonfechadesde}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Fechadesde}    xpath=(//span[contains(.,'28')])[1]
${Bottonfechahasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Fechahasta}    xpath=(//span[contains(.,'30')])[4]
${Listatipodeequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Equipo}    xpath=//td[contains(.,'MAXCOM eMTA')]
${Iconocruztipodeequipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
${Bottonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Bottonlimpiar}    xpath=//span[contains(.,'Limpiar')]
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de reporte listado de equipos ok
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Combo fecha desde
    Seleccionar botton fecha desde
    Seleccionar fecha desde

Combo fecha hasta
    Seleccionar botton fecha hasta
    Seleccionar fecha hasta

Combo equipos
    Seleccionar botton para desplegar tipos de equipos
    Seleccionar equipo

Campos vacios
    Seleccionar icono cruz tipo de equipo

Boton aceptar
    Seleccionar botton para desplegar tipos de equipos
    Seleccionar equipo
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

Seleccionar botton fecha desde
    Click Element When Visible    ${Bottonfechadesde}

Seleccionar fecha desde
    Click Element When Visible    ${Fechadesde}

Seleccionar botton fecha hasta
    Click Element When Visible    ${Bottonfechahasta}

Seleccionar fecha hasta
    Click Element When Visible    ${Fechahasta}

Seleccionar botton para desplegar tipos de equipos
    Click Element When Visible    ${Listatipodeequipos}

Seleccionar equipo
    Click Element When Visible    ${Equipo}

Seleccionar icono cruz tipo de equipo
    Click Element When Visible    ${Iconocruztipodeequipo}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}