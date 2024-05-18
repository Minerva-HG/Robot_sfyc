*** Settings ***
Documentation    Reporte corte de cajas  
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte corte de cajas###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Corte de caja   
${Reporte_corte_de_cajas}    xpath=//td[contains(.,'Corte de Cajas')]
##########################Fechas#############################################################
${Icono_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
###########################Checkbox todos los cis####################################################
${Checkbox_todos_los_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
##############################Cis################################################
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-cash-closing-form/form/div[1]/app-all-cis-parameter/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Cis}=    Create List     ${Cis1}    ${Cis2}    ${Cis3}    ${Cis4}    ${Cis5}
${Cis1}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
${Cis2}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]   
${Cis3}    xpath=//td[contains(.,'CENTRAL')]
${Cis4}    xpath=//td[contains(.,'CIS CIRCUNVALACION')]
${Cis5}    xpath=//td[contains(.,'CIS JAVIER MINA')]
##############################Cajero###################################################
${Combo_cajero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-cash-closing-form/form/div[1]/app-all-cashiers-parameter/div/div/div[2]/app-cashier-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Cajero}=    Create List    ${Cajero1}    ${Cajero2}    ${Cajero3}    ${Cajero4}    ${Cajero5}    
${Cajero1}    xpath=//td[contains(.,'DEPTO. INFORMATICA')]
${Cajero2}    xpath=//td[contains(.,'CAJERO PayPal App')]    
${Cajero3}    xpath=//td[contains(.,'CAJERO PayPal Web')]
${Cajero4}    xpath=//td[contains(.,'PV Vía Vallejo')]
${Cajero5}    xpath=//td[contains(.,'PV Sendero Apodaca')]
###############################Botones#######################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
################################Icono imprimir solo pagos cancelados########################################
${Icono_imprimir_solo_pagos_cancelados}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
###################################Campos vacios#############################################################
${Campos_vacios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-cash-closing-form/form/div[1]/app-all-cis-parameter/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte corte de cajas
    [Tags]    Ingresar usuario
    Validacion de usuarios  

Fechas
    [Documentation]    Reporte corte de cajas
    [Tags]    Fechas
    Combo fecha

Checkox todos los Cis
    [Documentation]    Reporte corte de cajas
    [Tags]    Todos los cia
    Checkbox todos los cis

Cis
    [Documentation]    Reporte corte de cajas
    [Tags]    Cis
    Combo cis
    
Cajeros
    [Documentation]    Reporte corte de cajas
    [Tags]    Cajero
    Combo cajero

Corte de caja
    [Documentation]    Reporte corte de cajas
    [Tags]    Boton preliminar
    FOR    ${counter}    IN RANGE    1    6
        Seleccionando datos    ${Cis}[${counter}]    ${Cajero}[${counter}]
        Boton aceptar
    END

Icono activo imprimir solo para cancelados
    [Documentation]    Reporte corte de cajas
    [Tags]    Icono impirmir solo pagos cancelados
    Icono imprimir solo pagos cancelados
    Boton aceptar

Campos vacios
    [Documentation]    Reporte corte de cajas
    [Tags]    Campos vacios
    Campos vacios

Boton limpiar
    [Documentation]    Reporte corte de cajas
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte corte de cajas
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
        #Wait Until Element Is Visible    ${Boton_servicios}
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
        Click Element    ${Reporte_corte_de_cajas}  
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Combo fecha
    Wait Until Element Is Visible    ${Icono_fecha}
    Click Element    ${Icono_fecha}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Checkbox todos los cis
    Wait Until Element Is Visible    ${Checkbox_todos_los_cis}
    Click Element    ${Checkbox_todos_los_cis}

Combo cis
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Sleep    4s
    Click Element    ${Combo_cis}

Combo cajero
    Wait Until Element Is Visible    ${Combo_cajero}
    Click Element    ${Combo_cajero}
    Sleep    4s
    Click Element    ${Combo_cajero}

Boton aceptar
    Sleep    5s
    Click Element    ${Boton_aceptar}

Seleccionando datos
    [Documentation]    Seleccionando sucursal
    [Arguments]     ${Cis}    ${Cajero}    
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}
    Wait Until Element Is Visible    ${Combo_cajero}
    Click Element    ${Combo_cajero}
    Wait Until Element Is Visible    ${Cajero}
    Click Element    ${Cajero}

Icono imprimir solo pagos cancelados
    Wait Until Element Is Visible    ${Icono_imprimir_solo_pagos_cancelados}
    Click Element    ${Icono_imprimir_solo_pagos_cancelados}

Campos vacios
    Wait Until Element Is Visible    ${Campos_vacios}
    Click Element    ${Campos_vacios}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
