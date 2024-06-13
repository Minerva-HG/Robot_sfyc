*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesmateriales}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[6]
${Bottondevoluciones}  xpath=//span[normalize-space()='Devoluciones']
${Bottontipodecuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[3]/app-return-material-form/form/app-shared-material-crew-parameter/div/div[1]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[2]/div
${Tipo}  xpath=//td[normalize-space()='ALM Almacen']
${Bottoncuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[3]/app-return-material-form/form/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[2]/div
${Campocuadrilla}  css=.dx-texteditor-input[autocomplete='off'][inputmode='decimal'][spellcheck='false'][min='0']
${Textocuadrilla}  0004
${Cuadrilla}  xpath=//*[@id="dx-d275e49d-e2b1-6dee-8bd1-5bd91043e508"]/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]
${Textocuadrilla2}  0003
${Campocuadrilla2}  xpath=//td[normalize-space()='0003']
${Iconofecha}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[3]/app-return-material-form/form/div/div[2]/div/dx-date-box/div/div/div[2]/div[2]/div/i
${Fecha}  xpath=//td[@aria-label='miércoles, 12 de octubre de 2022']//span[contains(text(),'12')]
${Iconoagregarregistro}  xpath=//i[@class='dx-icon dx-icon-edit-button-addrow']
${Tipodematerial}  xpath=//div[contains(text(),'1 Material de Acometidas')]
${Campomaterial}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[4]/app-return-material-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]
${Material}  xpath=//div[contains(text(),'2 CABLE COAXIAL RG-6')]
${Campocantidad}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[4]/app-return-material-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[5]
${Textocantidad}  xpath=12
${Campocantidaddespuesdehacerclic}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[4]/app-return-material-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[5]/div/div/div/div[1]/input
${Iconoguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[4]/app-return-material-grid/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/i
${Cerrarnotificacion}  xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div/div/i
${Bottonlimpiar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[5]/footer/app-general-button/div/div[2]/dx-button
${Iconoborrar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-return-material-main-container/div/div[4]/app-return-material-grid/dx-data-grid/div/div[4]/div/div/div[3]/div[3]/div/div
${Iconolupa}  xpath=//i[@class='dx-icon dx-icon-search']
${Bottontipodecuadrillagrid}  xpath=/html/body/div/div/div[2]/div/div/div[2]/app-query-material-movement-form/form/div[2]/div/app-shared-material-crew-parameter/div/div[1]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[2]/div
${Tipogrid}    xpath=//td[normalize-space()='ATQ Mant. ATQ']
${Bottoncuadrillagrid}  xpath=/html/body/div[1]/div/div[2]/div/div/div[2]/app-query-material-movement-form/form/div[2]/div/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div[1]/div/div[2]/div
${Cuadrillagrid}  xpath=//tr[@class='dx-row dx-data-row dx-row-lines dx-column-lines dx-state-hover']//td[@role='gridcell'][normalize-space()='0003']

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla de devolucion de materiales
    Sleep   15s
    Seleccionar menu
    Sleep   3s
    Seleccionar operaciones materiales
    Sleep   5s
    Seleccionar botton devoluciones
    Sleep   3s

Cuadrilla
    Sleep   5s
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

Agregar registro e ingresar campos
    Sleep   5s
    Seleccionar botton tipo de cuadrilla
    Sleep   3s
    Seleccionar tipo
    Sleep   5s
    Seleccionar botton cuadrilla
    Sleep   5s
    Seleccionar campo cuadrilla
    Sleep   5s
    Introducir texto cuadrilla2
    Sleep   5s
    Seleccionar campo cuadrilla2
    Sleep   5s
    Seleccionar icono fecha
    Sleep   5s
    Seleccionar Fecha
    Sleep   5s
    Seleccionar icono agregar registro
    Sleep   3s

Ingresar campos
    Sleep   5s
    Seleccionar tipo de material
    Sleep   5s
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
    Seleccionar icono guardar

Eliminar registro
    Sleep   10s
    Quitar notificacion
    Sleep   5s
    Seleccionar botton limpiar
    Sleep   10s
    Seleccionar botton tipo de cuadrilla
    Sleep   3s
    Seleccionar tipo
    Sleep   5s
    Seleccionar botton cuadrilla
    Sleep   5s
    Seleccionar campo cuadrilla
    Sleep   5s
    Introducir texto cuadrilla2
    Sleep   5s
    Seleccionar campo cuadrilla2
    Sleep   5s
    Seleccionar icono fecha
    Sleep   5s
    Seleccionar Fecha
    Sleep   5s
    Seleccionar icono agregar registro
    Sleep   5s
    Seleccionar tipo de material
    Sleep   5s
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
    Seleccionar icono borrar
    Sleep   5s

Consulta de movimientos cuadrilla
    Sleep   5s
    Seleccionar icono lupa
    Sleep   5s
    Seleccionar botton tipo de cuadrilla grid
    Sleep   10s
    Seleccionar tipo grid
    Sleep   3s
    Seleccionar botton cuadrilla grid
    Sleep   3s
    Seleccionar cuadrilla grid
    Sleep   3s


*** Keyword ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar operaciones materiales
    Click element  ${Bottonoperacionesmateriales}

Seleccionar botton devoluciones
    Click element  ${Bottondevoluciones}

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
    Click element  ${Cuadrilla}

Introducir texto cuadrilla2
    Input text    ${Campocuadrilla}   ${Textocuadrilla2}

Seleccionar campo cuadrilla2
    Click element  ${Campocuadrilla2}

Seleccionar icono fecha
    Click element  ${Iconofecha}

Seleccionar fecha
    Click element  ${Fecha}

Seleccionar icono agregar registro
    Click element  ${Iconoagregarregistro}

Seleccionar tipo de material
    Click element  ${Tipodematerial}

Seleccionar campo material
    Click element  ${Campomaterial}

Seleccionar material
    Click element  ${Material}

Seleccionar campo cantidad
    Click element  ${Campocantidad}

Teclear cantidad
    Input Text    ${Campocantidaddespuesdehacerclic}   ${Textocantidad}

Seleccionar icono guardar
    Click element  ${Iconoguardar}

Quitar notificacion
    Click element  ${Cerrarnotificacion}

Seleccionar botton limpiar
    Click element  ${Bottonlimpiar}

Seleccionar icono borrar
    Click element  ${Iconoborrar}

Seleccionar icono lupa
    Click element  ${Iconolupa}

Seleccionar botton tipo de cuadrilla grid
    Click element  ${Bottontipodecuadrillagrid}

Seleccionar tipo grid
    Click element  ${Tipogrid}

Seleccionar botton cuadrilla grid
    Click element  ${Bottoncuadrillagrid}

Seleccionar cuadrilla grid
    Click element  ${Cuadrillagrid}