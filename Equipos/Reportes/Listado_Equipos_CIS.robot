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
${Nombrereporte}    Listado de equipos CIS, ALM y CUA por estado
${Reporte}    xpath=//td[normalize-space()='Listado de equipos CIS, ALM y CUA por estado']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Listatipodeequipos}    xpath=(//div[@class='dx-dropdowneditor-icon'])[3]
${Equipo}    xpath=//td[contains(.,'SET TOPS CAS')]
${Listaestados}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Estado}    xpath=//td[contains(.,'DAÑADOS')]
${Iconocruzestado}    xpath=(//span[@class='dx-icon dx-icon-clear'])[3]
${Bottonlimpiar}    xpath=//span[contains(.,'Limpiar')]
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]
${Bottonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Campotipodeequipo}    xpath=//input[contains(@inputmode,'decimal')]
${Tipodeequipo}    007

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de listado de equipos CIS
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Listado
    Seleccionar botton para desplegar tipos de equipos
    Seleccionar equipo

Estado
    Seleccionar botton para desplegar estados
    Seleccionar estado

campos vacios
    Seleccionar icono cruz estado 
    Sleep    5s
    Seleccionar botton para desplegar estados
    Seleccionar estado
    
PDF
    Seleccionar botton aceptar    

Validar por id
    Seleccionar botton para desplegar tipos de equipos
    Seleccionar campo tipo de equipo
    Teclear el numero del tipo de equipo
    Sleep    5s
    Seleccionar botton para desplegar tipos de equipos

Boton limpiar
    Seleccionar botton limpiar

Boton cancelar
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

Seleccionar botton para desplegar tipos de equipos
    Click Element When Visible    ${Listatipodeequipos}

Seleccionar equipo
    Click Element When Visible    ${Equipo}

Seleccionar botton para desplegar estados
    Click Element When Visible    ${Listaestados}

Seleccionar estado
    Click Element When Visible    ${Estado}

Seleccionar icono cruz estado
    Click Element When Visible    ${Iconocruzestado}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Seleccionar campo tipo de equipo
    Click Element When Visible    ${Campotipodeequipo}

Teclear el numero del tipo de equipo
    Input Text When Element Is Visible    ${Campotipodeequipo}    ${Tipodeequipo}