*** Settings ***
Documentation    Reportes - bonificaciones por usuario  
Library    String
Library    SeleniumLibrary

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla Reporte auxiliar de ingresos por caja###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Bonificaciones_por_usuario}    xpath=//td[contains(.,'Bonificaciones por Usuario')]
###########################Checkbox##############################################################################################
${Checkbox_todos_zonas}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Checkbox_todos_los_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Checkbox_todos_los_conceptos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Checkbox_todos_los_tipos_servicios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Checkbox_todos_servicios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Checkbox_todas_bonificaciones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Checkbox_bonificaciones_capturadas_por_usuarios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Checkbox_todos_promociones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[9]
${Todos_los_usuarios}        xpath=(//span[contains(@class,'dx-checkbox-icon')])[10]
###########################Boton preliminar################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
#############################Combos#######################################################################################################
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
${Combo_zona}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-cis-and-zones-parameter/form/div/div/div[1]/div[2]/app-zones-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-cis-and-zones-parameter/form/div/div/div[2]/div[2]/app-cis-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_conceptos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-concepts-parameter/div/div/div/div[2]/app-concepts-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipos_de_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-service-parameter/div/div/div[1]/div[2]/app-type-service-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-service-parameter/div/div/div[2]/div[2]/app-service-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_causa_bonificacion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[3]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-bonus-cause-parameter/div/div/div[1]/div[2]/app-cause-bonification-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_promociones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[3]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-promotions-parameter/div/div/div/div[2]/app-promotion-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_usuario}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-bonus-by-user-form/form/dx-tab-panel/div[2]/div/div/div[3]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/div/div/div[2]/app-user-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_todos_los_usuarios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[10]
#############################Registros#########################################################################################################
${Fecha_desde}    xpath=(//span[contains(.,'1')])[1]
${Fecha_hasta}    xpath=(//span[contains(.,'6')])[2]
${Zona}    xpath=(//td[contains(.,'ZONA 1')])[1]
${Cis}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
${Concepto}    xpath=//td[contains(.,'Mensualidad')]
${Tipo_de_servicio}    xpath=//td[contains(.,'Cable')]
${Servicio}    xpath=//td[contains(.,'TV Básico Plus')]
${Causa_bonificacion}    xpath=//td[contains(.,'Promoción Contratacion')]
${Promocion}    xpath=//td[contains(.,'Descuento TriplePack')]
${Campo_usuarios}    xpath=/html/body/div[2]/div/div/div/dx-data-grid/div/div[5]/div/table/tbody/tr[2]/td[1]/div/div[2]/div/div
${Usuario}    xpath=//td[contains(.,'JGUTIERREZCR')]
${Campo_vacio_causa_bonificacion}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[9]
#################################Pestañas#################################################################################################################
${OPCIONES}    xpath=(//span[contains(.,'Opciones')])[1]
${MAS_OPIONES_1}    xpath=(//span[contains(.,'Más Opciones')])[1]
${MAS_OPCIONES_2}    xpath=(//span[contains(.,'Más Opciones')])[2]

*** Test Cases ***
Usuarios con permisos a la pantalla 
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Pantalla reporte bonificaciones por usuario
    Validacion de usuarios

Fechas
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Fechas
    Test fechas

CIS
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Combo Cis
    Combo CIS

Zonas
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Combo Zonas
    Combo zonas

Servicios
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Combo Servicios
    Combo servicios

Conceptos
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Combo Conceptos
    Combo conceptos

Causa bonificacion
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Combo causa bonificacion
    Combo bonificacion

Promociones
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Combo promociones
    Combo promociones

Usuarios
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Campo usuarios
    Campo usuarios

Bonificaciones por usuario
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Boton aceptar
    Boton aceptar

Campos vacios
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Campo vacios
    Campos vacios

Boton limpiar
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Boton limpiar
    Boton limpiar

Boton cancelar
    [Documentation]    Reporte - bonificaciones por usuario
    [Tags]    Boton cancelar
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
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Bonificaciones_por_usuario} 
        Click Element    ${Bonificaciones_por_usuario}    
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test fechas
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}    
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Boton aceptar
    Sleep    5s
    Click Element    ${Boton_aceptar}

Combo CIS
    Wait Until Element Is Visible    ${Checkbox_todos_los_cis}
    Click Element    ${Checkbox_todos_los_cis}
    Wait Until Element Is Visible    ${Combo_CIS}
    Click Element    ${Combo_CIS}
    Wait Until Element Is Visible    ${CIS}
    Click Element    ${CIS}

Combo zonas
    Wait Until Element Is Visible    ${Checkbox_todos_zonas}
    Click Element    ${Checkbox_todos_zonas}
    Wait Until Element Is Visible    ${Combo_zona}
    Click Element    ${Combo_zona}
    Wait Until Element Is Visible    ${Zona}
    Click Element    ${Zona}
    
Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element   ${Boton_limpiar}

Boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}

Combo servicios
    Wait Until Element Is Visible    ${MAS_OPIONES_1}
    Click Element    ${MAS_OPIONES_1}
    Wait Until Element Is Visible    ${Checkbox_todos_los_tipos_servicios}
    Click Element    ${Checkbox_todos_los_tipos_servicios}
    Wait Until Element Is Visible    ${Combo_tipos_de_servicios}
    Click Element    ${Combo_tipos_de_servicios}
    Wait Until Element Is Visible    ${Tipo_de_servicio}
    Click Element    ${Tipo_de_servicio}
    Wait Until Element Is Visible    ${Checkbox_todos_servicios}
    Click Element    ${Checkbox_todos_servicios}
    Wait Until Element Is Visible    ${Combo_servicios}
    Click Element    ${Combo_servicios}
    Wait Until Element Is Visible    ${Servicio}
    Click Element    ${Servicio}

Combo conceptos
    Wait Until Element Is Visible    ${Checkbox_todos_los_conceptos}
    Click Element    ${Checkbox_todos_los_conceptos}
    Wait Until Element Is Visible    ${Combo_conceptos}
    Click Element    ${Combo_conceptos}
    Wait Until Element Is Visible    ${Concepto}
    Click Element    ${Concepto}

Combo bonificacion
    Wait Until Element Is Visible    ${MAS_OPCIONES_2}
    Click Element    ${MAS_OPCIONES_2}
    #Wait Until Element Is Visible    ${Checkbox_todas_bonificaciones}
    Sleep    3s
    Click Element    ${Checkbox_todas_bonificaciones}
    Wait Until Element Is Visible    ${Combo_causa_bonificacion}
    Click Element    ${Combo_causa_bonificacion}
    Wait Until Element Is Visible    ${Causa_bonificacion}
    Click Element    ${Causa_bonificacion}

Combo promociones
    Wait Until Element Is Visible    ${Checkbox_todos_promociones}
    Click Element    ${Checkbox_todos_promociones}
    Wait Until Element Is Visible    ${Combo_promociones}
    Click Element    ${Combo_promociones}
    Wait Until Element Is Visible    ${Promocion}
    Click Element    ${Promocion}

Campo usuarios
    Wait Until Element Is Visible    ${Todos_los_usuarios}
    Click Element    ${Todos_los_usuarios}
    Wait Until Element Is Visible    ${Combo_usuario}
    Click Element    ${Combo_usuario}
    Wait Until Element Is Visible    ${Usuario}
    Click Element    ${Usuario}

Campos vacios
    Wait Until Element Is Visible    ${Campo_vacio_causa_bonificacion}
    Click Element    ${Campo_vacio_causa_bonificacion}
