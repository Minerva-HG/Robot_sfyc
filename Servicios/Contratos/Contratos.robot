*** Settings ***
Documentation    Contratos
Library    String
#Library    SeleniumLibrary
Library    RPA.Windows
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://global.dev-cluster.sfycnextgen.com.mx/ui
${Usuario}  ADGARCIAM                                           
${Pass}  zacatecas                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
######################Pantalla contratos###################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Pantallacontratos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[2]
####################Carga de suscriptor#######################################################
${Combosuscriptores}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Iconoagregarsuscriptor}    xpath=//i[contains(@class,'dx-icon dx-icon-plus')]
${Input_suscriptor}    xpath=/html/body/div[2]/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-subscriber-search-container/dx-accordion/div/div[1]/dxi-item/div/form/div/app-subscriber-search-contract-form/form/div/dx-text-box/div[1]/div[1]/input
${Suscriptor_con_facturacion}    0440034065     #0440003245    #0440034065
${Boton_consultar}    xpath=//span[contains(.,'Consultar')]
${Registro_suscriptor_con_facturacion}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]
##################Datos adicionales######################################
${Combo_uso_cfdi}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[1]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-contract-billing-form/form/div/div[2]/div[2]/div[3]/app-cfdi-use-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${CFDI}    xpath=//td[contains(.,'Adquisición de mercancías.')]
${Combo_regimen_fiscal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[1]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-contract-billing-form/form/div/div[2]/div[2]/div[4]/app-tax-regime-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${Regimen_fiscal}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[3]
#################Boton guardar################################################
${Boton_guardar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[1]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-contract-billing-form/form/div/div[2]/div[2]/dx-button    
#################Notificacion verde##############################################
${Notificacion_verde}    xpath=/html/body/div/div/div[1]/div/div[1]/div/div/div
${Icon_close}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div/div/i
#################Grid otros datos##################################################
${Grid_otros_datos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[1]/div/div/div[2]/div[1]/span
#################Modificar datos##########################################################
${Combo_medio_por_el_que_se_entero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-other-data-container/form/div/div/div[2]/div[1]/app-ballot-informed-by-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Medio_por_el_cual_se_entero}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[4]
${Checkbox_de_14_22_años}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-other-data-container/form/div/div/div[2]/div[2]/div/div/div[1]/div/div[1]/div[2]/dx-check-box
${Boton_bloquear}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-other-data-container/form/div/div/div[2]/div[2]/div/div/div[3]/div/div[2]/dx-button
${Combo_tipo_suscriptores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-other-data-container/form/div/div/div[1]/div[4]/app-type-subscriber-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Suscriptor}    xpath=//td[contains(.,'CONSTRUCTORAS')]
${Combo_tipos_problemas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-other-data-container/form/div/div/div[1]/div[5]/app-type-problem-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Tipo_problema}    xpath=//td[contains(.,'Servicio Suspendido')]
${Checbox_detener_corte}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-other-data-container/form/div/div/div[1]/div[6]/div/div[1]/dx-check-box/div/span
${Boton_guardar_otros_datos}    xpath=(//span[contains(.,'Guardar')])[2]
${Icono_no_generar_estado_cuenta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-contract-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-other-data-container/form/div/div/div[2]/div[2]/div/div/div[4]/dx-check-box/div/span
######################Notificacion cliente problematico##########################################################################################################
${Notificacion_cliente_problematico_o_exitosa}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[3]
######################Bloquear pagos web#############################################
${Caja_texto_bloquear_pagos}    xpath=//textarea[contains(@maxlength,'20')]
${Texto_bloqueo}    No tiene metodo de pago
${Boton_bloquear}    xpath=@FindBy(xpath = "//span[contains(.,'Bloquear')]")


*** Test Cases ***
Test ingresar usuario
    [Documentation]    Contratos
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test pantalla contratos
    [Documentation]    Contratos
    [Tags]    Pantalla contratos
    Pantalla contratos

Test contrato con facturacion
    [Documentation]    Contratos
    [Tags]    Contrato con facturacion
    Suscriptor con contrato con facturacion
    Validando que el contrato ingresado NO sea un cliente problematico
    Datos adicionales
    Boton guardar

Test grid otros datos
    [Documentation]    Contratos
    [Tags]    Grid otros datos
    Grid otros datos
    Validando que el contrato ingresado NO sea un cliente problematico
    Modificar datos
    Cierre de notificacion

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}  
    Input Text When Element Is Visible     name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element When Visible    name:button

Pantalla contratos
    Sleep    10s
    Click Element When Visible   ${Moduloservicios}
    Wait Until Element Is Visible    ${Pantallacontratos}
    Click Element When Visible    ${Pantallacontratos}
    #Click Element    ${Pantalla_cajeroQA}

Suscriptor con contrato con facturacion
    Sleep    5s
    Click Element When Visible   ${Combosuscriptores}
    Click Element When Visible   ${Iconoagregarsuscriptor}
    Wait Until Element Is Visible    ${Input_suscriptor}
    Input Text When Element Is Visible   ${Input_suscriptor}    ${Suscriptor_con_facturacion}
    Click Element When Visible   ${Boton_consultar}
    #Sleep    5s
    Wait Until Element Is Visible    ${Registro_suscriptor_con_facturacion}
    Click Element    ${Registro_suscriptor_con_facturacion}

Validando que el contrato ingresado NO sea un cliente problematico
    Sleep    5s
    ${Bandera_notificacion_cliente_problematico}=  Run Keyword And Return Status    Click Element    ${Notificacion_cliente_problematico_o_exitosa}
    IF    '${Bandera_notificacion_cliente_problematico}' == 'True'
        Log To Console    Es un cliente problematico, favor de ingresar en la vairable suscriptor uno que no sea problematico
        Sleep    10s
        Close Browser
    END

Datos adicionales
    Sleep    5s
    Click Element When Visible    ${Combo_uso_cfdi}
    Click Element When Visible    ${CFDI}
    Click Element When Visible    ${Combo_regimen_fiscal}
    Sleep    5s
    Click Element When Visible    ${Regimen_fiscal}

Boton guardar
    Sleep    5s
    Click Element    ${Boton_guardar}
    Sleep    5s
    Click Element When Visible    ${Icon_close}

Grid otros datos
    Sleep    5s
    Click Element    ${Grid_otros_datos}

Modificar datos
    Sleep    5s
    Click Element    ${Combo_medio_por_el_que_se_entero}
    Wait Until Element Is Visible    ${Medio_por_el_cual_se_entero}
    Click Element    ${Medio_por_el_cual_se_entero}
    Click Element    ${Checkbox_de_14_22_años}
    Scroll Element Into View    ${Boton_bloquear} 
    Wait Until Element Is Visible    ${Combo_tipo_suscriptores}
    Click Element    ${Combo_tipo_suscriptores}
    Sleep    5s
    Click Element    ${Suscriptor}
    Wait Until Element Is Visible    ${Combo_tipos_problemas}
    Click Element    ${Combo_tipos_problemas}
    #Wait Until Element Is Visible    ${Tipo_problema}
    #Click Element    ${Tipo_problema}
    Sleep    5s
    Click Element    ${Combo_tipos_problemas}
    Wait Until Element Is Visible    ${Checbox_detener_corte}
    Click Element    ${Checbox_detener_corte}
    Scroll Element Into View    ${Boton_guardar_otros_datos}
    Wait Until Element Is Visible    ${Boton_guardar_otros_datos}
    Click Element    ${Icono_no_generar_estado_cuenta}
    Sleep    7s
    Input Text When Element Is Visible    ${Caja_texto_bloquear_pagos}    ${Texto_bloqueo}
    Sleep    3s
    Click Element    ${Boton_bloquear}
    Sleep    5s
    Click Element    ${Notificacion_cliente_problematico_o_exitosa}
    Sleep    5s
    Click Element    ${Boton_guardar_otros_datos}    

Cierre de notificacion
    Sleep    5s
    Click Element    ${Notificacion_cliente_problematico_o_exitosa}

