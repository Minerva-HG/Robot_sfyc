*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #MAGONZALEZ    LPLOZANO    joriospe                                                                                              
@{passL}=    Create List    Mega12345    #Magcbegs1    Chatito.    Mega12345                                                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${Usuariotipo5}  ADELACRUZPO    
${Passtipo5}  Megacable2022*
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botoncatalogos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]
${Botonusuariosentrega}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]/ul/li[4]
${Bottonagregarnuevoregistro}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/i
${Bottonusuario}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[1]/div/div/app-user-dropdown/dx-drop-down-box
${Seleccionarusuario}  xpath=//td[contains(.,'AORTEGAD')]
${Bottoncuadrilla}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]/div/div/app-crew-dropdown/dx-drop-down-box
${Seleccionarcuadrilla}  xpath=//td[normalize-space()='0003']
${Seleccionarbottonguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[4]/a[1]
${Bottoncancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[4]/a[2]
${Bottonactualizar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-user-signature-digital-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[4]/a[1]
${Bottoneliminar}  xpath=//a[2]
${Iconook}  xpath=(.//*[normalize-space(text()) and normalize-space(.)='¿Está seguro que desea eliminar este registro?'])[1]/following::div[8]
${Usuariomodificado}  xpath=//td[contains(.,'CAROSALESL')]
${Cuadrillamodificada}  xpath=//td[normalize-space()='0003']
${Bottonsucursales}  xpath=//div[2]/div[2]/div/div
${Bottonparadesplieguedesesion}  xpath=//span[contains(@class,'username-label')]
${Cerrarsesion}  xpath=//span[contains(.,'Cerrar sesión')]
${Si}    xpath=//div[@class='dx-button-content'][contains(.,'Si')]

*** Test Cases ***
#Función para la espera de los elementos
Usuarios que tienen permisos a la pantalla
    Validacion de usuarios

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

Moverse entre sucursales
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
Validacion de usuarios
    #FOR    ${counter}    IN RANGE    1     9 
    FOR    ${counter}    IN RANGE    1     2
        Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")    
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text    name:Password     ${passL}[${counter}]
        Wait Until Element Is Visible    ${Botondominio}
        Click Element    ${Botondominio}
        Wait Until Element Is Visible    ${SFyC}
        Click Element    ${SFyC}
        Wait Until Element Is Visible    name:button
        Click Element    name:button
        Sleep    10s
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botoncatalogos}
        Click Element    ${Botoncatalogos}
        Sleep    5s
        Scroll Element Into View    ${Botonusuariosentrega}
        Wait Until Element Is Visible    ${Botonusuariosentrega}
        Click Element    ${Botonusuariosentrega} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Ingresar usuario contrasena con usuario tipo 5
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element     ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC} 
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text    name:Username   ${Usuariotipo5}
    Input Text    name:Password   ${Passtipo5}
    Click Element   name:button

Seleccionar menu
    Click element  ${Botonequipos}

Seleccionar catálogos
    Click element  ${Botoncatalogos}

Seleccionar Usuarios Entregas Equipos
    Sleep    5s
    Wait Until Element Is Visible    ${Botonusuariosentrega}
    Click element  ${Botonusuariosentrega}

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
    Sleep    10s
    Click Element    ${Si}