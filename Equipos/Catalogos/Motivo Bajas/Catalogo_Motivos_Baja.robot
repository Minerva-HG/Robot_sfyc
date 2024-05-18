*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML

*** Variables ***
${Navegador}  Chrome
${Pagina}   https://equipos.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottoncatalogos}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[7]
${Bottonmotivobajas}  xpath=//span[normalize-space()='Motivo Bajas']
${Campobuscar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-catalog-motive-down-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/div[1]/input
${Textoabuscar}  Cobro al cliente
${Bottonactualizar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-catalog-motive-down-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i


*** Test Cases ***
#Función para la espera de los elementos
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla catalogo de transportistas
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar catálogos
    Sleep   3s
    Seleccionar motivo bajas

Buscar
    Sleep   5s
    Seleccionar campo buscar
    Sleep   5s
    Teclear texto a buscar
    Sleep   5s
    Limpiar busqueda

Actualizar
    Sleep   5sx|
    Seleccionar botton actualizar
    Sleep   5s
    
*** Keywords ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar catálogos
    Click element  ${Bottoncatalogos}

Seleccionar motivo bajas
    Click element  ${Bottonmotivobajas}

Seleccionar campo buscar
    Click Element  ${Campobuscar}

Teclear texto a buscar
    Input Text    ${Campobuscar}    ${Textoabuscar}

Limpiar busqueda
    Clear Element Text    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-catalog-motive-down-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/div[1]/input

Seleccionar botton actualizar
    Click Element  ${Bottonactualizar}