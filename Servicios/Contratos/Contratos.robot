*** Settings ***
Documentation    Contratos
Library    String
Library    SeleniumLibrary
#Library    AutoItLibrary
#Library    RPA.Windows
#Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
#Validacion de usuarios
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://servicios.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  MBELTRANG      #ADGARCIAM                                           
${Pass}     Mega2022       #zacatecas                       
${Botondominio}    xpath=//select[contains(@id,'Domain')]
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Pantalla contratos
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${PantallaContratos}    xpath=//span[contains(.,'Contratos')]
#Ingresar suscriptor
${dropSuscriptor}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${plus}    xpath=(//i[@class='dx-icon dx-icon-plus'])[2]
${InputSuscriptor}    xpath=//input[contains(@maxlength,'10')]
${Suscriptor}    0440601389    
${SuscriptorConFact}    0440034065     #0440003245    #0440034065
${Consultar}    xpath=//span[@class='dx-button-text'][contains(.,'Consultar')]
    #${Registro_suscriptor_con_facturacion}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]

#Pantalla Domicilio
${Domicilio}    xpath=//span[contains(.,'Domicilio')]
#Pantalla Facturación

#Pantalla Otros Datos

#Pantalla Orden Trabajo

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
${Grid_otros_datos}    xpath=(//div[contains(.,'Otros Datos')])[17]
#################Modificar datos##########################################################
${Combo_medio_por_el_que_se_entero}    xpath=//body/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-contract-container[1]/div[1]/div[2]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[4]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-other-data-container[1]/form[1]/div[1]/div[2]/div[2]/div[1]/app-ballot-informed-by-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]
${Medio_por_el_cual_se_entero}    xpath=//td[contains(text(),'TELEVISIÓN')]
${Checkbox_de_14_22_años}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4] 
${Combo_tipo_suscriptores}    xpath=//body/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-contract-container[1]/div[1]/div[2]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[4]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-other-data-container[1]/form[1]/div[1]/div[1]/div[2]/div[5]/app-type-subscriber-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]
${TipoSuscriptor}    xpath=//td[contains(.,'CLIENTES A CRÉDITO')]
${Combo_tipos_problemas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Tipo_problema}    xpath=//td[contains(.,'Cheque Devuelto')]
${Checbox_detener_corte}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Boton_guardar_otros_datos}    xpath=//span[@class='dx-button-text'][contains(.,'Guardar')]
${Boton_bloquear}    xpath=//div[@class='dx-button-content'][contains(.,'Bloquear')]
${Icono_no_generar_estado_cuenta}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[10]
######################Notificacion cliente problematico##########################################################################################################
${Notificacion_cliente_problematico_o_exitosa}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
######################Bloquear pagos web#############################################
${Caja_texto_bloquear_pagos}    xpath=//textarea[contains(@maxlength,'20')]
${Texto_bloqueo}    Sin método de pago
#${Boton_bloquear}    xpath=


*** Test Cases ***
Test ingresar usuario
    [Documentation]    Contratos
    [Tags]    Ingresar usuario
    Open Browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Sleep    5s
    Ingresar usuario contrasena

Test pantalla contratos
    [Documentation]    Contratos
    [Tags]    Pantalla contratos
    Pantalla contratos

Test ingresar suscriptor
    [Documentation]    Contratos
    [Tags]    Ingresar suscriptor
    Ingresar suscriptor

Test contrato con facturacion
    [Documentation]    Contratos
    [Tags]    Contrato con facturacion
    Suscriptor con contrato con facturacion
    Validando que el contrato ingresado NO sea un cliente problematico
    #Datos adicionales
    #Boton guardar

Test grid otros datos
    [Documentation]    Contratos
    [Tags]    Pantalla otros datos
    Grid otros datos
    Validando que el contrato ingresado NO sea un cliente problematico
    Modificar datos
    Cierre de notificacion

*** Keyword ***
Ingresar usuario contrasena
    Sleep    2s
    Wait Until Page Contains Element    ${Localizadorpagina}   
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}     
    Click Element    name:button

Pantalla contratos
    Sleep    10s
    #Click Element   ${Moduloservicios}
    Wait Until Element Is Visible    ${PantallaContratos}
    Sleep    5s
    Click Element    ${PantallaContratos}
    Sleep    5s    #Click Element    ${Pantalla_cajeroQA}

Ingresar suscriptor
    Sleep    5s
    Click Element   ${dropSuscriptor}
    Sleep    5s
    Click Element   ${plus}
    Sleep    5s
    Input Text   ${Input_suscriptor}    ${Suscriptor}
    Sleep    5s
    Scroll Element Into View    ${Consultar}
    Click Element   ${Consultar}
    Sleep    7s    

Suscriptor con contrato con facturacion
    Sleep    5s
    Click Element   ${dropSuscriptor}
    Sleep    5s
    Click Element   ${plus}
    Sleep    5s
    Input Text   ${Input_suscriptor}    ${SuscriptorConFact}
    Sleep    5s
    Scroll Element Into View    ${Consultar}
    Click Element   ${Consultar}
    Sleep    7s
   # Wait Until Element Is Visible    ${Registro_suscriptor_con_facturacion}
   # Click Element    ${Registro_suscriptor_con_facturacion}

Validando que el contrato ingresado NO sea un cliente problematico
    Sleep    5s
    ${Bandera_notificacion_cliente_problematico}=  Run Keyword And Return Status    Click Element    ${Notificacion_cliente_problematico_o_exitosa}
    IF    '${Bandera_notificacion_cliente_problematico}' == 'True'
        Log To Console    Es un cliente problematico, favor de ingresar en la variable suscriptor uno que no sea problematico
        Sleep    10s
        Close Browser
    END

Datos adicionales
    Sleep    5s
    Click Element    ${Combo_uso_cfdi}
    Click Element    ${CFDI}
    Click Element    ${Combo_regimen_fiscal}
    Sleep    5s
    Click Element    ${Regimen_fiscal}

Boton guardar
    Sleep    5s
    Click Element    ${Boton_guardar}
    Sleep    5s
    Click Element    ${Icon_close}

Grid otros datos
    Sleep    5s
    Click Element    ${Grid_otros_datos}

Modificar datos
    Sleep    5s
    #Scroll Element Into View    ${Combo_medio_por_el_que_se_entero}
    #Sleep    5s
    Click Element    ${Combo_medio_por_el_que_se_entero}
    Sleep    5s
   # Wait Until Element Is Visible    ${Medio_por_el_cual_se_entero}
    Click Element    ${Medio_por_el_cual_se_entero}
    Sleep    2s
    Click Element    ${Checkbox_de_14_22_años}
    Sleep    2s
    Scroll Element Into View    ${Boton_guardar_otros_datos} 
    Wait Until Element Is Visible    ${Combo_tipo_suscriptores}
    Click Element    ${Combo_tipo_suscriptores}
    Sleep    5s
    Click Element    ${TipoSuscriptor}
    Wait Until Element Is Visible    ${Combo_tipos_problemas}
    Click Element    ${Combo_tipos_problemas}
    Wait Until Element Is Visible    ${Tipo_problema}
    Click Element    ${Tipo_problema}
    Sleep    5s
    #Click Element    ${Combo_tipos_problemas}
    Wait Until Element Is Visible    ${Checbox_detener_corte}
    Click Element    ${Checbox_detener_corte}
    Scroll Element Into View    ${Boton_guardar_otros_datos}
    Wait Until Element Is Visible    ${Boton_guardar_otros_datos}
    Click Element    ${Icono_no_generar_estado_cuenta}
    Sleep    7s
    Input Text    ${Caja_texto_bloquear_pagos}    ${Texto_bloqueo}  
    Sleep    3s
    Click Element    ${Boton_bloquear}
    Sleep    5s
    #Wait Until Page Contains Element    ${Notificacion_cliente_problematico_o_exitosa}
    #Execute Javascript    document.querySelector(('${Notificacion_cliente_problematico_o_exitosa}.close-button').click())
    #Click Element    ${Notificacion_cliente_problematico_o_exitosa}
    Sleep    5s
    Click Element    ${Boton_guardar_otros_datos}    

Cierre de notificacion
    Sleep    5s
    #Click Element    ${Notificacion_cliente_problematico_o_exitosa}

