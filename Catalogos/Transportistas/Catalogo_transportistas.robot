*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime

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
#######################################Pantalla catalogo transportistas#######################################################################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botoncatalogos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]
${Botontransportistas}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]/ul/li[1]
${Bottonnuevoregistro}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div
${Campodescripcion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[1]/div/div/div/div[1]/input
${Textotransportista}  Castores
${Bottonguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/a[1]
${Bottonrefrescar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-equipment-transport-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i
${Caracteresinvalidos}  !"#$%&/?¡  
${38caracteres}  Pruebas Pruebas Pruebas Pruebas Pruebas Pruebas Pruebas Pruebas Pruebas  
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
${Campobuscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
${Transportista}    TS TRANSGOMEZ

*** Test Cases ***
#Función para la espera de los elementos
Usuarios con permisos a la pantalla
    Validacion de usuarios

Buscar transportista
    Transportista

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
        Scroll Element Into View    ${Botontransportistas}
        Wait Until Element Is Visible    ${Botontransportistas}
        Click Element    ${Botontransportistas} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Transportista
    Wait Until Element Is Visible    ${Campobuscar}
    Input Text    ${Campobuscar}    ${Transportista}
    Sleep    7s
    Clear Element Text    ${Campobuscar}

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