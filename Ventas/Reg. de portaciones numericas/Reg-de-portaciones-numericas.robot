*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}

*** Variables ***
############################################################Login System################################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://ventas.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#############################################################Drops de Ventas########################################################################################
${ventas}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Ventas')]
############################################################Menu###############################################################################################################
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]/ul/li[1]
${Portaciones_numericas}    xpath=(//div[contains(.,'Reg. de Portaciones Numéricas')])[10]
##############################################################Tiempo##########################################################################################################
${time}    10s
##############################################################Combos########################################################################################################################
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-registry-portation-numeric-form/div/div[1]/form/div/div[1]/app-all-branch-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_numero_suscriptor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-registry-portation-numeric-form/div/div[1]/form/div/div[2]/dx-number-box/div/div[1]/input
${Combo_numero_a_portar}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Combo_vendedor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-registry-portation-numeric-form/div/div[1]/form/div/div[8]/app-salesman-portation-numeric-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
############################################################Registros de combos##############################################################################################################
${Sucursal}    xpath=//td[contains(.,'001')]
${suscriptor}    659610
${Vendedor_portacion_rechazada}    658243    
${Numero_ha_portar}    xpath=//td[contains(.,'6624412326')]
${Vendedor}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]
${Numero_ha_portar_rechazado}    xpath=//td[contains(.,'6626887308')]
##########################################################Botones#####################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
${Boton_enviar}    xpath=//span[contains(.,'Enviar')]
#####################################################Notificaciones########################################################################
${Close_notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Aviso_del_sistema}    xpath=(//div[contains(.,'¡AVISO DEL SISTEMA!')])[6]

*** Tasks ***
Pantalla registro de portaciones numericas y usuarios con permisos
    [Tags]    Validar inicio de sesion y navegación a la pantalla
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a ventas
    #Operaciones
    Ingresar a registros de portaciones numericas

Registros Vacios
    [Tags]    Validando registros Vacios
    Sucursal
    No de suscriptor
    Numero a portar
    Validando que no habilite el boton aceptar

Combos
    [Tags]    Validando combos
    Sucursal
    No de suscriptor
    Numero a portar
    Vendedor
    Boton limpiar

Generar Registro de Portaciones
    [Tags]    Validar que permita generar portaciones
    Sucursal
    No de suscriptor
    Numero a portar
    Vendedor
    Boton aceptar
    Cerrar notificacion

Numero portar ya ingresado
    [Tags]    Validando numero portar ya ingresado
    Sucursal
    No de suscriptor
    Numero a portar
    Vendedor
    Boton aceptar
    Cerrar notificacion

Portación rechazada
    [Tags]    Validar portacion rechazada
    Sucursal
    No de suscriptor rechazado
    Numero a portar rechazado
    Vendedor
    Boton aceptar
    Validando notificacion aviso del sistema


*** Keywords ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   ${time}
    
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresar a ventas
    [Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${ventas}

Operaciones
    [Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${Operaciones}

Ingresar a registros de portaciones numericas
    [Documentation]    Ingresamos al modulo de Catalogos
    Sleep    ${time}
    Click Element    ${Portaciones_numericas}

Sucursal
    [Documentation]    Ingresamos al modulo de Catalogos
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

No de suscriptor
    [Documentation]    No de suscriptor
    Sleep    ${time}
    Wait Until Element Is Visible    ${Combo_numero_suscriptor}
    Click Element    ${Combo_numero_suscriptor}
    Input Text    ${Combo_numero_suscriptor}    ${suscriptor}
    Sleep    4s
    Press Keys    ${Combo_numero_suscriptor}    ENTER


Numero a portar
    Wait Until Element Is Visible    ${Combo_numero_a_portar}
    Click Element    ${Combo_numero_a_portar}
    Wait Until Element Is Visible    ${Numero_ha_portar}
    Click Element    ${Numero_ha_portar}

Vendedor
    Wait Until Element Is Visible    ${Combo_vendedor}
    Click Element    ${Combo_vendedor}
    #Wait Until Element Is Visible    ${Vendedor}
    Sleep    6s
    Click Element    ${Vendedor}
    
Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Validando notificacion aviso del sistema
    #Wait Until Element Is Visible    ${Aviso_del_sistema}
    Sleep    7s
    ${Bandera_notificacion_aviso_del_sistema}=    Run Keyword And Return Status    Click Element    ${Boton_enviar}
    IF    '${Bandera_notificacion_aviso_del_sistema}' == 'True'
        Wait Until Element Is Visible    ${Close_notificacion}
        Click Element    ${Close_notificacion}
    ELSE
        Cerrar notificacion
    END

Cerrar notificacion
    Sleep    4s
    Click Element    ${Close_notificacion}


Validando que no habilite el boton aceptar
    Sleep    5s
    ${Bandera_para_verificar_que_no_este_activo_el_boton_aaceptar}=    Run Keyword And Return Status    Click Element    ${Boton_aceptar}
    IF    '${Bandera_para_verificar_que_no_este_activo_el_boton_aaceptar}' == 'True'
        Fail
    ELSE
        Boton limpiar
    END

Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

No de suscriptor rechazado
    [Documentation]    No de suscriptor
    Sleep    ${time}
    Wait Until Element Is Visible    ${Combo_numero_suscriptor}
    Click Element    ${Combo_numero_suscriptor}
    Input Text    ${Combo_numero_suscriptor}    ${Vendedor_portacion_rechazada}
    Sleep    4s
    Press Keys    ${Combo_numero_suscriptor}    ENTER

Numero a portar rechazado
    Wait Until Element Is Visible    ${Combo_numero_a_portar}
    Click Element    ${Combo_numero_a_portar}
    Wait Until Element Is Visible    ${Numero_ha_portar_rechazado}
    Click Element    ${Numero_ha_portar_rechazado}
