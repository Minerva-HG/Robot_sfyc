*** Settings ***
Documentation    Consulta de saldos en cis
Library    String
Library    SeleniumLibrary
Library    RPA.Windows

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
######################Pantalla consulta de saldos en cis#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Consulta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/div[1]/div
${Saldo_de_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/ul/li[3]
###########################Scroll pantalla reportes#################################################################################################################################
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
###########################Combo calendario#####################################################################################################################################
${Icono_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
###########################Consultar saldo############################################################################################################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
######################################Filtros###############################################################################################################################################
${Filtro_1}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-cis-balance-container/div/app-cis-balance-grid/dx-data-grid/div/div[5]/div[1]/table/tbody/tr/td[1]/div[1]/span[1]
${Dato_1_ha_filtrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Boton_aceptar_filtro}    xpath=(//span[contains(.,'Aceptar')])[2]
${Filtro_2}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-cis-balance-container/div/app-cis-balance-grid/dx-data-grid/div/div[5]/div[1]/table/tbody/tr/td[2]/div[1]/span[2]
${Dato_2_ha_filtrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
#######################################Campos vacios#################################################################################################################################
${Campo_vacio}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]

*** Test Cases ***
Ingresar usuario
    [Documentation]    Consulta de saldos en cis
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     

Pantalla consulta de saldos en cis
    [Documentation]    Consulta de saldos en cis
    [Tags]    Pantalla consulta de saldos en cis
    Pantalla consulta de saldos en cis
    
Combo fecha
    [Documentation]    Consulta de saldos en cis
    [Tags]    Combo fecha
    Test combo fecha

Consultar saldo
    [Documentation]    Consulta de saldos en cis
    [Tags]    Consultar saldo
    Test consultar saldo

Filtros
    [Documentation]    Consulta de saldos en cis
    [Tags]    Filtros
    Test filtros

Campos vacios
    [Documentation]    Consulta de saldos en cis
    [Tags]    Campos vacios
    Test campos vacios

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

Pantalla consulta de saldos en cis
    Sleep    10s
    Click Element   ${Moduloservicios}
    Sleep    5s
    Scroll Element Into View    ${Reportes}
    Wait Until Element Is Visible    ${Consulta} 
    Click Element    ${Consulta}
    Sleep    15s
    Scroll Element Into View    ${Reportes}
    Click Element    ${Saldo_de_cis}

Test combo fecha
    Sleep    6s
    Click Element    ${Icono_fecha}
    Sleep    5s
    Click Element    ${Fecha}

Test consultar saldo
    Sleep    5s
    Click Element    ${Boton_aceptar}


Test filtros
    Sleep    5s
    ${Bandera_filtro_activo}=    Run Keyword And Return Status    Click Element    ${Filtro_1}
    IF    '${Bandera_filtro_activo}' == 'True'
        Sleep    5s
        Click Element    ${Dato_1_ha_filtrar}
        Sleep    3s
        Click Element    ${Boton_aceptar_filtro}  
        Sleep    10s
        Click Element    ${Filtro_1}
        Wait Until Element Is Visible    ${Dato_1_ha_filtrar}
        Click Element    ${Dato_1_ha_filtrar}
        Sleep    3s
        Click Element    ${Boton_aceptar_filtro}  
        Sleep    5s
        Click Element    ${Filtro_2}
        Wait Until Element Is Visible    ${Dato_2_ha_filtrar}
        Click Element    ${Dato_2_ha_filtrar}
        Sleep    3s
        Click Element    ${Boton_aceptar_filtro} 
        Sleep    10s
        Click Element    ${Filtro_2}
        Wait Until Element Is Visible    ${Dato_2_ha_filtrar}
        Click Element    ${Dato_2_ha_filtrar}
        Sleep    3s
        Click Element    ${Boton_aceptar_filtro}
    ELSE
        Test filtros
    END    
 
 Test campos vacios
    Sleep    5s
    Click Element    ${Campo_vacio}
    