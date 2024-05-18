*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
#Library    RPA.Robocloud.Items
Library    RPA.Excel.Files
Library    RPA.Dialogs

*** Variables ***
#################Pantalla Datos facturacion y reparacion########################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${BottonDatosfacturacionyreparacion}    xpath=//span[contains(.,'Datos Facturación y Reparación')]
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
${Regresarmenu}    xpath=//i[@class='dx-icon dx-icon-menu']
${Transacciones}    xpath=//span[contains(.,'Transacciones')]
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
${Iconounitario}    xpath=(//i[contains(@class,'dx-icon dx-icon-menu')])[2]
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
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla Datos facturacion y reparacion
    Menu
    Operaciones equipos
    Datos facturacion y reparacion

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
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}
    Click Element If Visible   name:button

Menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Operaciones equipos
    Click element  ${Bottonoperacionesequipos}

Datos facturacion y reparacion
    Click Element When Visible    ${BottonDatosfacturacionyreparacion}

Cargar por archivo    
    Click Element When Visible    ${Iconocargarporarchivo}
    Click Element When Visible    ${Tiposdeequipos}
    Click Element When Visible    ${Equipo}
    Click Element When Visible    ${Botonseleccionarelarchivo}

Boton aceptar
    Sleep    15s
    Click Element When Visible    ${Botonaceptar}

Cerrar Notificacion
    #Wait Until Page Contains Element    ${Notificacion}
    Sleep    7s
    Click Element When Visible    ${Notificacion}

Transaccion
    Click Element When Visible    ${Regresarmenu}
    Click Element When Visible    ${Transacciones}
    Wait Until Page Contains Element    ${Checkboxmostrarpendientes}
    Click Element When Visible    ${Checkboxmostrarpendientes}
    Sleep    5s
    Click Element When Visible    ${Transaccion}
    Click Element When Visible    ${Botonejecutar}
    Sleep    3s
    Click Element When Visible    ${Notificaciontransaccion}
    Sleep    10s
    Click Element When Visible    ${Notificaciontransaccion}

Regresar a la pantalla datos facturacion y reparacion de equipos
    Click Element When Visible    ${Regresarmenu}
    Click Element When Visible    ${Bottonoperacionesequipos}
    Click Element When Visible    ${BottonDatosfacturacionyreparacion}

Orden de compra
    Click Element When Visible    ${Ordenesdecompra}
    #Wait Until Page Contains Element    ${Ordendecompra}
    Sleep    15s
    Click Element When Visible    ${Ordendecompra}

Factura proveedor
    Click Element When Visible    ${Facturasproveedor}
    Sleep    5s
    Click Element When Visible    ${Proveedor}

Refrescar
    Click Element When Visible    ${Iconorefrescar}

Icono exportar todo
    Sleep    7s
    Click Element When Visible    ${Iconoexcel}
    
Icono unitario
    Click Element When Visible    ${Iconounitario}

Tipos de equipos
    Click Element When Visible    ${Tiposdeequipos}

Tipo de equipo
    Click Element When Visible    ${Tipodeequipo}

Serie
    Input Text When Element Is Visible    ${Campotextoserie}    ${Serie}
    Click Element When Visible    ${Buscarserie}

Limpiar
    Sleep    15s
    Click Element When Visible    ${Botonlimpiar}

Boton cancelar
    Sleep    3s
    Click Element When Visible    ${Botoncancelar}