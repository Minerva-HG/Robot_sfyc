*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime

*** Variables ***
##############################Validación de usuarios#########################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #MAGONZALEZ    LPLOZANO    joriospe                                                                                              
@{passL}=    Create List    Mega12345    #Magcbegs1    Chatito.    Mega12345                                                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
${Botonequipos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
#######################################Pantalla catalogo transportistas#######################################################################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botoncatalogos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]
${Botontalleres}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]/ul/li[2]
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
#####################################Ordenar descripción######################################################################
${Registro_ordenado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-equipment-catalog-workshop-grid/div/dx-data-grid/div/div[5]/div/table/tbody/tr/td[1]/div[1]
#####################################Filtro buscar######################################################################################
${Campo_buscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]   
${Articulo_ha_buscar}    Moto E7
######################################Cambio de sucursal###########################################################################
${Combo_sucursales}    xpath=//input[contains(@aria-haspopup,'true')]
${Sucursal}    xpath=//td[contains(.,'Los Mochis')]    

*** Test Cases ***
#Función para la espera de los elementos
Usuarios que tienen permiso a la pantalla
    Validacion de usuarios

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

Ordenar el registro
    Registro ordenado

Campo buscar
    Buscar articulo

Sucursal
    Cambio de sucursal
    
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
        Scroll Element Into View    ${Botontalleres}
        Wait Until Element Is Visible    ${Botontalleres}
        Click Element    ${Botontalleres} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

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

Registro ordenado
    Sleep    5s
    Click Element    ${Registro_ordenado}

Buscar articulo
    Wait Until Element Is Visible    ${Campo_buscar}
    Input Text    ${Campo_buscar}    ${Articulo_ha_buscar}
    Sleep    5s
    Clear Element Text    ${Campo_buscar}

Cambio de sucursal
    Sleep    5s
    Click Element    ${Combo_sucursales}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Sleep    5s