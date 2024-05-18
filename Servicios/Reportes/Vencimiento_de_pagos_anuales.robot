*** Settings ***
Documentation    Vencimiento de pagos anuales
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
#########################Pantalla reporte vencimiento de pagos anuales###################################################################
${Servicios_global_dev}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Reportes_global_dev}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
${Combo_reportes}    xpath=//input[contains(@aria-expanded,'false')]
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Papeletas}    Vencimiento
${Reporte_vencimiento_de_pagos_anuales}    xpath=//td[contains(.,'Vencimiento de pagos anuales')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
######################################Sucursal##################################################################################
${Combo_sucursal}    xpath=(//input[contains(@autocomplete,'off')])[2]
${Sucursal}    xpath=//td[contains(.,'Cd. Obregon')]
######################################Fecha######################################################################################################
${Calendario}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Mes}    xpath=(//span[contains(.,'jun')])[1]

*** Test Cases ***
Ingresar usuario
    [Documentation]    Reporte vencimiento de pagos anuales
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     

Pantalla reporte vencimiento de pagos anuales
    [Documentation]    Reporte vencimiento de pagos anuales
    [Tags]    Pantalla reporte vencimiento de pagos anuales
    Test pantalla reporte vencimiento de pagos anuales
    
Fechas
    [Documentation]    Reporte vencimiento de pagos anuales
    [Tags]    Fechas
    Combo fecha

Generar reporte
    [Documentation]    Reporte vencimiento de pagos anuales
    [Tags]    Reporte
    Boton aceptar

Boton limpiar
    [Documentation]    Reporte vencimiento de pagos anuales
    [Tags]    Boton limpiar
    Test boton limpiar

Vencimiento de pagos anuales de otra sucursal
    [Documentation]    Reporte vencimiento de pagos anuales
    [Tags]    Reporte de otra sucursal
    Reporte de otra sucursal

Boton cancelar
    [Documentation]    Reporte vencimiento de pagos anuales
    [Tags]    Boton cancelar
    Test boton cancelar
    Sleep    30s    
    

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

Test pantalla reporte vencimiento de pagos anuales
    Sleep    15s
    Click Element    ${Servicios_global_dev}
    Sleep    2s
    Scroll Element Into View    ${Reportes_global_dev}
    Wait Until Element Is Visible    ${Reportes_global_dev}
    Click Element    ${Reportes_global_dev}
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Descripcion}    ${Papeletas}
    Wait Until Element Is Visible    ${Reporte_vencimiento_de_pagos_anuales}
    Click Element    ${Reporte_vencimiento_de_pagos_anuales}

Combo fecha
    Sleep    5s
    Click Element    ${Calendario}
    Wait Until Element Is Visible    ${Mes}
    Click Element    ${Mes}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}

Reporte de otra sucursal
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}