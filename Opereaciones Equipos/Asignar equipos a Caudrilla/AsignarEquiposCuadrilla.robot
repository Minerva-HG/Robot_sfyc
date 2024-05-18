*** Settings ***
Documentation    Asignar equipos a cuadrilla
Library    XML
Library    SeleniumLibrary

*** Variables ***
#######################################Variables de inicio de sesion tanto para dev como para QA######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List     joriospe    #AHERNANDEZSI    SGONZALEZG    ALARIOSG    VBECERRAE    EIBARRAC    RCORTESA    LSANTOSH    joriospe                                                                                                             
@{passL}=    Create List     Mega12345    #Megacable2022*    Omega1012    Mega2022    Omega.2019    Mega1234    rcortesa    Mega2023    Mega12345                                                                                                                                                                                                                                                                                                                                                                                                                           
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
##################Pantalla asignar equipos a cuadrilla#####################################################################################################################################
${Bottonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Bottonasignarequiposacuadrilla}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[4]/div/div/span
##################################################################################################################
${Desplegartipodeequipos}    xpath=//dx-drop-down-box[@id='typeEquipmentDropdown']/div/div/div[2]/div/div/div
${Equipo}    xpath=//td[@aria-describedby='dx-col-18'][contains(.,'ACCESS POINT')]
${Desplegartipocuadrilla}    xpath=//dx-drop-down-box[@id='typeCrewDropdown']/div/div/div[2]/div/div/div
${Tipocuadrillaauditoria}    xpath=(//td[contains(@tabindex,'0')])[12]
${Desplegarcuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Cuadrilla0001}    xpath=//td[contains(.,'0001')]
${Cerrarnotificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Tipocuadrillaalm}    xpath=//td[contains(.,'ALM Almacen')]
${Cajadetextoagregarserie}    xpath=//input[@maxlength='35']
${Serie}    Q2BN65BECRQ9                                                                             
${Checkboxporubicacion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Desplegarubicaciones}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Ubicacion001}    xpath=(//td[contains(.,'001')])[2]    
${Botoncacelarfiltroestado}    xpath=(//span[@class='dx-button-text'][contains(.,'Cancelar')])[2]
${Cuadrillavacia}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
${Registro}    xpath=//td[contains(.,'249602323')]
${Botondesasignar}    xpath=//span[contains(.,'Desasignar')]
${Botonenviar}    xpath=//span[contains(.,'Enviar')]
${Notificacionprocesoterminadoconexito}    xpath=//i[@class='dx-icon dx-icon-close']
${Botonlimpiar}    xpath=//span[contains(.,'Limpiar')]
${Serieconlimitedecaracteres}    24960232324960232324960232324       
${Seriemasde8años}    00028995    
${Iconoexcel}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
${Iconoimprimir}    xpath=(//i[contains(@class,'dx-icon dx-icon-print')])[2]
${Serie07MJ968D3HS8}    07MJ968D3HS8    
${Bottonfiltrarserie}    xpath=//td[@id='dx-col-325']/div/span[2]
${Cajadetextobuscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
${Cuadrilla004}    xpath=//td[contains(.,'0004')]
${Botonexpandirtodos}    xpath=//span[contains(.,'Expandir todos')]
${Registrohaeliminar}    xpath=//td[contains(.,'Q2BN65BECRQ9')]
${Serieubicacioncli}    00210102403588    
${Serieconmasde8años}    0015A4648CCE    
${Iconoexportarparaprocesos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
########################################Filtros#################################################################
${Filtroestado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-assign-equipment-crew-main-container/div/div[1]/div[2]/app-assign-equipment-crew-grid/dx-data-grid/div/div[5]/div/table/tbody/tr/td[5]/div[1]/span[2]
${Filtroserie}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-assign-equipment-crew-main-container/div/div[1]/div[2]/app-assign-equipment-crew-grid/dx-data-grid/div/div[5]/div/table/tbody/tr/td[2]/div[1]/span[2]
${Seriehafiltrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Filtrotipoequipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-assign-equipment-crew-main-container/div/div[1]/div[2]/app-assign-equipment-crew-grid/dx-data-grid/div/div[5]/div/table/tbody/tr/td[3]/div[1]/span[1]
${Tipoequipohafiltrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Filtromodelo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-assign-equipment-crew-main-container/div/div[1]/div[2]/app-assign-equipment-crew-grid/dx-data-grid/div/div[5]/div/table/tbody/tr/td[4]/div[1]/span[2]
${Modelohafiltrar}    xpath= (//span[contains(@class,'dx-checkbox-icon')])[5]   
${Estadohafiltrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]  
${Filtrofecha}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-assign-equipment-crew-main-container/div/div[1]/div[2]/app-assign-equipment-crew-grid/dx-data-grid/div/div[5]/div/table/tbody/tr/td[6]/div[1]/span[2]
${Fechahafiltrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]    
${Filtrodias}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-assign-equipment-crew-main-container/div/div[1]/div[2]/app-assign-equipment-crew-grid/dx-data-grid/div/div[5]/div/table/tbody/tr/td[7]/div[1]/span[1]
${Diahafiltrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Filtromigrado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-assign-equipment-crew-main-container/div/div[1]/div[2]/app-assign-equipment-crew-grid/dx-data-grid/div/div[5]/div/table/tbody/tr/td[8]/div[1]/span[2]
${Migradohafiltrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Botonaceptar}    xpath=//span[contains(.,'Aceptar')]
######################################Campo vacio ubicacion##############################################
${Campovacioubicacion}    xpath=(//span[@class='dx-icon dx-icon-clear'])[2]
#####################################Ubicacion CIS###########################################################
${Campodescripcioncis}    xpath=//input[contains(@maxlength,'7094')]
${CIS}    CIS
${UbicacionCIS}    xpath=//td[contains(.,'CIS REVOL. ALT/CAM')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Por ubicacion agregando serie con ubicacion cua y tipo_cuadrilla alm
    Checbox por ubicacion
    Tipo de equipo 
    Ubicacion CIS
    Serie 249602323
    Desasignar serie

Validando si existe una notificacion que impida pasar a la siguiente test case
    Validacion de notificacion

Icono exportar para procesos
    Exportar datos para procesos

Filtros
    Filtro serie
    Filtro tipo equipo
    Filtro tipo equipo
    Filtro modelo
    Filtro modelo
    Filtro estado
    Filtro estado
    Filtro fecha
    Filtro fecha
    Filtro dias
    Filtro dias
    Filtro migrado
    Filtro migrado

Buscar cuadrilla con antiguedad mayor a 10 dias
    Checbox por ubicacion
    Tipo de equipo
    Tipo cuadrilla A auditoria
    Cuadrilla 0001

Asignar por cuadrilla
    Cerrar notificacion
    Cuadrilla 0004
    Serie 249602323
    Sleep    5s

Serie con ubicacion Cli
    Serie con ubicacion cli    
    Cerrar notificacion    

Serie con mas de 8 años    
    Serie 0015A4648CCE
    Cerrar notificacion

Serie repetida
    Serie 249602323
    Cerrar notificacion

Exportar excel
    Icono excel

Boton imprimir
    Icono imprimir

Boton desasignar
    Desasignar serie de cuadrilla

#Por ubicacion
    #Checbox por ubicacion
    #Tipo de equipo 
    #Ubicacion 001
    #Serie 249602323
    #Serie 249602323
    #Cerrar notificacion
    #Serie 605027972    
    #Cerrar notificacion  
    #Serie 0015A4648CCE
    #Cerrar notificacion
    #Desasignar serie de cuadrilla

Campos vacios
    Campo vacio ubicacion

Limpiar
    Boton limpiar
    
Serie con limite de caracteres
    Checbox por ubicacion
    Tipo de equipo 
    Ubicacion 001
    Serie con limite de caracteres


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
        Click Element    ${Bottonequipos}
        Wait Until Element Is Visible    ${Bottonoperacionesequipos}
        Click Element    ${Bottonoperacionesequipos}
        Wait Until Element Is Visible    ${Bottonasignarequiposacuadrilla}
        Click Element    ${Bottonasignarequiposacuadrilla} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Tipo de equipo
    Sleep    5s
    Click Element    ${Desplegartipodeequipos}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Tipo cuadrilla A auditoria
    Sleep    5s
    Click Element   ${Desplegartipocuadrilla}
    Sleep    5s
    Click Element     ${Tipocuadrillaauditoria}
    
Cuadrilla 0001
    Sleep    5s
    Click Element    ${Desplegarcuadrilla}
    Wait Until Element Is Visible    ${Cuadrilla0001}
    Click Element    ${Cuadrilla0001}    

Cerrar notificacion
    #Set Selenium Timeout    25
    Sleep    20s
    Click Element    ${Cerrarnotificacion}

Tipo cuadrilla ALM
    Sleep    5s
    Click Element   ${Desplegartipocuadrilla}
    Wait Until Element Is Visible    ${Tipocuadrillaalm}
    Click Element     ${Tipocuadrillaalm}

Serie 249602323
    Sleep    5s
    Input Text    ${Cajadetextoagregarserie}    ${Serie}
    Sleep    5s    
    Press Keys    ${Cajadetextoagregarserie}    ENTER

Checbox por ubicacion
    Sleep    5s
    Click Element    ${Checkboxporubicacion}

Ubicacion 001
    Sleep    5s
    Click Element   ${Desplegarubicaciones}
    Wait Until Element Is Visible    ${Ubicacion001}
    Click Element    ${Ubicacion001}

Campo vacio cuadrilla    
    Sleep    3s
    Click Element    ${Cuadrillavacia}
 
Boton limpiar
    Sleep    5s
    Click Element    ${Botonlimpiar}

Serie con limite de caracteres
    Sleep    10s      
    Input Text    ${Cajadetextoagregarserie}    ${Serieconlimitedecaracteres}
    Sleep    7s
    Close Browser

Serie mas de 8 años
    Sleep    5s
    Clear Element Text    ${Cajadetextoagregarserie}
    Sleep    5s
    Input Text    ${Cajadetextoagregarserie}    ${Seriemasde8años}
    Sleep    5s
    Press Keys    ${Cajadetextoagregarserie}    ENTER    

Icono excel
    Sleep    5s
    Click Element    ${Iconoexcel}

Icono imprimir
    Sleep    5s
    Click Element    ${Iconoimprimir}

Filtro buscar
    Sleep    5s
    Input Text    ${Cajadetextobuscar}    ${Serie}
    Sleep    7s
    Clear Element Text    ${Cajadetextobuscar}

Cuadrilla 0004
    Wait Until Element Is Visible    ${Desplegarcuadrilla}
    Click Element    ${Desplegarcuadrilla}
    Wait Until Element Is Visible    ${Cuadrilla004}
    Click Element    ${Cuadrilla004}

Desasignar serie
    Sleep    5s
    Click Element    ${Botonexpandirtodos}
    Wait Until Element Is Visible    ${Cajadetextobuscar}
    Input Text    ${Cajadetextobuscar}    ${Serie}
    Sleep    5s
    Click Element    ${Registrohaeliminar}
    Sleep    5s
    Click Element    ${Botondesasignar}
    Sleep    7s
    Click Element    ${Botonenviar}
    Sleep    7s
    Click Element    ${Notificacionprocesoterminadoconexito}
    
    

Serie con ubicacion cli    
    Sleep    5s
    Input Text    ${Cajadetextoagregarserie}    ${Serieubicacioncli}
    Sleep    5s
    Press Keys    ${Cajadetextoagregarserie}    ENTER

Serie 0015A4648CCE
    Sleep    5s
    Input Text    ${Cajadetextoagregarserie}    ${Serieconmasde8años}
    Press Keys    ${Cajadetextoagregarserie}    ENTER
    
Exportar datos para procesos
    Sleep    5s
    Clear Element Text    ${Cajadetextobuscar}
    Wait Until Element Is Visible    ${Iconoexportarparaprocesos}
    Click Element    ${Iconoexportarparaprocesos}
    Sleep    5s
    Click Element    ${Iconoexcel}

Filtro serie
    Sleep    5s
    Wait Until Element Is Visible    ${Iconoexportarparaprocesos}
    Click Element    ${Iconoexportarparaprocesos}
    Wait Until Element Is Visible    ${Filtroserie}
    Click Element    ${Filtroserie}
    Sleep    4s
    Click Element    ${Seriehafiltrar}
    Sleep    5s
    Click Element   ${Botonaceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtroserie}
    Click Element    ${Filtroserie}
    Sleep    4s
    Click Element    ${Seriehafiltrar}
    Sleep    5s
    Click Element    ${Botonaceptar}

Filtro tipo equipo
    Sleep    5s
    Wait Until Element Is Visible    ${Filtrotipoequipo}
    Click Element    ${Filtrotipoequipo}
    Sleep    3s
    Click Element    ${Tipoequipohafiltrar}
    Sleep    3s
    Click Element    ${Botonaceptar}

Filtro modelo
    Sleep    5s
    Wait Until Element Is Visible    ${Filtromodelo}
    Click Element    ${Filtromodelo}
    Sleep    3s
    Click Element    ${Modelohafiltrar}
    Sleep    3s
    Click Element     ${Botonaceptar}

Filtro estado
    Sleep    5s
    Wait Until Element Is Visible    ${Filtroestado}
    Click Element    ${Filtroestado}
    Sleep    3s
    Click Element    ${Estadohafiltrar}
    Sleep    3s
    Click Element    ${Botonaceptar}

Filtro fecha
    Sleep    5s
    Wait Until Element Is Visible    ${Filtrofecha}
    Click Element    ${Filtrofecha}
    Sleep    3s
    Click Element    ${Fechahafiltrar}
    Sleep    3s
    Click Element    ${Botonaceptar}

Filtro dias
    Sleep    5s
    Wait Until Element Is Visible    ${Filtrodias}
    Click Element    ${Filtrodias}
    Sleep    3s
    Click Element    ${Diahafiltrar}
    Sleep    3s
    Click Element    ${Botonaceptar}

Filtro migrado
    Sleep    5s
    Wait Until Element Is Visible    ${Filtromigrado}
    Click Element    ${Filtromigrado}
    Sleep    3s
    Click Element    ${Migradohafiltrar}
    Sleep    3s
    Click Element    ${Botonaceptar}

Campo vacio ubicacion
    Sleep    5s
    Click Element    ${Campovacioubicacion}

Ubicacion CIS
    Sleep    5s
    Click Element    ${Desplegarubicaciones}
    Sleep    3s
    Input Text    ${Campodescripcioncis}    ${CIS}
    Sleep    5s
    Click Element    ${UbicacionCIS}

Desasignar serie de cuadrilla
    Sleep    5s
    Click Element    ${Botonexpandirtodos}
    Wait Until Element Is Visible    ${Cajadetextobuscar}
    Input Text    ${Cajadetextobuscar}    ${Serie}
    Sleep    5s
    Click Element    ${Registrohaeliminar}
    Sleep    5s
    Click Element    ${Botondesasignar}
    Sleep    7s
    Click Element    ${Botonenviar}
    Sleep    7s
    Click Element    ${Notificacionprocesoterminadoconexito}

Validacion de notificacion
    Sleep    5s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Click Element    ${Cerrarnotificacion}
    IF    '${Bandera_notificacion}' == True
        Sleep    5s    
    END
