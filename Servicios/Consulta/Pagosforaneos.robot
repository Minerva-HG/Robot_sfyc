*** Settings ***
Documentation    Consulta de saldos en cis
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List     JORIOSPE    RCAMINOS    VMAGALLANESI    GRSOTOM    IESTRADAV    MAPARRAR    LPLOZANO    LMORALESA    AGARCIA                          
@{passL}=    Create List     0    metro1234    Megacable2023    Mega2022    Mega123    Mega1234    Chatito.    Mega123    Jeshua1982                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
######################Pantalla consulta Foráneos#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Consulta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/div[1]/div
${Saldo_de_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/ul/li[3]
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
${Consulta_foraneos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/ul/li[4]
######################Cargando suscriptor###############################################################################################
${Combo_suscriptor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/app-header/header/div/div[2]/div[1]/app-subscriber-search-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Icono_agregar}    xpath=//i[contains(@class,'dx-icon dx-icon-plus')]
${Campo_suscriptor}    xpath=/html/body/div[2]/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-subscriber-search-container/dx-accordion/div/div[1]/dxi-item/div/form/div/app-subscriber-search-contract-form/form/div/dx-text-box/div[1]/div[1]/input
${Suscriptor}    0410568657
${Boton_consultar}    xpath=//span[contains(.,'Consultar')]
${Selecciona_suscriptor}    xpath=//td[contains(.,'0410568657')]
####################Botones dentro de la pantalla PAGOS FORÁNEOS####################################################################
${Boton_consulta_saldo}    xpath=//span[contains(.,'Consulta Saldo')]
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]    
${Boton_cancelar}    xpath=(//div[@class='dx-button-content'][contains(.,'Cancelar')])[2]
####################Checkbox############################################################################################
${Checkbox_saldo_anterior}    xpath=//span[contains(@class,'dx-checkbox-icon')]
#########################Cierre de nnotificaciones################################################################################
${Notificacion_sin_adeudos}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
############################Ingresando a cajero##########################################################################
${Combo_sucursal}    xpath=//input[contains(@aria-describedby,'dx-a2a939a9-2cb7-1237-bcd9-786debde52eb')]
${Sucursal}    xpath=//td[contains(.,'Guadalajara')]
${Combo_cis}    xpath=//input[contains(@aria-invalid,'true')]
${Cis}    xpath=//td[contains(.,'CENTRAL')]
${Campo_contraseña}    xpath=//input[contains(@type,'password')]
${Contraseña}    marina66  
${Boton_aceptar_cajero}    xpath=(//div[@class='dx-button-content'][contains(.,'Aceptar')])[2]  

*** Test Cases ***
Usuarios "PERMITE_PAGOS_FORANEOS"
    [Documentation]    Consulta Foráneos 
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     

Pantalla PAGOS FORÁNEOS
    [Documentation]    Consulta Foráneos
    [Tags]    Pantalla consulta de saldos en cis
    Pantalla pagos foráneos

Consultar Saldo Foraneo
    [Documentation]    Consulta Foráneos
    [Tags]    Consultar saldo foraneo
    Ingresando suscriptor
    Boton consulta saldo
    Validando si existe alguna notificación
    #Notificacion

Aceptar
    [Documentation]    Consulta Foráneos
    [Tags]    Aceptar
    Boton aceptar

Ventana cajeros
    [Documentation]    Consulta Foráneos
    [Tags]    Ventana cajeros
    Sucursal
    CIS
    Contraseña
    Boton aceptar cajero

Datos Vacios
    Boton limpiar

Cancelar
    Boton cancelar
    Sleep    25s

    


*** Keyword ***
Ingresar usuario contrasena
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
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Pantalla pagos foráneos
    Sleep    10s
    Click Element   ${Moduloservicios}
    Sleep    5s
    Scroll Element Into View    ${Reportes}
    Wait Until Element Is Visible    ${Consulta} 
    Click Element    ${Consulta}
    Sleep    5s
    Scroll Element Into View    ${Reportes}
    Click Element    ${Consulta_foraneos}

Ingresando suscriptor
    Wait Until Element Is Visible    ${Checkbox_saldo_anterior}
    Click Element    ${Combo_suscriptor}
    Wait Until Element Is Visible    ${Icono_agregar}
    Click Element    ${Icono_agregar}
    Wait Until Element Is Visible    ${Campo_suscriptor}
    #Sleep    5s
    Click Element    ${Campo_suscriptor}
    Input Text    ${Campo_suscriptor}    ${Suscriptor}
    Scroll Element Into View    ${Boton_consultar}
    Wait Until Element Is Visible    ${Boton_consultar}
    Click Element    ${Boton_consultar}
    Wait Until Element Is Visible    ${Selecciona_suscriptor}
    Click Element    ${Selecciona_suscriptor}

Boton consulta saldo
    Wait Until Element Is Visible    ${Boton_consulta_saldo}
    Click Element    ${Boton_consulta_saldo}

Validando si existe alguna notificación
    Sleep    35s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Notificacion_sin_adeudos}
    IF    '${Bandera_notificacion}' == 'True'
        Click Element    ${Notificacion_sin_adeudos}
    END

Boton aceptar
    Scroll Element Into View    ${Boton_aceptar}
    Sleep    5s
    Click Element    ${Boton_aceptar}

Sucursal
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

CIS
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}

Contraseña
    Wait Until Element Is Visible    ${Campo_contraseña}
    Click Element    ${Campo_contraseña}
    Input Text    ${Campo_contraseña}    ${Contraseña}

Boton aceptar cajero
    Wait Until Element Is Visible    ${Boton_aceptar_cajero}
    Click Element    ${Boton_aceptar_cajero}

Boton limpiar
    Scroll Element Into View    ${Boton_limpiar}
    Sleep    5s
    Click Element    ${Boton_limpiar}

Boton cancelar
    Scroll Element Into View    ${Boton_cancelar}
    Sleep    5s
    Click Element    ${Boton_cancelar}