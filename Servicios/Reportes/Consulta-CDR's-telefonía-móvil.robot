*** Settings ***
Documentation    Reporte cartera - Consulta-CDR's-telefonía-móvil  
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla Reporte cartera REPORTE CONSULTA CDR'S TELEFONÍA MÓVIL###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
${Combo_reportes}    xpath=//input[contains(@aria-expanded,'false')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Consulta CDR's telefonía móvil      
${Consulta_telefonia_movil}    xpath=//div[@id='dx-905e9c95-1de7-bad3-6a49-35ce18c786c4']/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[10]/td
########################Botones##########################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
############################Campo vacio#####################################################
${Campo_vacio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-sales-per-channel-form/form/div/div/div[1]/app-branch-parameter/div/div/div/div/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span


*** Test Cases ***
Usuarios con permisos a la pantalla 
    [Documentation]    Reporte Consulta CDR's telefonía móvil
    [Tags]    Ingresar usuario
    Validacion de usuarios

Consulta CDR'S telefonia movil
    [Documentation]    Reporte Consulta CDR's telefonía móvil
    [Tags]    Boton preliminar
    Test boton preliminar

Campos vacios
    [Documentation]    Reporte Consulta CDR's telefonía móvil
    [Tags]    Campos vacios
    Test campos vacios

Boton limpiar
    [Documentation]    Reporte Consulta CDR's telefonía móvil
    [Tags]    Boton limpiar
    Test boton limpiar 

Boton Cancelar
    [Documentation]    Reporte Consulta CDR's telefonía móvil
    [Tags]    Boton cancelar
    Test boton cancelar 
    Sleep    25s


*** Keyword ***
Validacion de usuarios
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
        Sleep    10s
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Campo_descripcion}
        Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
        Sleep    4s
        Click Element    ${Consulta_telefonia_movil}   
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test boton preliminar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test campos vacios
    Wait Until Element Is Visible    ${Campo_vacio}
    Click Element    ${Campo_vacio}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Sleep    5s
    Click Element    ${Boton_cancelar}