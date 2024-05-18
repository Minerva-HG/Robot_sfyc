*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Usuariotipo5}  ADELACRUZPO    
${Passtipo5}  Megacable2022*
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottoncatalogos}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[7]
${Bottonproveedores}  xpath=//span[normalize-space()='Usuarios Entregas Equipos']
${Bottonagregarnuevoregistro}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/i
${Bottonusuario}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[1]/div/div/app-user-dropdown/dx-drop-down-box/div/div/div[2]/div/div/div
${Seleccionarusuario}  xpath=//td[normalize-space()='ANGY GUADALUPE ACEVES RUVALCABA']
${Bottoncuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]/div/div/app-crew-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Seleccionarcuadrilla}  xpath=//td[normalize-space()='0003']
${Seleccionarbottonguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[4]/a[1]
${Bottoncancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[4]/a[2]
${Bottonactualizar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[4]/a[1]
${Bottoneliminar}  xpath=//a[2]
${Iconook}  xpath=(.//*[normalize-space(text()) and normalize-space(.)='¿Está seguro que desea eliminar este registro?'])[1]/following::div[8]
${Usuariomodificado}  xpath=//td[normalize-space()='ALEJANDRO GARCIA REYES']
${Cuadrillamodificada}  xpath=//td[normalize-space()='0003']
${Bottonsucursales}  xpath=//div[2]/div[2]/div/div
${Bottonparadesplieguedesesion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-header/div/header/dx-toolbar/div/div[3]/div[3]/dxi-item/div/dx-button/div/i
${Cerrarsesion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-header/div/header/dx-toolbar/div/div[3]/div[3]/dxi-item/div/div[3]/div[2]

*** Test Cases ***
#Función para la espera de los elementos
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla de usuarios entregas de equipos
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar catálogos
    Sleep   5s
    Seleccionar Usuarios Entregas Equipos
    Sleep   5s

Cancelar registro    
    Sleep   5s    
    Seleccionar agregar nuevo registro
    Sleep   5s
    Seleccionar botton para desplegar usuarios
    Sleep   5s
    Seleccionar usuario
    Sleep   5s
    Seleccionar botton cuadrilla
    Sleep   5s
    Seleccionar cuadrilla
    Sleep   5s
    Seleccionar botton cancelar
    Sleep   5s

Seleccionar primero al usuario
    Sleep   5s    
    Seleccionar agregar nuevo registro
    Sleep   5s
    Seleccionar botton cuadrilla
    Sleep   5s
    Seleccionar cuadrilla
    Sleep   5s
    Seleccionar botton guardar
    Sleep   5s

Agregar registro usuario
    Sleep   5s    
    Seleccionar agregar nuevo registro
    Sleep   5s
    Seleccionar botton para desplegar usuarios
    Sleep   5s
    Seleccionar usuario
    Sleep   5s
    Seleccionar botton cuadrilla
    Sleep   5s
    Seleccionar cuadrilla
    Sleep   5s
    Seleccionar botton guardar
    Sleep   5s

Actualizar registro
    Sleep   5s
    Seleccionar campo que se desea actualizar    
    Sleep   5s
    Seleccionar botton para desplegar usuarios
    Sleep   5s
    Seleccionar usuario modificado
    Sleep   5s
    Seleccionar botton cuadrilla
    Sleep   5s
    Seleccionar cuadrilla modificada
    Sleep   5s
    Seleccionar botton guardar

Eliminar registro
    Sleep    5s
    Seleccionar campo que se desea Eliminar
    Sleep    5s
    Seleccionar ok
    Sleep    5s

Campos vacios o null
    Sleep    5s
    Seleccionar agregar nuevo registro
    Sleep    5s
    Seleccionar botton para desplegar usuarios
    Sleep    5s
    Seleccionar botton para desplegar usuarios
    Sleep    5s
    Seleccionar botton cuadrilla
    Sleep    5s
    Seleccionar botton cuadrilla
    Sleep    5s
    Seleccionar botton guardar

Moverser entre sucursales
    Sleep    5s
    Seleccionar botton sucursales
    Sleep    5s

Usuarios tipo 5
    Sleep    10s
    Seleccionar botton para desplegar cerrar sesion
    Sleep    10s
    Seleccionar cerrar sesion
    Sleep    15s
    Ingresar usuario contrasena con usuario tipo 5
    Sleep    15s
    Seleccionar menu
    Sleep    10s
    Seleccionar catálogos
    Sleep    5s
    Seleccionar menu
    
*** Keywords ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Ingresar usuario contrasena con usuario tipo 5
    Input text    name:Username   ${Usuariotipo5}
    Input text    name:Password   ${Passtipo5}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar catálogos
    Click element  ${Bottoncatalogos}

Seleccionar Usuarios Entregas Equipos
    Click element  ${Bottonproveedores}

Seleccionar agregar nuevo registro
    Click element   ${Bottonagregarnuevoregistro} 

Seleccionar botton para desplegar usuarios
    Click element    ${Bottonusuario}

Seleccionar usuario
    Click Element    ${Seleccionarusuario}

Seleccionar botton cuadrilla
    Click Element    ${Bottoncuadrilla}

Seleccionar cuadrilla
    Click Element    ${Seleccionarcuadrilla}

Seleccionar botton guardar
    Click Element    ${Seleccionarbottonguardar}

Seleccionar botton cancelar
    Click Element    ${Bottoncancelar}

Seleccionar campo que se desea actualizar
    Click Element    ${Bottonactualizar}

Seleccionar campo que se desea Eliminar
    Click Element    ${Bottoneliminar}

Seleccionar ok
    Click Element    ${Iconook}

Seleccionar usuario modificado
    Click Element    ${Usuariomodificado}

Seleccionar cuadrilla modificada
    Click Element    ${Cuadrillamodificada}

Seleccionar botton sucursales
    Click Element    ${Bottonsucursales}

Seleccionar botton para desplegar cerrar sesion
    Click Element    ${Bottonparadesplieguedesesion}

Seleccionar cerrar sesion
    Click Element    ${Cerrarsesion}