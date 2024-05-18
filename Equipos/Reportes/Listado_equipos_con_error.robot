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
${Nombrereporte}    Listado de equipos con Error
${Reporte}    xpath=//td[normalize-space()='Listado de equipos con Error']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Bottonlistatipodeequipos}    xpath=(//div[@class='dx-dropdowneditor-icon'])[5]
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Listafechadesde}    xpath=(//div[@class='dx-dropdowneditor-icon'])[3]
${Fechadesde}    xpath=(//span[contains(.,'28')])[1]
${Listafechahasta}    xpath=(//div[@class='dx-dropdowneditor-icon'])[4]
${Fechahasta}    xpath=(//span[contains(.,'4')])[13]
${Bottonenviar}    xpath=(//div[contains(.,'Aceptar')])[13]
${Equiposeleccionado}    xpath=(//span[@class='dx-icon dx-icon-clear'])[2]
${Bottonlimpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
${Bottoncancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de reporte equipos con error
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Reporte de Listado
    Seleccionar botton lista tipo de equipos
    Seleccionar equipo
    Seleccionar botton para desplegar fecha desde
    Seleccionar fecha desde
    Seleccionar botton para desplegar fecha hasta
    Seleccionar fecha hasta
    Seleccionar botton enviar

Campos vacios
    Sleep    5s
    Quitar tipo de equipo seleccionado

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

Seleccionar botton lista tipo de equipos
    Click Element When Visible    ${Bottonlistatipodeequipos}

Seleccionar equipo
    Click Element When Visible    ${Equipo}

Seleccionar botton para desplegar fecha desde
    Click Element When Visible    ${Listafechadesde}

Seleccionar fecha desde
    Click Element When Visible    ${Fechadesde}

Seleccionar botton para desplegar fecha hasta
    Click Element When Visible    ${Listafechahasta}

Seleccionar fecha hasta
    Click Element When Visible    ${Fechahasta}

Seleccionar botton enviar
    Click Element When Visible    ${Bottonenviar}

Quitar tipo de equipo seleccionado
    Click Element When Visible    ${Equiposeleccionado}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}