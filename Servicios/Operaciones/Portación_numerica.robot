*** Settings ***
Documentation    Portación numérica
Library    String
Library    RPA.Windows
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    SeleniumLibrary

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
######################Pantalla portación numerica#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]
${OperacionesQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Portacion_numerica}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]/ul/li[3]
${Portacion_numerica_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[2]
#####################Scroll Administracón arbol de llamadas#############################################################################################
${Administracion_arbol_de_llamadas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]/ul/li[7]
##########################Carga de suscriptor################################################################################################################
${Combo_suscriptor}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Icono_add_suscriptor}    xpath=//i[contains(@class,'dx-icon dx-icon-plus')]
${Campo_suscriptor}    xpath=/html/body/div[2]/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-subscriber-search-container/dx-accordion/div/div[1]/dxi-item/div/form/div/app-subscriber-search-contract-form/form/div/dx-text-box/div[1]/div[1]/input
${Suscriptor_al_corriente}    0410691049    
${Boton_consultar}    xpath=//span[contains(.,'Consultar')]
${Suscriptor_cargado}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Portación numérica
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test pantalla portacion numerica
    [Documentation]    Portación numérica
    [Tags]    Pantalla portación numérica
    Pantalla portacion numerica
    
Test cargando suscriptor
    [Documentation]    Portación numérica
    [Tags]    Cargando suscriptor
    Carga de suscriptor
    Sleep    50s

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
    Click Element    name:button

Pantalla portacion numerica
    Sleep    10s
    Click Element    ${Moduloservicios}
    Wait Until Element Is Visible    ${Operaciones}
    Click Element    ${Operaciones}
    Sleep    5s
    Scroll Element Into View    ${Administracion_arbol_de_llamadas}
    Wait Until Element Is Visible    ${Portacion_numerica}
    Click Element    ${Portacion_numerica}  

Carga de suscriptor
    Sleep    5s
    Click Element    ${Combo_suscriptor} 
    Wait Until Element Is Visible    ${Icono_add_suscriptor} 
    Click Element    ${Icono_add_suscriptor}
    Wait Until Element Is Visible    ${Campo_suscriptor}
    Click Element    ${Campo_suscriptor}
    Input Text    ${Campo_suscriptor}    ${Suscriptor_al_corriente}
    Sleep    5s
    Click Element    ${Boton_consultar}
    #Wait Until Element Is Visible    ${Suscriptor_cargado}
    Sleep    5s
    Click Element    ${Suscriptor_cargado}

