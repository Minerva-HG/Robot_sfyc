*** Settings ***
Documentation    Supervision de cajeros
Library    String
Library    SeleniumLibrary
Library    RPA.Windows
#Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.dev-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui      
${Usuario}  softteck01                                           
${Pass}  123456c                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
######################Pantalla supervision de cajeros#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Supervision}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]
${SupervisionQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Cajero_dev}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]/ul/li[2]
${Cajero_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[2]
${Bloqueo_origen}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]/ul/li[7]/div/div/span
#####################Scroll prueba reportes de servicios#############################################################################################
${Prueba_reportes_de_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]/ul/li[8]
#####################Combo cajero#####################################################################################################################
${Combo_cajero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-config-cashier-container/div/app-config-cashier-form/form/div[1]/app-cashier-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${Cajero}    xpath=//td[contains(.,'99')]
####################Boton aceptar#####################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
###################Agregar registro############################################################
${Icono_agregar}    xpath=//span[@class='dx-button-text'][contains(.,'Agregar')]
${Agregar_importe}    xpath=/html/body/div[2]/div/div[1]/div/div[1]/div/div/div
${Combo_tipo}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Metodo_pago}    xpath=//td[contains(.,'Pago en Banco')]
${Campo_deposito}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Cantidad_de_deposito}    1717
${Boton_agregar}    xpath=(//div[contains(.,'Agregar')])[16]
#################Boton eliminar#################################################################
${Boton_eliminar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-config-cashier-container/div/div[3]/div/dx-button[2]/div
${Registro_ha_eliminar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-config-cashier-container/div/app-config-cashier-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]
#################Boton bloquear################################################
${Boton_bloquear}    xpath=//span[contains(.,'Bloquear')]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Supervisión de cajeros
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test pantalla supervision de cajeros
    [Documentation]    Supervision de cajeros
    [Tags]    Pantalla supervision de cajeros
    Pantalla supervision de cajeros

Test combo cajero
    [Documentation]    Supervision de cajeros
    [Tags]    Combo cajero
    Combo cajero

Test boton aceptar
    [Documentation]    Supervision de cajeros
    [Tags]    Boton aceptar
    Boton aceptar

Test agregar un registro
    [Documentation]    Supervision de cajeros
    [Tags]    Nuevo registro
    Registro nuevo
    
Test boton eliminar
    [Documentation]    Supervision de cajeros
    [Tags]    Boton eliminar
    Boton eliminar
    
Test boton bloquear
    [Documentation]    Supervision de cajeros
    [Tags]    Boton bloquear
    Boton bloquear



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

Pantalla supervision de cajeros
    Sleep    10s
    Click Element   ${Moduloservicios}
    Wait Until Element Is Visible    ${Supervision}
    Click Element    ${Supervision}
    #QAClick Element    ${SupervisionQA}
    Sleep    5s
    Scroll Element Into View    ${Bloqueo_origen}
    Wait Until Element Is Visible    ${Cajero_dev}
    Click Element    ${Cajero_dev}
    #QAClick Element    ${Cajero_QA}

Combo cajero
    Sleep    5s
    Click Element    ${Combo_cajero}
    #Wait Until Element Is Visible    ${Cajero}
    Sleep    10s
    Click Element    ${Cajero}

Boton aceptar
    Sleep    5s
    Click Element    ${Boton_aceptar}

Registro nuevo
    Sleep    5s
    Click Element    ${Icono_agregar}
    Wait Until Element Is Visible    ${Boton_agregar}
    Sleep    5s
    Click Element    ${Combo_tipo}
    Wait Until Element Is Visible    ${Metodo_pago}
    Click Element    ${Metodo_pago}
    Wait Until Element Is Visible    ${Campo_deposito}
    Input Text     ${Campo_deposito}    ${Cantidad_de_deposito}
    Sleep    5s
    Click Element    ${Boton_agregar}
    Sleep    5s
    Click Element    ${Boton_aceptar}

Boton eliminar
    Sleep    5s
    Click Element    ${Registro_ha_eliminar}
    Wait Until Element Is Visible    ${Boton_eliminar}
    Click Element    ${Boton_eliminar}

Boton bloquear
    Sleep    5s
    Click Element    ${Boton_bloquear}