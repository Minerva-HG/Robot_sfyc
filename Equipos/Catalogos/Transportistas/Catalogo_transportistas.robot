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
${Bottontransportistas}  xpath=//span[normalize-space()='Transportistas']
${Bottonnuevoregistro}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div
${Campodescripcion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[1]/div/div/div/div[1]/input
${Textotransportista}  Castores
${Bottonguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/a[1]
${Bottonrefrescar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i
${Caracteresinvalidos}  !"#$%&/?¡  
${38caracteres}  Ella o el no te ama, pero si permite los mas de 65 caracteres si te ama crack  
${Iconoeliminarregistro}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/a[2]
${Iconomodificar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/a[1]
${Iconocancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/a[2]
${Iconook}  xpath=/html/body/div/div/div/div[2]/div/div[2]/div[1]/div/div
${Bottonmodificar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/a[1]
${Nuevadescripcion}  Demare
${Campodescripcion2}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[1]/div/div/div/div[1]/input
${Bottonguardarmodificacion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]/td[2]/a[1]
${Transportistaduplicado}  POTOSINOS
${Iconosucursal}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-header/div/header/dx-toolbar/div/div[3]/div[1]/div/app-branch-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${Sucursal}  xpath=//*[@id="dx-8e233988-ab8e-917c-2ae9-a571d63ec25f"]/div/dx-data-grid/div/div[5]/div/table/tbody/tr[2]/td[2]/div/div[2]/div/div/div[1]/input

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
    Seleccionar catálogos
    Sleep   3s
    Seleccionar transportistas

Alta transportista
    Sleep    10s
    Seleccionar botton nuevo registro
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear nombre del transportista
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

No mas de 65 Caracteres
    Seleccionar campo descripcion
    Sleep    5s
    Teclear mas de 38 caracteres alfanumericos
    Sleep    5s
    Seleccionar botton guardar
    Sleep    5s

Eliminar registro
    Seleccionar icono cancelar
    Sleep    5s
    Seleccionar icono eliminar registro
    Sleep    5s    
    Seleccionar ok
    
Modificar registro
    Sleep    5s
    Seleccionar botton modificar
    Sleep    5s
    Teclear nueva descripcion
    Sleep    5s
    Seleccionar botton guardar modificacion
    Sleep    5s

Ingresar campo con nombre duplicado
    Sleep    5s
    Seleccionar botton nuevo registro
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear nombre del transportista duplicado
    Sleep    5s
    Seleccionar botton guardar
    Sleep    3s
    Refrescar

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

Seleccionar transportistas
    Click element  ${Bottontransportistas}

Seleccionar botton nuevo registro
    Click Element   ${Bottonnuevoregistro}

Seleccionar campo descripcion
    Click Element   ${Campodescripcion}

Teclear nombre del transportista
    Input Text    ${Campodescripcion}    ${Textotransportista}

Seleccionar botton guardar
    Click Element    ${Bottonguardar}

Refrescar
    Click Element    ${Bottonrefrescar}

Teclear caracteres invalidos
    Input Text    ${Campodescripcion}    ${Caracteresinvalidos}

Seleccionar limpiar texto
    Clear Element Text  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[1]/div/div/div/div[1]/input

Teclear mas de 38 caracteres alfanumericos
    Input Text    ${Campodescripcion}    ${38caracteres}

Seleccionar icono eliminar registro
    Click Element    ${Iconoeliminarregistro}

Seleccionar icono modificar
    Click Element    ${Iconomodificar}

Seleccionar icono cancelar
    Click Element    ${Iconocancelar}

Seleccionar ok
    Click Element    ${Iconook}

Seleccionar botton modificar
    Click Element    ${Bottonmodificar}
    
Teclear nueva descripcion
    Input Text    ${Campodescripcion2}    ${Nuevadescripcion}

Seleccionar botton guardar modificacion
    Click Element    ${Bottonguardarmodificacion}

Teclear nombre del transportista duplicado
    Input Text    ${Campodescripcion}    ${Transportistaduplicado}
    
Seleccionar icono sucursal
    Click Element    ${Iconosucursal}

Seleccionar sucursal
    Click Element    ${Sucursal}