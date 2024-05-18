*** Settings ***
Documentation    Control financiero de equipos
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    SeleniumLibrary
Library    XML
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #MAHUERTAS    SNHERRERAV    joriospe                                                                                               
@{passL}=    Create List    Mega12345    #Marco@2024    Mega1234    Mega12345                                                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#################Pantalla control financiero de equipos########################   
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Botoncontrolfinancierodeequipos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[10]
${Botonadministraciondeanis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[9]
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
${Iconoporconsulta}    xpath=//i[contains(@class,'dx-icon dx-icon-search')]    
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
${Botonseleccionarelarchivo}    xpath=//span[@class='dx-button-text'][contains(.,'Seleccionar el archivo')]
${Botonaceptarporarchivo}    xpath=//span[contains(.,'Aceptar')]
${Archivo}    C:\Proyectos\Robot_sfyc\Inventarios\Operaciones Equipos\Control financiero de equipos\Equipos.csv
#################################Notificacion no se encontraron datos#############################################
${Notificacion_no_se_econtraron_datos}    xpath=//div[2]/div/div/div/div[3]/div/div/div/div/i

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

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
    Reportes
    Por bajas
    Boton aceptar

Reporte por altas
    Validando si existe notificacion
    Reportes
    Por altas
    Boton aceptar
    Validando si existe notificacion

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
    Cerrar notificacion grid
    Icono por archivo
    Archivo
    Boton aceptar

*** Keyword ***
Validacion de usuarios
    #FOR    ${counter}    IN RANGE    1     4 
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
        Scroll Element Into View    ${Botoncontrolfinancierodeequipos}
        Sleep    7s
        Click Element    ${Botoncontrolfinancierodeequipos} 
    #IF    ${counter} <= ${2}
        #Sleep    10s
        #Close Browser
    #END
   END

Ordenes de compra
    Wait Until Element Is Visible    ${Ordenesdecompra}
    Click Element    ${Ordenesdecompra}

Orden de compra
    Sleep    15s
    #Wait Until Page Contains Element    ${Buscarordendecompra}
    Input Text    ${Buscarordendecompra}    ${Orden}
    Wait Until Element Is Visible    ${Ordendecompra}
    Click Element    ${Ordendecompra}

Facturas
    Wait Until Element Is Visible    ${Facturas}
    Click Element    ${Facturas}

Factura
    Sleep    25s
    Wait Until Page Contains Element    ${Factura}
    Click Element    ${Factura}

Tipos equipos
    Wait Until Element Is Visible    ${Tiposequipos}
    Click Element    ${Tiposequipos}

Tipo equipo
    Sleep    7s
    Click Element    ${Tipoequipo}

Checkbox todos
    Wait Until Element Is Visible    ${Checkboxtodos}
    Click Element    ${Checkboxtodos}

Modelos
    Wait Until Element Is Visible    ${Modelos}
    Click Element    ${Modelos}

Modelo
    Wait Until Element Is Visible    ${Modelo}
    Click Element    ${Modelo}

Fecha desde
    Wait Until Element Is Visible    ${Iconocalendariodesde}
    Click Element    ${Iconocalendariodesde}
    Sleep    5s
    Click Element    ${Noviembre}
    Sleep    3s
    Click Element    ${Noviembre}
    Sleep    5s
    Click Element    ${Noviembre}
    Sleep    5s
    Click Element    ${Fechadesde}

Fecha hasta
    Wait Until Element Is Visible    ${Iconocalendariohasta}
    Click Element    ${Iconocalendariohasta}
    Sleep    5s
    Click Element    ${Iconocalendariohasta}

Reportes
    Sleep    5s
    Click Element    ${Reportes}

Reporte
    Wait Until Element Is Visible    ${Reporte}
    Click Element    ${Reporte}

Boton aceptar
    Sleep    15s
    Click Element    ${Botonaceptar}
    

Por bajas
    Wait Until Element Is Visible    ${Porbajas}
    Click Element    ${Porbajas}

Por altas
    Wait Until Element Is Visible    ${Poraltas}
    Click Element    ${Poraltas}

Cerrar notificacion
    Sleep    17s
    Click Element    ${Notificacion}
    Sleep    7s

Icono por consulta
    Sleep    30s
    ${Bandera_notificacion_aviso_sistema}=    Run Keyword And Return Status    Click Element    ${Notificacion}
    IF    '${Bandera_notificacion_aviso_sistema}' == True
        Sleep    5s
    END
    Click Element    ${Iconoporconsulta}
    Sleep    5s
    Input Text    ${Cajadetextobuscarserie}    ${Serie}
    Sleep    10s
    Click Element    ${Botonaceptargrid}

Cerrar grid
    Sleep    10s
    Click Element    ${Cerrargrid}

Doble click
    Sleep    20s
    Click Element    ${Dobleclick}
    Wait Until Element Is Visible    ${Dobleclick}
    Click Element    ${Dobleclick}

Serie 213735645
    Sleep    5s
    Click Element    ${Iconoporconsulta}
    Sleep    5s
    Input Text   ${Cajadetextobuscarserie}    ${Serie213735645}
    Sleep    15s
    Click Element    ${Botonaceptargrid}

Exportar excel
    Sleep    20s
    ${Bandera_notificacion_aviso_sistema}=    Run Keyword And Return Status    Click Element    ${Notificacion}
    IF    '${Bandera_notificacion_aviso_sistema}' == True
        Sleep    5s
    END
    Sleep    5s
    Click Element    ${Exportarexcel}

Serie inexistente
    Wait Until Element Is Visible    ${Cajadetextobuscarserie}
    Input Text    ${Cajadetextobuscarserie}    ${Serieinexistente}
    Sleep    5s
    Click Element    ${Botonaceptargrid}

Limpiar
    Wait Until Element Is Visible    ${Botonlimpiar}    
    Click Element    ${Botonlimpiar}

Cerrar notificacion grid
    Sleep    20s
    Click Element    ${Notificaciongrid}
    Sleep    7s

Icono por archivo
    Sleep    10s
    Click Element    ${Iconoporarchivo}
    Sleep    5s

Modelo F680V90 
    Sleep    5s
    Click Element    ${Buscarmodelo}
    Input Text    ${Buscarmodelo}    ${TextomodeloF680V90}
    Wait Until Element Is Visible    ${ModeloF680V90}
    Click Element    ${ModeloF680V90}

Archivo
    Wait Until Element Is Visible    ${Botonseleccionarelarchivo}
    Click Element    ${Botonseleccionarelarchivo}
    #Choose File    ${Botonseleccionarelarchivo}    ${Archivo}

Boton aceptar por archivo
    Sleep    20s
    Click Element    ${Botonaceptarporarchivo}

Tipos equipos por archivo
    Sleep    5s
    Click Element    ${Tiposequiposporarchivo}

Tipo equipo por archivo
    Wait Until Element Is Visible    ${Tipoequipoporarchivo}
    Click Element    ${Tipoequipoporarchivo}

Modelos por archivo
    Wait Until Element Is Visible    ${Modelosporarchivo}
    Click Element    ${Modelosporarchivo}

Reportes por archivo
    Sleep    5s
    Click Button    ${Reportesporarchivo}

Validando si existe notificacion
    Sleep    10s
    ${Bandera_notificacion_aviso_sistema}=    Run Keyword And Return Status    Click Element    ${Notificacion}
    IF    '${Bandera_notificacion_aviso_sistema}' == True
        Sleep    5s
    END
