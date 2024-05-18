*** Settings ***
Library  *** Settings ***
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
${Bottoncontrolfinancierodeequipos}    xpath=//span[contains(.,'Control Financiero de Equipos')]
############################Orden de compra#######################################
${Ordenesdecompra}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Buscarordendecompra}    xpath=//input[contains(@maxlength,'50')]
${Orden}    0940C00566422-1
${Ordendecompra}    xpath=//td[contains(.,'0940C00566422-1')]
###########################Factura######################################################
${Facturas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Factura}    xpath=//td[contains(.,'A15789')]
#############################Tipo equipo################################################
${Tiposequipos}    xpath=(//div[@class='dx-dropdowneditor-icon'])[4]
${Tipoequipo}    xpath=//td[contains(.,'002')]
##########################################Checkbox todos#####################################################
${Checkboxtodos}    xpath=//span[@class='dx-checkbox-icon']
##########################################Modelos#####################################
${Modelos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Modelo}    xpath=//td[contains(.,'2500')]
#####################################Fecha###########################################################
${Iconocalendariodesde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Noviembre}    xpath=//i[contains(@class,'dx-icon dx-icon-chevronleft')]
${Fechadesde}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/table/tbody/tr[1]/td[4]/span
${Iconocalendariohasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
######################################Reporte###########################################################
${Reportes}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Reporte}    xpath=//td[contains(.,'Traspasos')]
######################################Boton aceptar####################################################
${Botonaceptar}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[1] 
######################################Por bajas#########################################################
${Porbajas}    xpath=//td[contains(.,'Bajas')]
######################################Por altas#########################################################
${Poraltas}    xpath=//td[contains(.,'Altas')]
#####################################Notificacion#######################################################
${Notificacion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
########################################Icono por consulta##############################################
${Iconoporconsulta}    xpath=//i[@class='dx-icon dx-icon-search']
${Cajadetextobuscarserie}    xpath=//input[contains(@maxlength,'35')]
${Serie}    J3A7Q11003090    
${Cerrargrid}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div/div/i
####################################Boton aceptar grid##################################################
${Botonaceptargrid}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[2]
####################################Doble click#########################################################
${Dobleclick}    xpath=//td[contains(.,'908148')]
####################################Serie que esta en tabla equipos#####################################
${Serie213735645}    213735645
###################################Exportar excel#######################################################
${Exportarexcel}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
###################################Serie inexistente####################################################
${Serieinexistente}    213731997
###################################Notificacion aviso del sistema######################################
${Notificaciongrid}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[3]
###################################Boton limpiar########################################################
${Botonlimpiar}    xpath=(//div[contains(.,'Limpiar')])[12]
###################################Icono por archivo####################################################
${Iconoporarchivo}    xpath=//i[contains(@class,'dx-icon dx-icon-folder')]
##################################Modelo F680V90########################################################
${Buscarmodelo}    xpath=//input[contains(@maxlength,'7094')]
${TextomodeloF680V90}    F680V90
${ModeloF680V90}    xpath=//td[contains(.,'F680V90')]
##################################Por archivo###########################################################
${Tiposequiposporarchivo}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Tipoequipoporarchivo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Modelosporarchivo}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Reportesporarchivo}    xpath=(//div[@class='dx-dropdowneditor-icon'])[4]
${Botonseleccionarelarchivo}    xpath=//span[contains(.,'Seleccionar el archivo')]
${Botonaceptarporarchivo}    xpath=//span[contains(.,'Aceptar')]
${Archivo}    C:\Proyectos\Robot_sfyc\Inventarios\Operaciones Equipos\Control financiero de equipos\Equipos.csv

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla control financiero de equipos
    Menu
    Operaciones equipos
    Control financiero de equipos

Reporte por traspasos
    Ordenes de compra
    Orden de compra
    Facturas
    Factura
    Tipos equipos
    Tipo equipo
    Checkbox todos
    Modelos
    Modelo
    Checkbox todos
    Fecha desde
    Fecha hasta
    Reportes
    Reporte
    Boton aceptar

Exportar todo
    Exportar excel

Reporte por bajas
    ##Cerrar notificacion
    Reportes
    Por bajas
    Boton aceptar

Reporte por altas
    ##Cerrar notificacion
    Reportes
    Por altas
    Boton aceptar
    Cerrar notificacion

Consulta
    Icono por consulta
    Doble click

Serie que esta en la tabla equipos
    Serie 213735645
    Cerrar notificacion grid

Serie que no esta en la tabla equipos
    Serie inexistente
    Cerrar notificacion grid
    Cerrar grid

Boton Limpiar
    Limpiar

Por archivo
    Ordenes de compra
    Orden de compra
    Facturas
    Factura
    Tipos equipos
    Tipo equipo
    Checkbox todos
    Fecha desde
    Fecha hasta
    Reportes
    Reporte
    Boton aceptar
    Icono por archivo
    Checkbox todos
    Modelos por archivo
    Modelo F680V90
    Archivo
    Boton aceptar

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

Control financiero de equipos
    Click Element When Visible    ${Bottoncontrolfinancierodeequipos}

Ordenes de compra
    Click Element When Visible    ${Ordenesdecompra}

Orden de compra
    Sleep    10s
    #Wait Until Page Contains Element    ${Buscarordendecompra}
    Input Text When Element Is Visible    ${Buscarordendecompra}    ${Orden}
    Click Element When Visible    ${Ordendecompra}

Facturas
    Click Element When Visible    ${Facturas}

Factura
    Sleep    10s
    Wait Until Page Contains Element    ${Factura}
    Click Element When Visible    ${Factura}

Tipos equipos
    Click Element When Visible    ${Tiposequipos}

Tipo equipo
    Sleep    5s
    Click Element When Visible    ${Tipoequipo}

Checkbox todos
    Click Element When Visible    ${Checkboxtodos}

Modelos
    Click Element When Visible    ${Modelos}

Modelo
    Click Element When Visible    ${Modelo}

Fecha desde
    Click Element When Visible    ${Iconocalendariodesde}
    Sleep    5s
    Click Element When Visible    ${Noviembre}
    Sleep    3s
    Click Element When Visible    ${Noviembre}
    Sleep    5s
    Click Element When Visible    ${Noviembre}
    Sleep    5s
    Click Element When Visible    ${Fechadesde}

Fecha hasta
    Click Element When Visible    ${Iconocalendariohasta}
    Sleep    5s
    Click Element When Visible    ${Iconocalendariohasta}

Reportes
    Sleep    5s
    Click Element When Visible    ${Reportes}

Reporte
    Click Element When Visible    ${Reporte}

Boton aceptar
    Sleep    5s
    Click Element When Visible    ${Botonaceptar}

Por bajas
    Click Element When Visible    ${Porbajas}

Por altas
    Click Element When Visible    ${Poraltas}

Cerrar notificacion
    Sleep    17s
    Click Element When Visible    ${Notificacion}
    Sleep    7s

Icono por consulta
    Click Element When Visible    ${Iconoporconsulta}
    #Wait Until Page Does Not Contain Element    ${Cajadetextobuscarserie}
    Input Text When Element Is Visible    ${Cajadetextobuscarserie}    ${Serie}
    Sleep    5s
    Click Element When Visible    ${Botonaceptargrid}

Cerrar grid
    Sleep    10s
    Click Element When Visible    ${Cerrargrid}

Doble click
    Sleep    10s
    Click Element When Visible    ${Dobleclick}
    Click Element When Visible    ${Dobleclick}

Serie 213735645
    Sleep    5s
    Click Element When Visible    ${Iconoporconsulta}
    Input Text When Element Is Visible    ${Cajadetextobuscarserie}    ${Serie213735645}
    Sleep    5s
    Click Element When Visible    ${Botonaceptargrid}

Exportar excel
    Sleep    17s
    Click Element When Visible    ${Exportarexcel}

Serie inexistente
    Input Text When Element Is Visible    ${Cajadetextobuscarserie}    ${Serieinexistente}
    Sleep    5s
    Click Element When Visible    ${Botonaceptargrid}

Limpiar
    Click Element When Visible    ${Botonlimpiar}

Cerrar notificacion grid
    Sleep    15s
    Click Element When Visible    ${Notificaciongrid}
    Sleep    7s

Icono por archivo
    Sleep    10s
    Click Element When Visible    ${Iconoporarchivo}
    Sleep    5s

Modelo F680V90 
    Sleep    5s
    Click Element When Visible    ${Buscarmodelo}
    Input Text When Element Is Visible    ${Buscarmodelo}    ${TextomodeloF680V90}
    Click Element When Visible    ${ModeloF680V90}

Archivo
    Click Element When Visible    ${Botonseleccionarelarchivo}
    #Choose File    ${Botonseleccionarelarchivo}    ${Archivo}

Boton aceptar por archivo
    Sleep    15s
    Click Element When Visible    ${Botonaceptarporarchivo}

Tipos equipos por archivo
    Click Element When Visible    ${Tiposequiposporarchivo}

Tipo equipo por archivo
    Click Element When Visible    ${Tipoequipoporarchivo}

Modelos por archivo
    Click Element When Visible    ${Modelosporarchivo}

Reportes por archivo
    Sleep    5s
    Click Button When Visible    ${Reportesporarchivo}

