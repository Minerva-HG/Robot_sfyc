*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Serie}  AA831BWWR
${Cajadetextoserie}  xpath=//input[@name='serieId']
${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottonregistroserie}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]/ul/li
${Bottonbajas}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]/ul/li[1]/ul/li[2]
${Checkboxcargararchivocsv}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[5]/dx-check-box/div/span
${Bottontipodeequipo}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[1]/app-type-equipment-dropdown/dx-drop-down-box/div[1]/div/div[2]/div
${Equipo}  xpath=//td[normalize-space()='CONVERTIDORES']
${Checkboxmotivobaja}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[2]/dx-check-box/div
${Bottonmotivodebaja}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[3]/app-equipment-catalog-motive-dropdown/dx-drop-down-box/div[1]/div/div[2]/div
${Motivo}  xpath=//td[normalize-space()='Cobro al Cliente']
${Bottonseleccionararchivo}  xpath=//*[@id="fileuploader-container"]/dx-file-uploader/div/div/div/div[1]/div[1]
${Bottonlimpiararchivo}  xpath=//*[@id="fileuploader-container"]/div/dx-button
${Bottonlimpiar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[2]/footer/app-general-button/div/div[3]/dx-button
${Bottoncancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[2]/footer/app-general-button/div/div[2]/dx-button
${Bottonenviar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Bottonmenuregresar}  xpath=//i[@class='dx-icon dx-icon-menu']
${Notificacion}  xpath=//i[@class='dx-icon dx-icon-close']
${Transacciones}  xpath=//span[normalize-space()='Transacciones']
${Bottonactualizartransacciones}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/dx-button
${Campotransaccion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]
${Bottondetalledevalidaciones}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[3]/dx-button
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
    Seleccionar bajas
    Sleep   5s

Seleccionar bajas
    Sleep   5s

Validar botton limpiar archivo y limpiar
    Seleccionar checkbox cargar archivo csv
    Sleep   3s
    Seleccionar botton tipo de equipo
    Sleep   7s
    Seleccionar equipo
    Sleep   3s
    Seleccionar checkbox motivo baja
    Sleep   3s
    Seleccionar botton motivo de baja
    Sleep   3s
    Seleccionar motivo
    Sleep   3s
    Seleccionar botton archivo
    Sleep   10s
    Seleccionar botton limpiar archivo
    Sleep   6s
    Seleccionar botton limpiar

Validar botton cancelar
    Sleep   5s
    Seleccionar botton cancelar

Regresar a la ventana registro en serie bajas
    Sleep   6s
    Seleccionar botton menu regresar
    Sleep   3s
    Seleccionar operaciones equipos
    Sleep   5s
    Seleccionar registro serie
    Sleep   5s
    Seleccionar bajas
    Sleep   5s

Dar de baja equipos
    Sleep   5s
    Seleccionar checkbox cargar archivo csv
    Sleep   3s
    Seleccionar botton tipo de equipo
    Sleep   3s
    Seleccionar equipo
    Sleep   3s
    Seleccionar checkbox motivo baja
    Sleep   3s
    Seleccionar botton motivo de baja
    Sleep   3s
    Seleccionar motivo
    Sleep   3s
    Seleccionar botton archivo
    Sleep   10s
    Seleccionar botton enviar
    Sleep   3s

Quitar notificacion y validar en transacciones
    Sleep   10s
    Seleccionar notificacion
    Sleep   3s
    Seleccionar botton menu regresar
    Sleep   4s
    Seleccionar botton transacciones
    Sleep   3s
    Seleccionar actualizar transacciones
    Sleep   3s
    Seleccionar campo transaccion
    Sleep   3s

Descargar detalle de validaciones
    Sleep   4s
    IF    '${Bottonejecutar}'== 'True'    Run Keywords    Seleccionar ejecutar
   ...    ELSE    Seleccionar descargar detalle de validaciones

Dar de baja por serie
    Sleep   6s
    Seleccionar botton menu regresar
    Sleep   3s
    Seleccionar operaciones equipos
    Sleep   5s
    Seleccionar registro serie
    Sleep   5s
    Seleccionar bajas
    Sleep   5s
    Seleccionar botton tipo de equipo
    Sleep   3s
    Seleccionar equipo
    Sleep   3s
    Seleccionar checkbox motivo baja
    Sleep   3s
    Seleccionar botton motivo de baja
    Sleep   3s
    Seleccionar motivo

Teclear la serie que se dara de baja
    Sleep   5s
    Teclear numero de serie
    Sleep   6s
    Seleccionar botton enviar




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

Seleccionar bajas
    Click element  ${Bottonbajas}

Seleccionar checkbox cargar archivo csv
    Click element  ${Checkboxcargararchivocsv}

Seleccionar botton tipo de equipo
    Click element  ${Bottontipodeequipo}

Seleccionar equipo
    Click element  ${Equipo}

Seleccionar checkbox motivo baja
    Click element  ${Checkboxmotivobaja}

Seleccionar botton motivo de baja
    Click element  ${Bottonmotivodebaja}

Seleccionar motivo
    Click element  ${Motivo}

Seleccionar botton archivo
    Click element  ${Bottonseleccionararchivo}

Seleccionar botton enviar
    Click element  ${Bottonenviar}

Seleccionar botton limpiar archivo
    Click element  ${Bottonlimpiararchivo}

Seleccionar botton limpiar
    Click element  ${Bottonlimpiar}

Seleccionar botton cancelar
    Click element  ${Bottoncancelar}

Seleccionar botton menu regresar
    Click element  ${Bottonmenuregresar}

Seleccionar notificacion
    Click element  ${Notificacion}

Seleccionar botton transacciones
    Click element  ${Transacciones}

Seleccionar actualizar transacciones
    Click element  ${Bottonactualizartransacciones}

Seleccionar campo transaccion
    Click element  ${Campotransaccion}

Seleccionar descargar detalle de validaciones
    Click element  ${Bottondetalledevalidaciones}

Seleccionar botton ejecutar
    Click element  ${Bottonejecutar}

Teclear numero de serie
    Input text    ${Cajadetextoserie}   ${Serie}






