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
${BajasContables}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[1]/app-side-navigation-menu[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/dx-tree-view[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/li[1]/ul[1]/li[5]/ul[1]/li[14]/div[1]
#${CierroNotificacion}  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]
#${Cerraraviso}  xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]

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

Seleccionar operaciones equipos
    Seleccionar Bottonoperacionesequipos
    Sleep   5s

Seleccionar Equipos Bajas Contables
    Seleccionar Bajas Contables
    Sleep   5s
    Close browser


*** Keyword ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar Bottonoperacionesequipos
    Click element  ${Bottonoperacionesequipos}

Seleccionar Bajas Contables
    Click element  ${BajasContables}


