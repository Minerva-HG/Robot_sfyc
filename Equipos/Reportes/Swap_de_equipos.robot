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
${Nombrereporte}    Swap de equipos    
${Reporte}    xpath=//td[normalize-space()='Swap de equipos']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Bottondesplegarequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Equipo}    xpath=(//td[contains(.,'SET TOPS')])[1]
${Bottondesplegarubicaciones}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Ubicacion}    xpath=//td[contains(.,'CIRCUNV ALTAS/CAMBIO')]
${Bottonparadesplegarfecha}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
${Bottonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Equiposeleccionado}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
${Bottonlimpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
${Bottoncancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]


*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de reporte swap de equipos
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Combo tipo de equipo
    Seleccionar botton para desplegar todos los equipos
    Seleccionar equipo

Combo ubicacion
    Seleccionar botton para desplegar ubicaciones
    Seleccionar ubicacion

Combo fecha
    Seleccionar botton para desplegar fecha
    Sleep    5s
    Seleccionar fecha

Boton Aceptar
    Sleep    5s
    Seleccionar botton aceptar

Campos vacios
    Sleep    5s
    Quitar equipo seleccionado

Boton limpiar
    Sleep    3s
    Seleccionar botton limpiar

Boton cancelar
    Sleep    3s
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

Seleccionar botton para desplegar todos los equipos
    Click Element When Visible    ${Bottondesplegarequipos}

Seleccionar equipo
    Click Element When Visible    ${Equipo}

Seleccionar botton para desplegar ubicaciones
    Click Element When Visible    ${Bottondesplegarubicaciones}

Seleccionar ubicacion
    Click Element When Visible    ${Ubicacion}

Seleccionar botton para desplegar fecha
    Click Element When Visible    ${Bottonparadesplegarfecha}

Seleccionar fecha
    Click Element When Visible    ${Fecha}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Quitar equipo seleccionado
    Click Element When Visible    ${Equiposeleccionado}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}