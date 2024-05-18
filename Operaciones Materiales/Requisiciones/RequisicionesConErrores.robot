*** Settings ***
#Library  SeleniumLibrary
Documentation    
Library  String    
Library    RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  ADOMINGUEZG
${Pass}  Omega2018
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
#ingresar al menu
${Bottonmenu}  xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Bottonoperacionesmateriales}  xpath=//span[contains(.,'Operaciones Materiales')]
${Bottonrequisiciones}  xpath=//span[normalize-space()='Requisiciones']
#requisiciones
${Bottontipodecuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-requisition-container/div/div[3]/div[2]/app-requisition-form/form/app-shared-material-crew-parameter/div/div[1]/app-type-crew-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Tipo}  xpath=//td[normalize-space()='ALM Almacen']
${Bottoncuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-requisition-container/div/div[3]/div[2]/app-requisition-form/form/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Cuadrilla}  xpath=//td[normalize-space()='0001']
${Iconocuadrilla}  xpath=//i[@class='dx-icon dx-icon-event']
${fecha}  xpath=(//span[contains(.,'6')])[1]
${Bottonenviar}   xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-requisition-container/div/div[3]/div[2]/footer/app-general-button/div/div[1]/dx-button/div
${Icononotificacion}   xpath=//i[@class='dx-icon dx-icon-close']
${Iconofolio}    xpath= //i[@class='dx-icon dx-icon-export']
${Campofolio}    xpath=//input[@role='spinbutton']
${Folio}  58485
#iconos superiores
${Iconoimprimir}  xpath=//div[@class='dx-button-content']//i[@class='dx-icon dx-icon-print']
${Iconoporcuadrilla}    xpath=//i[@class='dx-icon dx-icon-unselectall']
${Iconobuscar}    xpath=//i[@class='dx-icon dx-icon-search']
${Iconoquitarcuadrilla}   xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-requisition-container/div/div[3]/div[2]/app-requisition-form/form/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span
${Bottonequipos}   xpath=//span[normalize-space()='Equipo']
${Tipo2}    xpath=//td[normalize-space()='ATQ Mant. ATQ']
${Cuadrilla2}    xpath=//td[normalize-space()='0028']
${Bottonguardar}    xpath=//i[@class='dx-icon dx-icon-save']


*** Test Cases ***
Ingresar usuario
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla de requisicion de materiales
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar operaciones de materiales
    Sleep   3s
    Seleccionar requisiciones

Ingresar
    Sleep   3s
    Seleccionar tipo de cuadrilla
    Sleep   5s
    Seleccionar tipo
    Sleep   3s
    Seleccionar botton cuadrilla
    Sleep   3s
    Seleccionar cuadrilla
    Sleep   3s
    Seleccionar icono fecha
    Sleep   3s
    Seleccionar fecha
    Sleep   3s
    Seleccionar botton enviar
    Sleep   3s
    Seleccionar notificacion
    Sleep   3s

Por folio
    Sleep   3s
    Seleccionar icono por folio
    Sleep   3s
    Teclear folio
    Sleep   3s
    Seleccionar icono fecha
    Sleep   5s
    Seleccionar fecha
    Sleep   3s
    Seleccionar botton enviar
    Sleep   3s

Validar pantalla imprimir
    Sleep   10s
    Seleccionar icono imprimir
    Sleep   3s

Buscar requisicion
    Sleep   3s
    Seleccionar icono por cuadrilla
    Sleep   10s
    Seleccionar tipo de cuadrilla
    Sleep   10s
    Seleccionar tipo
    Sleep   3s
    Seleccionar botton cuadrilla
    Sleep   3s
    Seleccionar cuadrilla
    Sleep   3s
    Seleccionar icono fecha
    Sleep   3s
    Seleccionar fecha
    Sleep   3s
    Seleccionar botton enviar
    Sleep   3s
    Seleccionar notificacion
    Sleep   5s
    Seleccionar icono Buscar
    Sleep   8s
    Seleccionar notificacion

Campos vacios
    Sleep   10s
    Seleccionar icono quitar cuadrilla
    Sleep   5s

Validar que todos los combos aparezcan completos y visibles
    Sleep   5s
    Seleccionar botton cuadrilla    
    Sleep   10s
    Seleccionar cuadrilla
    Sleep   5s
    Seleccionar icono fecha
    Sleep   5s
    Seleccionar fecha
    Sleep   5s
    Seleccionar icono por folio
    Sleep   3s
    Teclear folio
    Sleep   3s
    Seleccionar icono fecha
    Sleep   5s
    Seleccionar fecha
    Sleep   3s
    Seleccionar botton enviar
    Sleep   15s
    Seleccionar botton equipos
    Sleep   3s

Validar botton guardar y filtros visibles
    Sleep   5s
    Seleccionar icono por cuadrilla
    Sleep   3s
    Seleccionar tipo de cuadrilla
    Sleep   10s
    Seleccionar tipo2
    Sleep   3s
    Seleccionar botton cuadrilla
    Sleep   3s
    Seleccionar cuadrilla2
    Sleep   3s
    Seleccionar icono fecha
    Sleep   3s
    Seleccionar fecha
    Sleep   3s
    Seleccionar botton enviar
    Sleep   3s
    Seleccionar botton guardar
    Sleep   5s
    Seleccionar notificacion
    Sleep   5s

    

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button


Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar operaciones de materiales
    Click element  ${Bottonoperacionesmateriales}

Seleccionar requisiciones
    Click element  ${Bottonrequisiciones}

Seleccionar tipo de cuadrilla
    Click element  ${Bottontipodecuadrilla}

Seleccionar tipo
    Click element  ${Tipo}

Seleccionar botton cuadrilla
    Click element  ${Bottoncuadrilla}

Seleccionar cuadrilla
    Click element  ${Cuadrilla}

Seleccionar icono fecha
    Click Element  ${Iconocuadrilla}

Seleccionar fecha
    Click Element  ${Fecha}

Seleccionar botton enviar
    Click Element  ${Bottonenviar}

Seleccionar notificacion
    Click Element  ${Icononotificacion}

Seleccionar icono por folio
    Click Element   ${Iconofolio}

Teclear folio
    Input text   ${Campofolio}    ${Folio}

Seleccionar icono imprimir
    Click Element   ${Iconoimprimir}

Seleccionar icono por cuadrilla
    Click Element    ${Iconoporcuadrilla}

Seleccionar icono Buscar
    Click Element    ${Iconobuscar}

Seleccionar icono quitar cuadrilla
    Click Element    ${Iconoquitarcuadrilla}

Seleccionar botton equipos
    Click Element    ${Bottonequipos}
    Log    "OK rute"

Seleccionar tipo2
    Click Element    ${Tipo2}

Seleccionar cuadrilla2
    Click Element    ${Cuadrilla2}
    Log    "OK rute"

Seleccionar botton guardar
    Click Element    ${Bottonguardar}

