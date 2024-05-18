*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://servicios.dev-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Bottonoperacionesmateriales}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[2]
${Bottonentregas}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[2]/ul/li[2]
${Bottontipodecuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-delivery-material-main-container/div/div[3]/app-delivery-material-form/form/app-shared-material-crew-parameter/div/div[1]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[2]/div/div
${Tipo}  xpath=//td[normalize-space()='ALM Almacen']
${Bottoncuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-delivery-material-main-container/div/div[3]/app-delivery-material-form/form/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[2]/div/div
${Campocuadrilla}  css=.dx-texteditor-input[autocomplete='off'][inputmode='decimal'][spellcheck='false'][min='0']
${Textocuadrilla}  0007
${Cuadrilla}    xpath=//td[normalize-space()='0003']
${iconoagregar}     xpath=//i[@class='dx-icon dx-icon-edit-button-addrow']
${iconofecha}    xpath=//i[@class='dx-icon dx-icon-event']
${Iconoagregarregistro}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-delivery-material-main-container/div/div[4]/app-delivery-material-grid/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div
${Seleccionarmaterial}    xpath=//div[contains(text(),'1 Material de Acometidas')]
${Campomaterial}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-delivery-material-main-container/div/div[4]/app-delivery-material-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]
${Material}    xpath=//div[contains(text(),'3 CABLE COAXIAL VW-160')]
${Campocantidad}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-delivery-material-main-container/div/div[4]/app-delivery-material-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[5]
${Textocantidad}    12
${Campocantidaddespuesdehacerclic}  xpath=//div[@class='dx-show-invalid-badge dx-numberbox dx-texteditor dx-editor-underlined dx-widget dx-state-hover dx-state-focused']//input[@role='spinbutton']
${Bottonguardar}    xpath=//i[@class='dx-icon dx-icon-edit-button-save']
${Notificacion}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div
${Bottondescartarcambios}    xpath=//i[@class='dx-icon dx-icon-edit-button-cancel']
${Iconocarpeta}    xpath=//i[@class='dx-icon dx-icon-folder']
${Tipo2}    xpath=//*[@id="dx-cdf7a455-569d-e550-6a52-9dc0afa2b829"]/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[6]
${Cuadrilla2}    xpath=//td[normalize-space()='0001']
${Bottonenviar}    xpath=/html/body/div/div/div[2]/div/div/div[2]/div/footer/app-general-button/div/div[1]/dx-button
${Tipodecuadrillagrid}    xpath=/html/body/div/div/div[2]/div/div/div[2]/app-query-material-movement-form/form/div[2]/div/app-shared-material-crew-parameter/div/div[1]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[2]/div
${Cuadrillagrid}    xpath=/html/body/div/div/div[2]/div/div/div[2]/app-query-material-movement-form/form/div[2]/div/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div[1]/div/div[2]/div
${Campofolio}  xpath=//*[@id="dx-6d14efcc-9951-7283-2d37-7e53d2eec2be"]
${Campodetextofolio}  xpath=/html/body/div[2]/div/div[2]/div/div/div[2]/app-query-material-movement-form/form/div[2]/div/app-shared-material-folio-parameter/div/dx-number-box/div/div[1]/input
${Textofolio}  70072076
${Ceckboxrequisicion}  xpath=/html/body/div[2]/div/div[2]/div/div/div[2]/app-query-material-movement-form/form/div[1]/div/dx-check-box/div/span
${Bottonenviar}  xpath=/html/body/div[2]/div/div[2]/div/div/div[2]/div/footer/app-general-button/div/div[1]/dx-button

*** Test Cases ***
#Función para la espera de los elementos
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla de Entrega de materiales
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar operaciones de materiales
    Sleep   3s
    Seleccionar entregas

Validar que la cuadrilla este en catalogo
    Sleep   8s
    Seleccionar botton tipo de cuadrilla
    Sleep   3s
    Seleccionar tipo
    Sleep   5s
    Seleccionar botton cuadrilla
    Sleep   5s
    Seleccionar campo cuadrilla
    Sleep   5s
    Introducir texto cuadrilla
    Sleep   5s

Agregar registro
    Sleep   5s
    Seleccionar limpiar texto
    Sleep   5s
    Seleccionar cuadrilla
    Sleep   5s
    Seleccionar icono fecha
    Sleep   8s
    Seleccionar icono fecha
    Sleep   5s
    Seleccionar icono agregar registro
    Sleep   5s

Ingresar campos
    Sleep   5s
    Seleccionar tipo material
    Sleep   8s
    Seleccionar campo material
    Seleccionar campo material
    Sleep   5s
    Seleccionar material
    Sleep   5s
    Seleccionar campo cantidad
    Seleccionar campo cantidad
    Sleep   3s
    Teclear cantidad
    Sleep   3s
    Seleccionar botton guardar
    Sleep   10s
    Cerrar notificacion
    Sleep   3s

Eliminar registro
    Sleep   5s
    Seleccionar icono agregar
    Sleep   5s
    Seleccionar tipo material
    Sleep   8s
    Seleccionar campo material
    Sleep   3s
    Seleccionar campo material
    Seleccionar campo material
    Sleep   5s
    Seleccionar material
    Sleep   5s
    Seleccionar campo cantidad
    Seleccionar campo cantidad
    Sleep   3s
    Teclear cantidad
    Sleep   5s
    Seleccionar botton descartar cambios

Entregas de materiales/cuadrilla
    Sleep    3s
    Seleccionar icono carpeta
    Sleep    3s
    Seleccionar botton tipo de cuadrilla grid
    Sleep    5s
    #Seleccionar tipo2
    #Sleep    3s
    #Seleccionar botton cuadrilla grid
    #Sleep    8s
    #Seleccionar cuadrilla2
    #Sleep    3s
    #Seleccionar botton enviar
    #Sleep    3s
    Seleccionar botton tipo de cuadrilla grid

Entregas de materiales/ Folio
    #Seleccionar por folio
    #Sleep   5s
    #Seleccionar campo de texto folio
    #Sleep   5s
    #Teclear folio

Entregas de materiales/ Requisición
    #Seleccionar checbox por requisicion
    #Sleep   5s
    #Seleccionar botton enviar
    #Sleep   5s



*** Keywords ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar operaciones de materiales
    Click element  ${Bottonoperacionesmateriales}

Seleccionar entregas
    Click element  ${Bottonentregas}

Seleccionar botton tipo de cuadrilla
    Click element  ${Bottontipodecuadrilla}

Seleccionar tipo
    Click element  ${Tipo}

Seleccionar botton cuadrilla
    Click element  ${Bottoncuadrilla}

Seleccionar campo cuadrilla
    Click element  ${Campocuadrilla}

Introducir texto cuadrilla
    Input text    ${Campocuadrilla}   ${Textocuadrilla}

Seleccionar cuadrilla
    Click Element   ${Cuadrilla}

Seleccionar icono agregar
    Click Element   ${iconoagregar}

Seleccionar icono fecha
    Click Element   ${iconofecha}

Seleccionar limpiar texto
    Clear Element Text  xpath=//div[@class='dx-show-invalid-badge dx-numberbox dx-texteditor dx-editor-underlined dx-widget dx-state-focused dx-state-hover']//input[@role='spinbutton']

Seleccionar icono agregar registro
    Click Element    ${Iconoagregarregistro}

Seleccionar tipo material
    Click Element    ${Seleccionarmaterial}

Seleccionar campo material
    Click Element    ${Campomaterial}

Seleccionar material
    Click Element    ${Material}

Seleccionar campo cantidad
    Click Element    ${Campocantidad}

Teclear cantidad
    Input text    ${Campocantidaddespuesdehacerclic}   ${Textocantidad}

Seleccionar botton guardar
    Click Element    ${Bottonguardar}

Cerrar notificacion
    Click Element    ${Notificacion}

Seleccionar botton descartar cambios
    Click Element    ${Bottondescartarcambios}

Seleccionar icono carpeta
    Click Element    ${Iconocarpeta}

Seleccionar botton tipo de cuadrilla grid
    Click Element    ${Tipodecuadrillagrid}

Seleccionar tipo2
    Click Element    ${Tipo2}

Seleccionar botton cuadrilla grid
    Click Element    ${Cuadrillagrid}

Seleccionar cuadrilla2
    Click Element    ${Cuadrilla2}

Seleccionar botton enviar
    Click Element    ${Bottonenviar}

Seleccionar por folio
    Click element  ${Campofolio}

Seleccionar campo de texto folio
    Click element  ${Campodetextofolio}

Teclear folio
    Input Text    ${Campodetextofolio}   ${Textofolio}

Seleccionar checbox por requisicion
    Click element  ${Ceckboxrequisicion}

Seleccionar botton enviar
    Click element  ${Bottonenviar}