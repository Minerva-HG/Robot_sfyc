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
${Bottonserie}  xpath=//*[@id=\"dx-e79ff7ac-ca86-9df5-bb24-558778c6ae35\"]/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena
Navegar a registro en serie altas
    Sleep   12s
    Seleccionar menu
    Sleep   3s
    Seleccionar operaciones equipos
    Sleep   5s
    Seleccionar registro serie
    Sleep   5s
    Seleccionar altas
Seleccionar datos
    Sleep   4s
    Seleccionar orden de compra
    Sleep   5s
    Seleccionar serie
    Sleep   7s



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

Seleccionar orden de compra
    Click element  ${Bottonordendecompra}

Seleccionar serie
    Click element  ${Bottonserie}