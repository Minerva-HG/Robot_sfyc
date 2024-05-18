*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottonregistroserie}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]/ul/li
${Bottonaltas}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]/ul/li[1]/ul/li
${Bottonordendecompra}  name:purchaseOrder
${Orden}  xpath=//td[normalize-space()='094OC00556740-1']
${Bottonprovedor}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/form/div/app-transfer-added-invoice-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Provedor}  xpath=//td[normalize-space()='58968']
${csv}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/i
${Bottonagregar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/dx-button[2]/div/i
${Bottontipoequipo}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-add-form/form/div/div[1]/app-type-equipment-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Equipo}  xpath=//td[normalize-space()='MULTIPLEXOR']
${Bottonarchivo}  xpath=//*[@id="fileuploader-container"]/dx-file-uploader/div/div/div/div[1]/div[1]
${Bottonlimpiar}  xpath=//*[@id="fileuploader-container"]/div/dx-button
${Bottonenviar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Bottonmenutransacciones}  xpath=//i[@class='dx-icon dx-icon-menu']
${Transacciones}  xpath=//span[normalize-space()='Transacciones']
${Notificacion}  xpath=//i[@class='dx-icon dx-icon-close']
${Campotransaccion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]
${Bottondetalledevalidaciones}  xpath=//span[normalize-space()='Ejecutar']
${Bottonaceptarequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[1]/dx-button
${Bottoneliminarequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[2]/dx-button
${Bottonactualizartransacciones}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/dx-button
${Bottonejecutar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[1]/dx-button

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Navegar a registro en serie altas
    Sleep   15s
    Seleccionar menu
    Sleep   3s
    Seleccionar operaciones equipos
    Sleep   5s
    Seleccionar registro serie
    Sleep   5s
    Seleccionar altas

Alta de registro en serie
    Sleep   4s
    Seleccionar botton orden de compra
    Sleep   4s
    Seleccionar orden
    Sleep   4s
    Seleccionar botton factura de provedor
    Sleep   4s
    Seleccionar provedor
    Sleep   4s
    Seleccionar botton aceptar equipos
    Sleep   20s
    Seleccionar notificacion
    Sleep   3s
    Seleccionar botton orden de compra
    Sleep   4s
    Seleccionar orden
    Sleep   4s
    Seleccionar botton factura de provedor
    Sleep   4s
    Seleccionar provedor
    Sleep   4s
    Seleccionar botton eliminar equipos
    Sleep   7s
    Seleccionar notificacion
    Sleep   3s
    Seleccionar botton orden de compra
    Sleep   4s
    Seleccionar orden
    Sleep   4s
    Seleccionar botton factura de provedor
    Sleep   4s
    Seleccionar provedor
    Sleep   4s

Encabezado csv y filas duplicadas
    Sleep   4s
    Seleccionar botton csv

Equipos no existentes
    Sleep   2s
    Seleccionar botton agregar
    Sleep   2s
    Seleccionar botton tipo equipo
    Sleep   3s
    Seleccionar equipo

Seleccionar el archivo
    Seleccionar botton archivo

Valida botton Limpiar
    Sleep   17s
    Seleccionar botton limpiar

Enviar
    Sleep   3s
    Seleccionar botton tipo equipo
    Sleep   3s
    Seleccionar equipo
    Sleep   3s
    Seleccionar botton archivo
    Sleep   10s
    Seleccionar botton enviar

Validar en transacciones
    Sleep   1s
    Seleccionar menutransacciones
    Sleep   3s
    Seleccionar transacciones

Quitar notificacion y seleccionar transaccion
    Sleep   20s
    Seleccionar notificacion
    Sleep   3s
    Seleccionar actualizar transacciones
    Sleep   3s
    Seleccionar campo transaccion

Descargar detalle de validaciones
    Sleep   4s
    IF    '${Bottonejecutar}'== 'True'    Run Keywords    Seleccionar ejecutar
   ...    ELSE    Seleccionar descargar detalle de validaciones
    Sleep   4s

*** Keyword ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar operaciones equipos
    Click element  ${Bottonoperacionesequipos}

Seleccionar registro serie
    Click element  ${Bottonregistroserie}

Seleccionar altas
    Click element  ${Bottonaltas}

Seleccionar botton orden de compra
    Click element  ${Bottonordendecompra}

Seleccionar orden
    Click element  ${Orden}

Seleccionar botton factura de provedor
    Click element  ${Bottonprovedor}

Seleccionar provedor
    Click element  ${Provedor}

Seleccionar botton csv
    Click element  ${csv}

Seleccionar botton agregar
    Click element  ${Bottonagregar}

Seleccionar botton tipo equipo
    Click element  ${Bottontipoequipo}

Seleccionar equipo
    Click element  ${Equipo}

Seleccionar botton archivo
    Click element  ${Bottonarchivo}

Seleccionar botton limpiar
    Click element  ${Bottonlimpiar}

Seleccionar botton enviar
    Click element  ${Bottonenviar}

Seleccionar menutransacciones
    Click element  ${Bottonmenutransacciones}

Seleccionar transacciones
    Click element  ${Transacciones}

Seleccionar notificacion
    Click element  ${Notificacion}

Seleccionar campo transaccion
    Click element  ${Campotransaccion}

Seleccionar descargar detalle de validaciones
    Click element  ${Bottondetalledevalidaciones}

Seleccionar botton aceptar equipos
    Click element  ${Bottonaceptarequipos}

Seleccionar botton eliminar equipos
    Click element  ${Bottoneliminarequipos}

Seleccionar actualizar transacciones
    Click element  ${Bottonactualizartransacciones}

Seleccionar ejecutar
    Click element  ${Bottonejecutar}