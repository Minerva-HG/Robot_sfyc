*** Settings ***
Documentation    Cajero
Library    String
Library    SeleniumLibrary
Library    RPA.Windows
#Library    Selenium2Library

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://servicios.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  ADGARCIAM                                           
${Pass}  zacatecas                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
######################Pantalla cajero###################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Pantallacajero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[1]
${Pantalla_cajeroQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
#####################Suscriptor######################################################################
${Combosuscriptores}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Iconoagregarsuscriptor}    xpath=//i[contains(@class,'dx-icon dx-icon-plus')]
${Input_suscriptor}    xpath=/html/body/div[2]/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-subscriber-search-container/dx-accordion/div/div[1]/dxi-item/div/form/div/app-subscriber-search-contract-form/form/div/dx-text-box/div[1]/div[1]/input
${Suscriptor}    0440601360
${Boton_consultar}    xpath=//span[contains(.,'Consultar')]
###################Variables para calcular##############################################################################################
${Cargasuscriptor}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]
${Notificacion_igresa_cajero}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[3]
${Combocargos}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Cargo}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[4]
${Boton_calcular}    xpath=//span[contains(.,'Calcular')]
#########################Cambo de domicilio##############################################################################################
${Grid_cambio_domicilio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[1]/div/div/div[2]/div[1]/span
${Nuevodomicilio}    xpath=//span[contains(.,'NUEVO')]
${Iconoagregardomicilio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-container/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-form/form/dx-tab-panel/div[1]/div/div/div/div/i
${Colonias}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-container/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-form/form/dx-tab-panel/div[2]/div/div/div/div/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-address-form/form/div[1]/app-neighbourhood-dropdown/dx-drop-down-box/div/div/div[2]
${Colonia}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[3]/td
${Calles}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-container/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-address-form/form/div[2]/app-street-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${Calle}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]
${Input_text_Numero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-container/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-address-form/form/div[4]/div[1]/dx-number-box/div/div[1]/input
${Numero}    2314
${Entrecalles}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-container/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-address-form/form/div[6]/app-street-dropdown/dx-drop-down-box/div/div/div[2]/div[2]/div/div
${Entrecalle}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[2]
${Combo_y_lacalle}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-container/dx-tab-panel/div[2]/div/div/div[2]/div/app-change-of-address-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-address-form/form/div[7]/app-street-dropdown/dx-drop-down-box/div/div/div[2]/div[2]/div/div
${Y_lacalle}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[4]
${Boton_enviar}    xpath=//div[@class='dx-button-content'][contains(.,'Enviar')]
${Notificacion_verde}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div
######################################################Botones#######################################################################################################
######################Boton abrir######################################################################################################################
${Gridcargos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[1]/div/div/div[1]/div/span
${Boton_abrir}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/app-charge-open-ticket/div/dx-button
${Registro_abrir}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div/div[2]/form/app-payment-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[2]/td[3]
${Iconoaceptar}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div/div[2]/form/div[3]/dx-button
########################Boton guardar##################################################################################################################
${Boton_guardar_pago}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/app-charge-save-payment/div/dx-button
########################Boton Capt. abonos##############################################################################################################
${Boton_cap_abonos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/app-cashier-account-bonification/div/dx-button
########################Boton imprimir tickets############################################################################################################
${Boton_imprimir_tickets}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/dx-button[1]
${Notificacion_reimprimir_ticket}    xpath=/html/body/div[2]/div/div[1]/div/div[1]/div/div/div
${Si_reimprimi_ticket}    xpath=//div[@class='dx-button-content'][contains(.,'SI')]
${No_imprimir_tickets}    xpath=//div[@class='dx-button-content'][contains(.,'NO')]
${Cerrar_mensaje_imprimir}    xpath=/html/body/div[2]/div/div[1]/div/div[3]/div/div/div
########################Boton notas de credito#################################################################################################################
${Boton_notas_credito}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/dx-button[2]
#########################Boton cancelar pagos#####################################################################################################################
${Boton_cancelar_pagos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/dx-button[3]
#########################Boton prom no aplicadas#################################################################################################################
${Boton_prom_no_aplicadas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/app-cashier-promotion-detail
#########################Boton tiempo aire######################################################################################################################
${Boton_tiempo_aire}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/app-recharge-form
#######################Boton pago equivocado###################################################################################################################
${Boton_pago_equivocado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/app-cashier-wrong-payment
${Input_suscriptor_pago_equivocado}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/form/div[1]/div[1]/dx-text-box/div[1]/div[1]/input
${Combo_folio_llamada}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/form/div[1]/div[2]/app-subscriber-call-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${folio_llamda}    xpath=
${Boton_aceptar_pago_equivocado}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/form/div[4]/dx-button[1]
${Boton_cancelar_pago_equivocado}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/form/div[4]/dx-button[2]
#######################Boton ingresar cajero#####################################################################################################################
${Boton_ingresar_cajero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cashier-container/div/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-charge-container/div/div/div[2]/app-cashier-login
${Notificacion_ingresar_cajero}    xpath=/html/body/div/div/div[1]/div/div[1]/div/div/div
${Combo_sucursal}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div/div[2]/form/div/div[1]/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Sucursal}    xpath=(//td[contains(.,'Guadalajara')])[1]
${Combo_cis}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div/div[2]/form/div/div[2]/app-cis-filter-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${CIS}    xpath=(//td[contains(.,'CIS DEPTO INGRESOS')])[2]
${Campo_contraseña}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div/div[2]/form/div/div[3]/dx-text-box/div/div[1]/input
${Contraseña}    CCN123456 
${Boton_aceptar_cajero}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div/div[2]/form/div/dx-button
${Cerrar_aviso_sistema_yellow}    xpath=/html/body/div[2]/div/div[1]/div/div[3]/div/div/div/div/i
######################Grids###############################################################################################################################
${Grid_solo_cargos}    xpath=(//div[contains(.,'Solo cargos')])[24]
${Grid_al_corte}    xpath=(//div[contains(.,'Al corte')])[24]
${Grid_suspension}    xpath=(//div[contains(.,'Suspensión')])[24]
${Grid_cargos_diferidos}    xpath=(//div[contains(.,'Cargos diferidos')])[24]
${Grid_estado_cuenta}    xpath=(//div[contains(.,'Edo. cuenta')])[24]
${Grid_cargos_vta_cre}    xpath=(//div[contains(.,'Cargos vta. CRE/CON')])[24]
${Recorrer_grids}    xpath=//i[contains(@class,'dx-icon dx-icon-chevronnext')]
${Grid_solo_ppv}    xpath=(//div[contains(.,'Solo PPV')])[24]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Cajero
    [Tags]    Ingresar usuario
    Set Selenium Timeout    15
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test screen cajero
    [Documentation]    Cajero
    [Tags]    Pantalla cajero
    Pantalla cajero

Test calcular
    [Documentation]    Cajero
    [Tags]    Calcular
    Set Selenium Timeout    15
    Suscriptor
    Combo cargos
    Calcular

Test cambio de domicilio
    [Documentation]    Cajero
    [Tags]    Cambio de domicilio
    Cambio de domiclio
    
Test grids 
    [Documentation]    Cajero
    [Tags]    Grids
    Set Selenium Timeout    15
    Grids 

Test funcion de botones activos
    [Documentation]    Cajero
    [Tags]    Botones activos
    Funcion de botones activos
    


*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}  
    Click Element    ${BotondominioQA}
    Click Element    ${SFyCQA}  
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    name:button

Pantalla cajero
    Sleep    15s
    #MODULO CONTROL Click Element    ${Moduloservicios}
    #MODULO CONTROL Wait Until Element Is Visible    ${Pantallacajero}
    #MODULO CONTROLClick Element    ${Pantallacajero}
    Click Element    ${Pantalla_cajeroQA}

Suscriptor
    Sleep    5s
    Click Element    ${Combosuscriptores}
    Wait Until Element Is Visible    ${Iconoagregarsuscriptor}
    Click Element    ${Iconoagregarsuscriptor}
    Wait Until Element Is Visible    ${Input_suscriptor}
    Input Text    ${Input_suscriptor}    ${Suscriptor}
    Wait Until Element Is Visible    ${Boton_consultar}
    Click Element    ${Boton_consultar}
    Sleep    5s
    Click Element    ${Cargasuscriptor}
    Sleep    10s
    Click Element    ${Notificacion_igresa_cajero}

Combo cargos
    Sleep    5s
    Scroll Element Into View    ${Combocargos}
    Click Element    ${Combocargos}
    Sleep    5s
    Click Element    ${Cargo}

Calcular
    Wait Until Element Is Visible    ${Boton_calcular}    
    Click Element    ${Boton_calcular}

Cambio de domiclio
    Sleep    10s
    ${banderaparagridcambiodomicilio}=  Run Keyword And Return Status    Click Element   ${Grid_cambio_domicilio} 
    IF    '${banderaparagridcambiodomicilio}' == 'False'
        Cambio de domiclio
    ELSE
        Sleep    5s
        ${Banderagridnuevoactivo}=   Run Keyword And Return Status    Click Element    ${Nuevodomicilio}
        IF    '${Banderagridnuevoactivo}' == 'False'
            Log To Console    'El suscriptor tiene adeudo,agrega en la variable suscriptor un suscriptor que no tenga adeudo'
            Sleep    20s
            Suscriptor
            Cambio de domiclio
        END
        Sleep    5s
        Click Element    ${Iconoagregardomicilio}
        Wait Until Element Is Visible    ${Colonias}
        Click Element    ${Colonias}
        Sleep    5s
        Click Element    ${Colonia}
        Wait Until Element Is Visible    ${Calles}
        Click Element    ${Calles}
        Sleep    5s
        Click Element    ${Calle}
        Wait Until Element Is Visible    ${Input_text_Numero}
        Click Element    ${Input_text_Numero}
        Input Text    ${Input_text_Numero}    ${Numero}
        Wait Until Element Is Visible    ${Entrecalles}
        Click Element    ${Entrecalles}
        Sleep    5s
        Click Element    ${Entrecalle}
        Wait Until Element Is Visible    ${Combo_y_lacalle}
        Click Element    ${Combo_y_lacalle}
        Sleep    5s
        Click Element    ${Y_lacalle}
        Sleep    5s
        Click Element    ${Boton_enviar}
        Sleep    5s
        Click Element    ${Notificacion_verde}
        Sleep    5s
        Click Element    ${Gridcargos}
    END
   
Funcion de botones activos
    Sleep    5s  
    ${Botonactivo_guardar_pago}=  Run Keyword And Return Status    Click Element    ${Boton_guardar_pago}
    IF    '${Botonactivo_guardar_pago}' == 'True'
        #Acciones boton guardar
        Log To Console    'El boton guardar esta activo'
    END
    
    ${Botonactivo_abrir}=  Run Keyword And Return Status    Click Element    ${Boton_abrir}
    IF    '${Botonactivo_abrir}' == 'True'
        Sleep    5s
        Click Element    ${Registro_abrir}
        Sleep    5s
        Click Element    ${Registro_abrir}
        Click Element    ${Registro_abrir}
        Sleep    5s
        Click Element    ${Iconoaceptar}
        Wait Until Element Is Visible    ${Boton_abrir}
    END

    ${Botonactivo_capturar_bonos}=  Run Keyword And Return Status    Click Element    ${Boton_cap_abonos}
    IF    '${Botonactivo_capturar_bonos}' == 'True'
        #Acciones boton Capt. abonos
        Log To Console    'El boton capturar abonos esta activo'
    END

    #${Botonactivo_imprimir_tickets}=  Run Keyword And Return Status    Click Element    ${Boton_imprimir_tickets}
    #IF    '${Botonactivo_imprimir_tickets}' == 'True'
        #Wait Until Element Is Visible    ${Si_reimprimi_ticket}
        #++Click Element    ${Si_reimprimi_ticket}
        #++Set Selenium Implicit Wait    ${Boton_imprimir_tickets}
        #++Click Element    ${Boton_imprimir_tickets}
        #++Wait Until Element Is Visible    ${No_imprimir_tickets} 
        #Click Element    ${No_imprimir_tickets}     
        #Wait Until Element Is Visible    ${Boton_imprimir_tickets}
        #Log To Console    'El boton imprimir tickets esta activo' 
    #END


    #${Botonactivo_notas_de_credito}=  Run Keyword And Return Status    Click Element    ${Boton_notas_credito}
    #IF    '${Botonactivo_notas_de_credito}' == 'True'
        #Wait Until Element Is Visible    ${Si_reimprimi_ticket}
        #++Click Element    ${Si_reimprimi_ticket}
        #++Set Selenium Implicit Wait    ${Boton_notas_credito}
        #++Click Element    ${Boton_notas_credito}
        #++Wait Until Element Is Visible    ${No_imprimir_tickets}    
        #Click Element    ${No_imprimir_tickets}
        #Wait Until Element Is Visible    ${Boton_notas_credito}
        #Log To Console    'El boton notas credito esta activo'
    #END

    
    ${Botonactivo_cancelar_pagos}=  Run Keyword And Return Status    Click Element    ${Boton_cancelar_pagos}
    IF    '${Botonactivo_cancelar_pagos}' == 'True'
        #Acciones boton cancelar pagos
        Click Element    ${Boton_cancelar_pagos}
        Log To Console    'El boton cancelar pagos esta activo'
    END

    ${Botonactivo_prom_no_aplicadas}=  Run Keyword And Return Status    Click Element    ${Boton_prom_no_aplicadas}
    IF    '${Botonactivo_prom_no_aplicadas}' == 'True'
        #Acciones boton promociones no aplicadas
        Log To Console    'El boton promociones no aplicadas esta activo'
    END    

    ${Botonactivo_tiempo_aire}=  Run Keyword And Return Status    Click Element    ${Boton_tiempo_aire}
    IF    '${Botonactivo_tiempo_aire}' == 'True'
        #Acciones boton tiempo aire
        Log To Console    'El boton tiempo aire esta activo'
    END    

    ${Botonactivo_pago_equivocado}=  Run Keyword And Return Status    Click Element    ${Boton_pago_equivocado}
    IF    '${Botonactivo_pago_equivocado}' == 'True'
        Sleep    5s
        Input Text    ${Input_suscriptor_pago_equivocado}    ${Suscriptor}
        Press Keys   ${Input_suscriptor_pago_equivocado}    ENTER
        Sleep    5s
        Click Element    ${Combo_folio_llamada}
        #Wait Until Element Is Visible    ${folio_llamda}
        #Click Element    ${folio_llamda}
        Sleep    5s
        #Click Element    ${Boton_aceptar_pago_equivocado}
        #Set Selenium Implicit Wait    ${Boton_pago_equivocado}
        #Click Element    ${Boton_pago_equivocado}
        Click Element    ${Combo_folio_llamada}
        Wait Until Element Is Visible    ${Boton_cancelar_pago_equivocado}
        Click Element    ${Boton_cancelar_pago_equivocado}
        Log To Console    'El boton pago equivocado esta activo'
    END   
    
    ${Botonactivo_ingresar_cajero}=  Run Keyword And Return Status    Click Element    ${Boton_ingresar_cajero}
    IF    '${Botonactivo_ingresar_cajero}' == 'True'
        Sleep    5s
        Click Element    ${Combo_sucursal}
        Sleep    5s
        Click Element    ${Sucursal}
        Wait Until Element Is Visible    ${Combo_cis}
        Click Element    ${Combo_cis}
        Sleep    5s
        Click Element    ${CIS}
        Input Text    ${Campo_contraseña}    ${Contraseña}
        Sleep    5s
        Click Element    ${Boton_aceptar_cajero}
    END   

Grids
    Sleep    5s
    Click Element    ${Grid_solo_cargos}
    Wait Until Element Is Visible    ${Grid_al_corte}
    Click Element    ${Grid_al_corte}
    Wait Until Element Is Visible    ${Grid_suspension}
    Click Element    ${Grid_suspension}
    Wait Until Element Is Visible    ${Grid_cargos_diferidos}
    Click Element    ${Grid_cargos_diferidos}
    Wait Until Element Is Visible    ${Grid_estado_cuenta}
    Click Element    ${Grid_estado_cuenta}
    Wait Until Element Is Visible    ${Grid_cargos_vta_cre}
    Click Element    ${Grid_cargos_vta_cre}
    Wait Until Element Is Visible    ${Recorrer_grids}
    Click Element    ${Recorrer_grids}
    Click Element    ${Recorrer_grids}
    Click Element    ${Recorrer_grids}
    Wait Until Element Is Visible    ${Grid_solo_ppv}
    Click Element    ${Grid_solo_ppv}
#Imprimir ticket 
