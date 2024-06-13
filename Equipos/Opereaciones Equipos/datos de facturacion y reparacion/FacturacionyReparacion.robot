*** Settings ***
Documentation    Datos facturación y reparación equipos
Library    SeleniumLibrary
Library    XML
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #VMAGALLANESI    DGONZALEZR    LUHERNANDEZHE    RCAMINOS    joriospe                                                                                  
@{passL}=    Create List    Mega12345    #Megacable2023    Megacable.2023    Mega2023    metro1234    Mega12345                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#################Pantalla Datos facturacion y reparacion########################   
${Botonequipos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}     xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Botonadministraciondeanis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[9]
${BotonDatosfacturacionyreparacion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[9]
##################Facturar por archivo############################################
${Iconocargarporarchivo}    xpath=//i[contains(@class,'dx-icon dx-icon-folder')]
${Tiposdeequipos}    xpath=(//div[@class='dx-dropdowneditor-icon'])[2]
${Equipo}    xpath=(//td[contains(.,'SET TOPS')])[1]
${Botonseleccionarelarchivo}    xpath=//span[contains(.,'Seleccionar el archivo')]
##################################Boton aceptar###########################################
${Botonaceptar}    xpath=//span[contains(.,'Aceptar')]
##################################Notificacion############################################
${Notificacion}    xpath=//i[@class='dx-icon dx-icon-close']
##################################Transacciones################################################
${Regresarmenu}    xpath=//i[contains(@class,'dx-icon dx-icon-chevrondoubleleft')]
${Transacciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[2]
${Checkboxmostrarpendientes}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Transaccion}    xpath=//td[contains(.,'Datos facturación y reparación equipos')]
${Botonejecutar}    xpath=//div[@class='dx-button-content'][contains(.,'Ejecutar')]
${Notificaciontransaccion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
##############################Consulta datos de reparacion#######################################
${Ordenesdecompra}    xpath=//*[@id="equipmentProviderPurchaseOrderDropdown"]/div[1]/div/div[2]/div
${Ordendecompra}    xpath=//td[contains(.,'1592-0002317')]
${Facturasproveedor}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Proveedor}    xpath=//td[contains(.,'INV1STD014357')]
##################################Refrescar######################################################
${Iconorefrescar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
##################################Icono excel####################################################
${Iconoexcel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
##################################Icono unitario#################################################
${Iconounitario}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Tiposdeequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Tipodeequipo}    xpath=(//td[contains(.,'SET TOPS')])[1]
${Campotextoserie}    xpath=//input[contains(@maxlength,'35')]
${Serie}    M91314EM0005    
${Buscarserie}    xpath=//i[contains(@class,'dx-icon dx-icon-search')]
###################################Icono limpiar#################################################
${Botonlimpiar}    xpath=//span[contains(.,'Limpiar')]
##################################Icono cancelar#################################################
${Botoncancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios


Facturar por archivo
    Cargar por archivo
    Boton aceptar
    Cerrar Notificacion

Transacciones
    Transaccion

Consulta datos de reparacion
    Regresar a la pantalla datos facturacion y reparacion de equipos
    Orden de compra
    Factura proveedor

Exportar todo
    Icono exportar todo

Icono refrescar
    Refrescar

Unitario
    Icono unitario
    Tipos de equipos
    Tipo de equipo
    Serie

Boton limpiar
    Limpiar

Boton cancelar
    Boton cancelar

*** Keyword ***
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
        Wait Until Element Is Visible    ${Botonoperacionesequipos}
        Click Element    ${Botonoperacionesequipos}
        Sleep    5s
        Scroll Element Into View    ${Botonadministraciondeanis}
        Sleep    5s
        Click Element    ${BotonDatosfacturacionyreparacion} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Cargar por archivo 
    Wait Until Element Is Visible    ${Iconocargarporarchivo}   
    Click Element    ${Iconocargarporarchivo}
    Wait Until Element Is Visible    ${Tiposdeequipos}
    Click Element    ${Tiposdeequipos}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}
    Wait Until Element Is Visible    ${Botonseleccionarelarchivo}    
    Click Element    ${Botonseleccionarelarchivo}

Boton aceptar
    Sleep    15s
    Click Element    ${Botonaceptar}

Cerrar Notificacion
    Sleep    12s
    Click Element    ${Notificacion}

Transaccion
    Wait Until Element Is Visible    ${Regresarmenu}
    Click Element    ${Regresarmenu}
    Wait Until Element Is Visible    ${Botonequipos}
    Click Element    ${Botonequipos}
    Wait Until Element Is Visible    ${Transacciones}
    Click Element    ${Transacciones}
    Sleep    7s
    Click Element    ${Checkboxmostrarpendientes}
    Sleep    5s
    Click Element    ${Transaccion}
    Wait Until Element Is Visible    ${Botonejecutar}
    Click Element    ${Botonejecutar}
    Sleep    3s
    Click Element    ${Notificaciontransaccion}
    Sleep    10s
    Click Element    ${Notificaciontransaccion}

Regresar a la pantalla datos facturacion y reparacion de equipos
    Wait Until Element Is Visible    ${Regresarmenu}
    Click Element    ${Regresarmenu}
    Wait Until Element Is Visible    ${Botonequipos}
    Click Element    ${Botonequipos}
    Wait Until Element Is Visible    ${Botonoperacionesequipos}
    Click Element     ${Botonoperacionesequipos}
    Sleep    5s
    Scroll Element Into View    ${Botonadministraciondeanis}
    Wait Until Element Is Visible    ${BotonDatosfacturacionyreparacion}
    Click Element    ${BotonDatosfacturacionyreparacion}

Orden de compra
    Sleep    5s
    Click Element    ${Ordenesdecompra}
    #Wait Until Page Contains Element    ${Ordendecompra}
    Sleep    15s
    Click Element    ${Ordendecompra}

Factura proveedor
    Wait Until Element Is Visible    ${Facturasproveedor}
    Click Element    ${Facturasproveedor}
    Sleep    5s
    Click Element    ${Proveedor}

Refrescar
    Wait Until Element Is Visible    ${Iconorefrescar}
    Click Element    ${Iconorefrescar}

Icono exportar todo
    Sleep    7s
    Click Element    ${Iconoexcel}
    
Icono unitario
    Wait Until Element Is Visible    ${Iconounitario}
    Click Element    ${Iconounitario}

Tipos de equipos
    Wait Until Element Is Visible    ${Tiposdeequipos}
    Click Element   ${Tiposdeequipos}

Tipo de equipo
    Wait Until Element Is Visible    ${Tipodeequipo}
    Click Element    ${Tipodeequipo}

Serie
    Sleep    5s
    Input Text    ${Campotextoserie}    ${Serie}
    Wait Until Element Is Visible    ${Buscarserie}
    Click Element    ${Buscarserie}

Limpiar
    Sleep    15s
    Click Element    ${Botonlimpiar}

Boton cancelar
    Sleep    3s
    Click Element    ${Botoncancelar}
