*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML

*** Variables ***
#######################################Validación de usuarios######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #MAGONZALEZ    LPLOZANO    joriospe                                                                                              
@{passL}=    Create List    Mega12345    #Magcbegs1    Chatito.    Mega12345                                                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
#######################################Pantalla catalogo de proveedores#######################################################################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botoncatalogos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]
${Botonproveedores}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]/ul/li[3]
${Bottonagregar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div    
${Campodescripcion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/div/div/div/div[1]/input
${Nombreproveedor}  CISCO SA DE CV
${Bottonguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/a[1]
${Maximodecaracteres}  ijjiajdljiljlijfiejfiejifjifjijwfielfjewiljfewñfjwejfweofjwerifjrijfiwjpofjwpjfiwp
${Proveedorexistente}  COMNET SA DE CV
${Caracteresnovalidos}   !"#$%&/?¡
${Columnaid}  xpath=//*[@id="dx-col-1"]
${Columnadescripcion}  xpath=//*[@id="dx-col-2"]
${Iconoactualizar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i
${Campobuscar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[3]/div/div/div/div[1]/input
${Provedorabuscar}  CISCO SA DE CV
${Iconomodificar}  xpath=//a[contains(@href, '#')] 
${Limpiarbusqueda}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[3]/div/div/div/div[2]/span/span
${Registroamodificar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]
${Teclearproveedor}  LENOVO
${Campodescripcionmodificar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/div/div/div/div[1]/input
${Guardarmodificacion}  xpath=//a[contains(@href, '#')]
${Nuevoproveedorabuscar}  LENOVO
${Iconoeliminar}  xpath=//a[2]
${Bottonok}  xpath=(.//*[normalize-space(text()) and normalize-space(.)='¿Está seguro que desea eliminar este registro?'])[1]/following::span[1]
##############################################Refrescar datos#####################################################
${Icono_refrescar}    xpath=//i[contains(@class,'dx-icon dx-icon-plus')]

*** Test Cases ***
#Función para la espera de los elementos
Usuarios que tienen permisos a la pantalla
    Validacion de usuarios

Registrar proveedores
    Sleep   5s
    Seleccionar botton agregar
    Sleep   5s
    Seleccionar campo descripcion
    Sleep   5s
    Teclear nombre del proveedor
    Sleep   5s
    Seleccionar botton guardar
    Sleep   5s
    Refrescar
    
Maximo de caracteres
    Sleep    5s
    Seleccionar botton agregar
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear maximo de caracteres
    Sleep    5s
    Seleccionar botton guardar
    Sleep    5s

Registrar campo existente
    Sleep    5s
    Seleccionar botton agregar
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear proveedor existente
    Sleep    5s
    Seleccionar botton guardar

Caracteres no validos
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Seleccionar limpiar texto
    Sleep    5s
    Teclear caracteres no validos
    Sleep    5s
    Seleccionar botton guardar
    Sleep    5s

Ordenar el registro
    Sleep    5s
    Seleccionar la columna id
    Sleep    5s
    Seleccionar la columna id
    Sleep    5s
    Seleccionar la columna descripcion
    Sleep    5s
    Seleccionar la columna descripcion
    Sleep    5s

Buscar
    Sleep    5s
    Seleccionar campo buscar
    Sleep    5s
    Teclear proveedor a buscar
    #Sleep    5s
    #Limpiar busqueda
    #Sleep    5s

Modificar
    Sleep    5s
    Seleccionar icono modificar
    Sleep    5s
    Teclear proveedor 
    Sleep    5s
    Seleccionar botton guardar modificacion
    Sleep    7s
    Limpiar busqueda
    Sleep    5s
    Seleccionar campo buscar
    Sleep    5s
    Teclear nuevo proveedor a buscar

Eliminar
    Sleep    5s
    Seleccionar icono Eliminar
    Sleep    5s
    Presionar botton ok
    Sleep    3s

Refrescar
    Actualizar datos

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
        Scroll Element Into View    ${Botonproveedores}
        Wait Until Element Is Visible    ${Botonproveedores}
        Click Element    ${Botonproveedores} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END 


Seleccionar botton agregar
    Click element   ${Bottonagregar}

Seleccionar campo descripcion
    Click Element   ${Campodescripcion}

Teclear nombre del proveedor
    Input Text    ${Campodescripcion}    ${Nombreproveedor}

Seleccionar botton guardar
    Click Element    ${Bottonguardar}

Teclear maximo de caracteres
    Input Text    ${Campodescripcion}    ${Maximodecaracteres}

Teclear proveedor existente
    Input Text    ${Campodescripcion}    ${Proveedorexistente}
    
Seleccionar limpiar texto
    Clear Element Text    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/div/div/div/div[1]/input

Teclear caracteres no validos
    Input Text    ${Campodescripcion}    ${Caracteresnovalidos}

Seleccionar la columna id
    Click Element    ${Columnaid}

Seleccionar la columna descripcion
    Click Element    ${Columnadescripcion}

Refrescar
    Click Element    ${Iconoactualizar}

Seleccionar campo buscar
    Click Element    ${Campobuscar}

Teclear proveedor a buscar
    Input Text    ${Campobuscar}    ${Provedorabuscar}

Seleccionar icono modificar
    Click Element    ${Iconomodificar}

Limpiar busqueda
    Click Element    ${Limpiarbusqueda}

Seleccionar registro a modificar
    Click Element    ${Registroamodificar}

Teclear proveedor
    Input Text    ${Campodescripcionmodificar}    ${Teclearproveedor}

Seleccionar botton guardar modificacion
    Click Element    ${Guardarmodificacion}

Teclear nuevo proveedor a buscar
    Input Text    ${Campobuscar}    ${Nuevoproveedorabuscar}

Seleccionar icono Eliminar
    Click Element    ${Iconoeliminar}

Presionar botton ok
    Click Element    ${Bottonok}

Actualizar datos
    Wait Until Element Is Visible    ${Icono_refrescar}
    Click Element    ${Icono_refrescar}