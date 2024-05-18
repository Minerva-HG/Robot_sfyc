*** Settings ***
Documentation    Resumen de ingresos por caja
Library    String
Library    SeleniumLibrary
Library    RPA.Windows
Library    XML


*** Variables ***
#########################Validacion de usuario######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui      
${Usuario}  softteck01                                           
${Pass}  123456c                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
#########################Pantalla reporte portación estado resumen###################################################################
${Servicios_global_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Reportes_global_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Portacion_estado_detalle}    Portacion
${Reporte_portacion_estado_detalle}    xpath=//td[contains(.,'Portación estado resumen')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
######################################Combo sucursal##################################################################################
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-app-reporting-portation-state-summary-form/form/div/app-branch-parameter/div/div/div/div[2]/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
#######################################Fechas##################################################################################################
${Fecha_desde}    xpath=(//span[contains(.,'2')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'15')])[4]
######################################Sucursal########################################################################################
${Sucursal}    xpath=//td[contains(.,'Hermosillo')]
######################################Filtros###############################################################################################
${Campo_id_sucursal}    xpath=//input[contains(@inputmode,'decimal')]
${id_sucursal}    21
${Campo_descripción}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Descripcion_sucursal}    Los mochis
#######################################Caracteres invalidos##########################################################################
${Caracteres_invalidos}    @$%&/_
######################################Checkbox todas las sucursales###########################################################################
${Checkbox_todas_las_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]

*** Test Cases ***
Portación estado resumen
    [Documentation]    Reporte portación estado resumen
    [Tags]    Validación del reporte portación estado resumen
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     
    Test pantalla reporte portación estado detalle
    Test checkbox todas las sucursales
    Test Boton aceptar
    Test combo sucursal
    Fecha desde
    Fecha hasta
    Test boton aceptar
    Test boton limpiar
    Test filtros
    Test boton cancelar  
    

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element    ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC}
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text     name:Username   ${Usuario}
    Input Text    name:Password   ${Pass}
    Wait Until Element Is Visible    name:button
    Click Element    name:button

Test pantalla reporte portación estado detalle
    Sleep    15s
    Click Element    ${Servicios_global_QA}
    Sleep    2s
    Scroll Element Into View    ${Reportes_global_QA}
    Wait Until Element Is Visible    ${Reportes_global_QA}
    Click Element    ${Reportes_global_QA}
    #Wait Until Element Is Visible    ${Combo_reportes}
    Sleep    5s
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Descripcion}    ${Portacion_estado_detalle}
    Wait Until Element Is Visible    ${Reporte_portacion_estado_detalle}
    Click Element    ${Reporte_portacion_estado_detalle}

Test checkbox todas las sucursales
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucursales}
    Click Element    ${Checkbox_todas_las_sucursales}

Test combo sucursal
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucursales}
    Click Element    ${Checkbox_todas_las_sucursales}
    Sleep    5s
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    
Fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}

Fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Test boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}

Test filtros
    Sleep    5s
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Campo_id_sucursal}
    Input Text    ${Campo_id_sucursal}    ${id_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_id_sucursal}    
    Wait Until Element Is Visible    ${Campo_descripción}
    Input Text    ${Campo_descripción}    ${Descripcion_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_descripción}        