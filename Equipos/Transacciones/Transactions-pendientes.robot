*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Transacciones}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[1]/app-side-navigation-menu[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/dx-tree-view[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/li[1]/ul[1]/li[3]/div[1]
${Pendientes}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-main-container[1]/app-main-transactions-grid[1]/div[1]/dx-data-grid[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[4]/dx-check-box[1]/div[1]/span[1]
${Proceso}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-main-container[1]/app-main-transactions-grid[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]
${Ejecutar}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-main-container[1]/app-main-transactions-grid[1]/div[1]/dx-data-grid[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/dx-button[1]/div[1]
${CierroNotificacion}  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]
${Cerraraviso}  xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Navegar menu
    Sleep   15s
    Seleccionar menu
    Sleep   5s

Navegar transacciones
    Seleccionar transacciones
    Sleep   5s

Seleccionar check
    Seleccionar pendientes
    Sleep   5s

Seleccionar procesos
    Seleccionar proceso
    Sleep   3s
    Seleccionar ejecutar
    Sleep   15s
    Seleccionar Cierro aviso
#    Close browser


*** Keyword ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar transacciones
    Click element  ${Transacciones}

Seleccionar pendientes
    Click element  ${Pendientes}

Seleccionar proceso
    Click element  ${Proceso}

Seleccionar ejecutar
    Click element  ${Ejecutar}

Seleccionar Cierro aviso
    Click element  ${CierroNotificacion}
    Click element  ${Cerraraviso}