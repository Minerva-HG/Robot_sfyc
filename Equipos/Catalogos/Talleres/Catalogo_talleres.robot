*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottoncatalogos}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[7]
${Bottontalleres}  xpath=//span[normalize-space()='Talleres']
${Bottonnuevo}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/i
${Campodescripcion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[1]/div/div/div/div[1]/input
${Textotaller}  Altamira
${Bottonguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/a[1]
${Bottonrefrescar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i
${Caracteresinvalidos}  !"#$%&/?¡
${Tallerduplicado}  Teleplan
${Iconoeditar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[3]/td[2]/a[1]
${Iconocancelar}  xapth=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/a[2]
${Iconoeliminarregistro}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[3]/td[2]/a[2]
${Iconook}  xpath=/html/body/div/div/div/div[2]/div/div[2]/div[1]/div/div
${Editar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/a[1]
${Textoamodificar}  Urbi

*** Test Cases ***
#Función para la espera de los elementos
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla catalogo de talleres
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar catálogos
    Sleep   3s
    Seleccionar talleres

Alta taller
    Sleep    8s
    Seleccionar botton nuevo registro
    Sleep    5s    
    Seleccionar campo descripcion
    Sleep    5s
    Teclear nombre del taller
    Sleep    5s
    Seleccionar botton guardar
    Sleep    3s
    Refrescar
    
Caracteres no validos
    Sleep    5s    
    Seleccionar botton nuevo registro
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear caracteres invalidos
    Sleep    5s
    Seleccionar botton guardar

Ingresar campos vacios
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Seleccionar limpiar texto
    Sleep    5s
    Seleccionar botton guardar
    Sleep    3s

Ingresar campo con nombre duplicado
    Sleep    5s
    Seleccionar botton nuevo registro
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear nombre del taller duplicado
    Sleep    5s
    Seleccionar botton guardar
    Sleep    3s
    Refrescar

Modificar registro
    Sleep    5s
    Seleccionar editar registro
    Sleep    5s
    Teclear texto a modificar
    Sleep    5s
    Seleccionar botton guardar
    Sleep    5s    

Eliminar registro
    Sleep    5s
    Seleccionar icono eliminar registro
    Sleep    5s
    Seleccionar ok
    Sleep    5s



    
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

Seleccionar talleres
    Click element  ${Bottontalleres}

Seleccionar botton nuevo registro
    Click Element   ${Bottonnuevo}

Seleccionar campo descripcion
    Click Element    ${Campodescripcion}

Teclear nombre del taller
    Input Text    ${Campodescripcion}    ${Textotaller}

Seleccionar botton guardar
    Click Element    ${Bottonguardar}

Refrescar
    Click Element    ${Bottonrefrescar}

Teclear caracteres invalidos
    Input Text    ${Campodescripcion}    ${Caracteresinvalidos}

Teclear nombre del taller duplicado
    Input Text    ${Campodescripcion}    ${Tallerduplicado}

Seleccionar limpiar texto
    Clear Element Text  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[1]/div/div/div/div[1]/input

Seleccionar icono cancelar
    Click Element    ${Iconocancelar}

Seleccionar icono eliminar registro
    Click Element    ${Iconoeliminarregistro}

Seleccionar ok
    Click Element    ${Iconook}

Seleccionar icono editar
    Click Element    ${Iconoeditar}

Seleccionar editar registro
    Click Element    ${Editar}

Teclear texto a modificar
    Input Text    ${Campodescripcion}    ${Textoamodificar}