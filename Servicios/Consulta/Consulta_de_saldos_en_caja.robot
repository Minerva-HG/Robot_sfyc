*** Settings ***
Documentation    Consulta de saldos en caja
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
######################Pantalla consulta de saldos en caja#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Consulta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/div[1]/div
${Saldo_de_cajas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/ul/li[2]
###########################Scroll pantalla reportes#################################################################################################################################
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
############################Combo CIS#####################################################################################################################################################
${Combo_cis}    xpath=(//input[contains(@autocomplete,'off')])[4]
${CIS}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')] 
############################Combo fecha#################################################################################
${Icono_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
###########################Consultar saldo############################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
###########################Filtros#########################################################
${Filtro_1}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cash-balance-container/div/app-cash-balance-grid/dx-data-grid/div/div[5]/div[1]/table/tbody/tr/td[1]/div[1]/span[1]
${Campo_1_ha_filtrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Boton_aceptar_filtro}    xpath=(//span[contains(.,'Aceptar')])[2]
${Filtro_2}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-cash-balance-container/div/app-cash-balance-grid/dx-data-grid/div/div[5]/div[1]/table/tbody/tr/td[2]/div[1]/span[2]
${Campo_2_ha_filtrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Consulta de saldos en caja
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     

Test pantalla consulta de saldos en caja
    [Documentation]    Consulta de saldos en caja
    [Tags]    Pantalla consulta de saldos en caja
    Pantalla consulta de saldos en caja
    
Test combo cis
    [Documentation]    Consulta de saldos en caja
    [Tags]    Combo cis
    Combo cis

Test combo fecha
    [Documentation]    Consulta de saldos en caja
    [Tags]    Combo fecha
    Combo fecha

Test consultar saldo
    [Documentation]    Consulta de saldos en caja
    [Tags]    Consultar saldo
    Consultar saldo

Test filtros 
    [Documentation]    Consulta de saldos en caja
    [Tags]    Filtros
    Filtros


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

Pantalla consulta de saldos en caja
    Sleep    10s
    Click Element   ${Moduloservicios}
    Sleep    5s
    Scroll Element Into View    ${Reportes}
    Wait Until Element Is Visible    ${Consulta} 
    Click Element    ${Consulta}
    Sleep    15s
    Scroll Element Into View    ${Reportes}
    Click Element    ${Saldo_de_cajas}

Combo cis
    Sleep    5s
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${CIS}      
    Click Element    ${CIS}

Combo fecha
    Sleep    5s
    Click Element    ${Icono_fecha}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha} 

Consultar saldo
    Sleep    5s
    Click Element    ${Boton_aceptar}

Filtros
    Sleep    5s
    ${Bandera_filtro_1}=    Run Keyword And Return Status    Click Element    ${Filtro_1}    
    IF    '${Bandera_filtro_1}' == 'True'
        Sleep    5s
        Click Element    ${Campo_1_ha_filtrar}
        Wait Until Element Is Visible    ${Boton_aceptar_filtro}
        Click Element    ${Boton_aceptar_filtro}
        Sleep    10s
        Click Element    ${Filtro_1}
        Sleep    5s
        Click Element    ${Campo_1_ha_filtrar}
        Wait Until Element Is Visible    ${Boton_aceptar_filtro}
        Click Element    ${Boton_aceptar_filtro}
        Sleep    5s    
        Click Element    ${Filtro_2}  
        Sleep    5s
        Click Element    ${Campo_2_ha_filtrar}
        Wait Until Element Is Visible    ${Boton_aceptar_filtro}
        Click Element    ${Boton_aceptar_filtro}
        Sleep    10s
        Click Element    ${Filtro_2}  
        Sleep    5s
        Click Element    ${Campo_2_ha_filtrar}
        Wait Until Element Is Visible    ${Boton_aceptar_filtro}
        Click Element    ${Boton_aceptar_filtro}
    ELSE
        Filtros
    END
    