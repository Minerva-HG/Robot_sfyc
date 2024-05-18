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
${Reporte}    xpath=//td[normalize-space()='Auxiliar de equipos por estado']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Checkboxtodostiposdeequipo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Listadetodosequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Tipodeequipo}    xpath=(//td[contains(.,'SET TOPS')])[1]
${Checkboxtodoslosmodelosdeequipo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Listatodoslosmodelos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Modelodeequipo}    xpath=(//td[contains(.,'B866V2')])[1]
${Checkboxtodaslasubicaciones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Listatodaslasubicaciones}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Ubicacion}    xpath=//td[contains(.,'J. MINA ALTAS/CAMBIO')]
${Checkboxtodoslosestados}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Listatodoslosestados}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Estado}    xpath=//td[contains(.,'ERROR DE AUDIO')]
${Iconocruztipodeequipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
${Gridmasopciones}    xpath=//span[contains(.,'Más opciones')]
${Checkboxtodoslossuscriptores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Listatodoslossuscriptores}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Seleccionarsuscriptor}    xpath=//td[contains(.,'GUENTHER SCHUSTER')]
${Checkboxtodaslasseries}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Camposerie}    xpath=//input[@name='serieId']
${Serie}    12345678
${Checboxtodoslostiposdecuadrilla}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Listatodoslostiposdecuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Tipodecuadrilla}    xpath=//td[contains(.,'ALM Almacen')]
${Listatodaslascuadrillas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[9]
${Cuadrilla}    xpath=//td[contains(.,'0004')]
${Iconocruztipodecuadrilla}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[7]
${Bottonaceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Bottonlimpiar}    xpath=(//div[contains(.,'Limpiar')])[13]
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]


*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de reporte auxiliar de equipos por estado
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Combo tipos de equipo
    Seleccionar checkbox combo todos tipos de equipo
    Seleccionar botton lista de todos los equipos
    Seleccionar tipo de equipo

Combo modelo equipo
    Seleccionar checkbox combo todos los modelos de equipo
    Seleccionar botton lista todos los modelos de equipo
    Seleccionar modelo de equipo

Combo ubicacion
    Seleccionar checkbox todas las ubicaciones
    Seleccionar botton lista todas las ubicaciones
    Seleccionar ubicacion        

Combo estado
    Seleccionar checkbox todos los estados
    Seleccionar botton lista todos los estados
    Seleccionar estado

Boton aceptar seleccion
    Seleccionar botton aceptar

Campos vacios seleccion
    Seleccionar icono cruz tipo de equipo 

Mas opciones
    Seleccionar grid mas opciones
    
Combo suscriptor
    Sleep    3s
    Seleccionar checkbox todos los suscriptores
    Seleccionar botton lista todos los suscriptores
    Seleccionar suscriptor

Combo serie
    Seleccionar checkbox todas las series
    Teclear serie
    Sleep    5s
    Seleccionar checkbox todas las series

Combo tipo cuadrilla
    Seleccionar checkbox todos los tipos de cuadrilla
    Seleccionar botton lista todos los tipos de cuadrilla
    Seleccionar tipo de cuadrilla

Combo cuadrilla
    Seleccionar botton lista todas las cuadrillas
    Seleccionar cuadrilla

Boton aceptar en el grid mas opciones
    Seleccionar botton limpiar
    Seleccionar grid mas opciones
    Sleep    5s
    Seleccionar checkbox todos los suscriptores
    Seleccionar botton lista todos los suscriptores
    Seleccionar suscriptor
    Seleccionar checkbox todos los tipos de cuadrilla
    Seleccionar botton lista todos los tipos de cuadrilla
    Seleccionar tipo de cuadrilla
    Seleccionar botton lista todas las cuadrillas
    Seleccionar cuadrilla
    Seleccionar botton aceptar

Campos vacios mas opciones
    Sleep    5s
    Seleccionar icono cruz tipo de cuadrilla

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

Seleccionar checkbox combo todos tipos de equipo
    Click Element When Visible    ${Checkboxtodostiposdeequipo}

Seleccionar botton lista de todos los equipos
    Click Element When Visible    ${Listadetodosequipos}

Seleccionar tipo de equipo
    Click Element When Visible    ${Tipodeequipo}

Seleccionar checkbox combo todos los modelos de equipo
    Click Element When Visible    ${Checkboxtodoslosmodelosdeequipo}

Seleccionar botton lista todos los modelos de equipo
    Click Element When Visible    ${Listatodoslosmodelos}

Seleccionar modelo de equipo
    Click Element When Visible    ${Modelodeequipo}

Seleccionar checkbox todas las ubicaciones
    Click Element When Visible    ${Checkboxtodaslasubicaciones}

Seleccionar botton lista todas las ubicaciones
    Click Element When Visible    ${Listatodaslasubicaciones}

Seleccionar ubicacion
    Click Element When Visible    ${Ubicacion}

Seleccionar checkbox todos los estados
    Click Element When Visible    ${Checkboxtodoslosestados}

Seleccionar botton lista todos los estados
    Click Element When Visible    ${Listatodoslosestados}

Seleccionar estado
    Click Element When Visible    ${Estado}

Seleccionar icono cruz tipo de equipo
    Click Element When Visible    ${Iconocruztipodeequipo}

Seleccionar grid mas opciones
    Click Element When Visible    ${Gridmasopciones}

Seleccionar checkbox todos los suscriptores
    Wait Until Element Is Visible    ${Checkboxtodoslossuscriptores}
    Click Element When Visible    ${Checkboxtodoslossuscriptores}    

Seleccionar botton lista todos los suscriptores
    Click Element When Visible    ${Listatodoslossuscriptores}

Seleccionar suscriptor
    Click Element When Visible    ${Seleccionarsuscriptor}

Seleccionar checkbox todas las series
    Click Element When Visible    ${Checkboxtodaslasseries}

Teclear serie
    Input Text When Element Is Visible    ${Camposerie}    ${Serie}

Seleccionar checkbox todos los tipos de cuadrilla
    Click Element When Visible    ${Checboxtodoslostiposdecuadrilla}

Seleccionar botton lista todos los tipos de cuadrilla
    Click Element When Visible    ${Listatodoslostiposdecuadrilla}

Seleccionar tipo de cuadrilla
    Click Element When Visible    ${Tipodecuadrilla}

Seleccionar botton lista todas las cuadrillas
    Click Element When Visible    ${Listatodaslascuadrillas}

Seleccionar cuadrilla
    Click Element When Visible    ${Cuadrilla}

Seleccionar icono cruz tipo de cuadrilla
    Click Element When Visible    ${Iconocruztipodecuadrilla}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}