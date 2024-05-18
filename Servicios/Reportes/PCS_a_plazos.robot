*** Settings ***
Documentation    pcs a plazos 
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows
#Library    XML


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}    https://servicios.qa-cluster.sfycnextgen.com.mx/ui       #https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Mega12345   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte pc's a plazos###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
${Boton_reportes_idividual}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[7]
${Combo_reportes}    xpath=//input[contains(@aria-expanded,'false')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    PC
${Reporte_pcs_a_plazos}    xpath=//td[contains(.,'PC`s a plazos')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
######################################Combo sucursal##################################################################################
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-app-reporting-deadline-pcs-form/form/div/div/app-branch-parameter/div/div/div/div/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
######################################Sucursal########################################################################################
${Sucursal}    xpath=//td[contains(.,'Cd. Obregon')]
######################################Filtros###############################################################################################
${Campo_id_sucursal}    xpath=//input[contains(@inputmode,'decimal')]
${id_sucursal}    21
${Campo_descripción}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Descripcion_sucursal}    Los mochis
#######################################Caracteres invalidos##########################################################################
${Caracteres_invalidos}    @$%&/_

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte pcs a plazos
    [Tags]    Ingresar usuario
    Validacion de usuarios

Combo sucursal
    [Documentation]    Reporte pcs a plazos
    [Tags]    Combo sucursal
    Test combo sucursal

PC`s a plazos
    [Documentation]    Reporte pcs a plazos
    [Tags]    Boton preeliminar
    Boton aceptar

Boton limpiar
    [Documentation]    Reporte pcs a plazos
    [Tags]    Boton limpiar
    Boton limpiar

Filtros 
    [Documentation]    Reporte pcs a plazos
    [Tags]    Filtros funcionales
    Test filtros

Caracteres invalidos en filtros
    [Documentation]    Reporte pcs a plazos
    [Tags]    Caracteres invalidos en filtros
    Caracteres invalidos


Boton cancelar
    [Documentation]    Reporte pcs a plazos
    [Tags]    Boton cancelar
    Boton cancelar


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
        #Click Element    ${Boton_reportes_idividual}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Campo_descripcion}
        Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
        Sleep    4s
        Click Element    ${Reporte_pcs_a_plazos}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test combo sucursal
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}

Test filtros
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Sleep    5s
    Wait Until Element Is Visible    ${Campo_id_sucursal}
    Click Element    ${Campo_id_sucursal}
    Input Text    ${Campo_id_sucursal}    ${id_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_id_sucursal}
    Sleep    5s
    Input Text    ${Campo_descripción}    ${Descripcion_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_descripción}

Caracteres invalidos
    Wait Until Element Is Visible    ${Campo_descripción}
    Input Text    ${Campo_descripción}    ${Caracteres_invalidos}
    Sleep    7s
    Click Element    ${Combo_sucursal}
