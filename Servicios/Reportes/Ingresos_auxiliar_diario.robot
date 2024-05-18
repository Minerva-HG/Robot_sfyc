*** Settings ***
Documentation    Reporte Ingresos - Auxiliar diario
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
########################################Pantalla REPORTE INGRESOS - AUXILIAR DIARIO#############################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Ingresos
${Reporte_ingresos_auxiliar_diario}    xpath=//td[contains(.,'Ingresos - Auxiliar diario')]
###############################Fechas#################################################################################################
${Icono_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
##################################Botones#########################################################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
#####################################Combo cis##################################################
${Checkbox_todos_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-income-auxiliary-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-all-cis-parameter/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[1]
@{Cis}=    Create List    ${Cis1}    ${Cis2}    ${Cis3}    ${Cis4}    ${Cis5}
${Cis1}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
${Cis2}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]    
${Cis3}    xpath=//td[contains(.,'CENTRAL')]
${Cis4}    xpath=//td[contains(.,'CIS CIRCUNVALACION')]
${Cis5}    xpath=//td[contains(.,'CIS JAVIER MINA')]
####################################Pestaña mas opciones########################################
${Mas_opciones}    xpath=//span[contains(.,'Más Opciones')]
####################################Combo tipos de servicios######################################
${Tipo_de_servicio_vacio}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[5]
${Tipo_de_servicio_cable}    xpath=(//td[contains(.,'Internet')])[1]
${Checkbox_todos_los_tipos_servicios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Combo_tipos_de_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-income-auxiliary-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-service-parameter/div/div/div[1]/div[2]/app-type-service-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Tipo_de_servicio}=    Create List    ${Tipo_de_servicio1}    ${Tipo_de_servicio2}    ${Tipo_de_servicio3}    ${Tipo_de_servicio4}    ${Tipo_de_servicio5}    
${Tipo_de_servicio1}    xpath=(//td[contains(.,'Cable')])[2]
${Tipo_de_servicio2}    xpath=//td[contains(.,'Premier')]
${Tipo_de_servicio3}    xpath=//td[contains(.,'PPV')]
${Tipo_de_servicio4}    xpath=(//td[contains(.,'Internet')])[1]
${Tipo_de_servicio5}    xpath=//td[contains(.,'Varios')]
#####################################Combo servicios###############################################
${Checkbox_todos_los_servicios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Combo_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-income-auxiliary-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-service-parameter/div/div/div[2]/div[2]/app-service-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Servicio}=    Create List    ${Servicio1}    ${Servicio2}    ${Servicio3}    ${Servicio4}    ${Servicio5}    
${Servicio1}    xpath=//td[contains(.,'Sin Cable')]
${Servicio2}    xpath=(//td[contains(.,'Convertidor')])[1]
${Servicio3}    xpath=//td[contains(.,'Bellas y Bestias')]
${Servicio4}    xpath=//td[contains(.,'Cable Modem Residencial')]
${Servicio5}    xpath=//td[contains(.,'Down Converter')]
####################################Combo conceptos################################################
${Checkbox_todos_los_conceptos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Combo_conceptos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-income-auxiliary-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-concepts-parameter/div/div/div/div[2]/app-concepts-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Concepto}=    Create List    ${Concepto1}    ${Concepto2}    ${Concepto3}    ${Concepto4}    ${Concepto5}    
${Concepto1}    xpath=//td[contains(.,'Mensualidad')]
${Concepto2}    xpath=//td[contains(.,'Contratación')]
${Concepto3}    xpath=//td[contains(.,'Cancelación')]
${Concepto4}    xpath=//td[contains(.,'Reconexión')]
${Concepto5}    xpath=//td[contains(.,'Cambio Servicio')]
####################################Campos vacios#############################################################
${Campo_vacio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-income-auxiliary-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-concepts-parameter/div/div/div/div[2]/app-concepts-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span

*** Test Cases ***
Usuarios con permisos a la pantalla 
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Ingresar usuario
    Validacion de usuarios

Valida fechas
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Validación de fechas
    Icono fecha

Valida todos CIS
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Validación de fechas
    Boton aceptar

Validar combos cis
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Validación de combos cis
    Combo Cis
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes cis     ${Cis}[${counter}]    
        Boton aceptar
    END

Mas opciones
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Pestaña mas opciones
    Test mas opciones

Tipos de servicios
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Combo tipos de servicios
    Combo tipos de servicios

Servicios
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Servicios
    Combo servicios

Conceptos
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Conceptos
    Combo conceptos
    #Test boton limpiar
    #Test mas opciones

Ingresos - Auxiliar diario
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Conceptos
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes datos en la pestaña mas opciones    ${Tipo_de_servicio}[${counter}]    ${Servicio}[${counter}]    ${Concepto}[${counter}]    
        Boton aceptar
    END

Campos vacios
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Campos vacios
    Test campos vacios

Boton limpiar
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte Ingresos - Auxiliar diario
    [Tags]    Boton cancelar
    Test boton cancelar


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
        Sleep    20s
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        #Wait Until Element Is Visible    ${Campo_descripcion}
        Sleep    3s
        Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
        Sleep    4s
        Click Element    ${Reporte_ingresos_auxiliar_diario}  
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END
   
Icono fecha
    Wait Until Element Is Visible    ${Icono_fecha}
    Click Element    ${Icono_fecha}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Combo Cis
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}
    Sleep    15s
    Click Element    ${Combo_cis}
    Sleep    4s
    Click Element    ${Combo_cis}

Generando reporte con diferentes cis
    [Documentation]    Seleccionando cis
    [Arguments]     ${Cis}   
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}  

Generando reporte con diferentes datos en la pestaña mas opciones
    [Documentation]    Seleccionando tipos de servicio, servicio y conceptos
    [Arguments]     ${Tipo_de_servicio}    ${Servicio}    ${Concepto}   
    Sleep    3s
    Click Element    ${Combo_tipos_de_servicios}
    Wait Until Element Is Visible    ${Tipo_de_servicio}
    Click Element    ${Tipo_de_servicio}   
    Wait Until Element Is Visible    ${Combo_servicios}
    Click Element    ${Combo_servicios}
    Wait Until Element Is Visible    ${Servicio}
    Click Element    ${Servicio}
    Wait Until Element Is Visible    ${Combo_conceptos}
    Click Element    ${Combo_conceptos}
    Wait Until Element Is Visible    ${Concepto}
    Click Element    ${Concepto}
    Sleep    3s

Test mas opciones
    Wait Until Element Is Visible    ${Mas_opciones}
    Click Element    ${Mas_opciones}
   
Combo tipos de servicios
    Sleep    5s
    Click Element    ${Checkbox_todos_los_tipos_servicios}
    Wait Until Element Is Visible    ${Combo_tipos_de_servicios}
    Click Element    ${Combo_tipos_de_servicios}
    Wait Until Element Is Visible    ${Tipo_de_servicio_cable}
    Click Element    ${Tipo_de_servicio_cable}

Combo servicios
    Wait Until Element Is Visible    ${Checkbox_todos_los_servicios}
    Click Element    ${Checkbox_todos_los_servicios}
    Wait Until Element Is Visible    ${Combo_servicios}
    Click Element    ${Combo_servicios}
    Sleep    3s
    Click Element    ${Combo_servicios}

Combo conceptos    
    Wait Until Element Is Visible    ${Checkbox_todos_los_conceptos}
    Click Element    ${Checkbox_todos_los_conceptos}
    Wait Until Element Is Visible    ${Combo_conceptos}
    Click Element    ${Combo_conceptos}
    Sleep    3s
    Click Element    ${Combo_conceptos} 

Test campos vacios
    Wait Until Element Is Visible    ${Campo_vacio}
    Click Element    ${Campo_vacio}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
