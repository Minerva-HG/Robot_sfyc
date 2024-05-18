*** Settings ***
Documentation    Reporte Ingresos - Informe diario
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Megajos202   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte Ingresos - Informe diario###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Ingresos
${Reporte_ingresos_informe_diario}    xpath=//td[contains(.,'Ingresos - Informe diario')]
###############################Fechas#################################################################################################
${Icono_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'24')])[1]
##################################Botones#########################################################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
#####################################Combo cis##################################################
${Checkbox_todos_cis}    xpath=//span[contains(@class,'dx-checkbox-icon')]
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-income-form/form/div/app-all-cis-parameter/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div/div/div[1]/input
${Cis_plaza_terranova}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]
@{Cis}=    Create List    ${Cis1}    ${Cis2}    ${Cis3}    ${Cis4}    ${Cis5}
${Cis1}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
${Cis2}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]    
${Cis3}    xpath=//td[contains(.,'CENTRAL')]
${Cis4}    xpath=//td[contains(.,'CIS CIRCUNVALACION')]
${Cis5}    xpath=//td[contains(.,'CIS JAVIER MINA')]
####################################Campos vacios#########################################################
${Campos_vacios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-income-form/form/div/app-all-cis-parameter/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span
####################################Radio button#########################################################################################################################################
${Radio_button_acumulado}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Radio_button_resumen_acumulado}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Ingresar usuario
    Validacion de usuarios

Ingresos - Informe diario
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Validacion reporte diario 
    Boton aceptar       

Valida fechas
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Validación de fechas
    Icono fecha
    
Valida todos CIS
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Validación de checkbox todos los CIS
    Boton aceptar

Validar combos cis
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Validación de combos cis
    Combo Cis

Ingresos - Informe diario - Acumulado
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Validación de radio button acumulado
    Radio button acumulado
    Boton aceptar
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes cis     ${Cis}[${counter}]    
    END

Ingresos - Informe diario - Resumen Acumulado
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Validación de radio button resumen acumulado
    Radio button resumen acumulado
    Sleep    5s
    Boton aceptar

Campos vacios
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Validación de campos vacios
    Sleep    5s
    Radio button acumulado
    Combo Cis
    Test campos vacios

Boton limpiar
    [Documentation]    Reporte Ingresos - informe diario
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte Ingresos - informe diario
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
        Sleep    10s
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Campo_descripcion}
        Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
        Sleep    4s
        Click Element    ${Reporte_ingresos_informe_diario}
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
    #Click Element    ${Icono_fecha}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Generando reporte con diferentes cis
    [Documentation]    Seleccionando cis
    [Arguments]     ${Cis}   
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}  
    Sleep    5s
    Click Element    ${Boton_aceptar}


Combo Cis
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}
    Sleep    5s
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis_plaza_terranova}
    Click Element    ${Cis_plaza_terranova}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Radio button acumulado
    Wait Until Element Is Visible    ${Radio_button_acumulado}
    Click Element    ${Radio_button_acumulado}

Radio button resumen acumulado
    Wait Until Element Is Visible    ${Radio_button_resumen_acumulado}
    Click Element    ${Radio_button_resumen_acumulado}

Test campos vacios
    Wait Until Element Is Visible    ${Campos_vacios}
    Click Element    ${Campos_vacios}
 
 Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
