*** Settings ***
Documentation    Reporte por motivos de cancelación
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Megajos202   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte papeletas por motivos de cancelación###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Pape
${Reporte_papeletas_por_motivos_de_cancelacion}    xpath=//td[contains(.,'Papeletas por motivos cancelación')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
######################################Combos##############################################################################
${Mes_anterior_desde}    xpath=//i[@class='dx-icon dx-icon-chevronleft']
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-reasons-cancellation-form/form/div/div/app-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div[1]/div/div[1]/input
${Mes_anterior_hasta}    xpath=(//i[@class='dx-icon dx-icon-chevronleft'])[2] 
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
######################################Fechas#########################################################################
${Fecha_desde}    xpath=(//span[contains(.,'2')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'6')])[14]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte papeletas por estado
    [Tags]    Ingresar usuario
    Validacion de usuarios

Combo fecha desde
    [Documentation]    Reporte papeletas por motivos cancelación
    [Tags]    Combo fecha desde
    Test combo fecha desde 

Combo fecha hasta
    [Documentation]    Reporte papeletas por motivos cancelación
    [Tags]    Combo fecha hasta
    Test combo fecha hasta

Papeletas por motivos cancelación
    [Documentation]    Reporte papeletas por motivos cancelación
    [Tags]    Boton aceptar
    Test boton aceptar

Boton limpiar
    [Documentation]    Reporte papeletas por motivos cancelación
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte papeletas por motivos cancelación
    [Tags]    Boton Cancelar
    Test boton cancelar
    
    

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
        Click Element    ${Reporte_papeletas_por_motivos_de_cancelacion}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END
    

Test combo fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Sleep    3s
    Click Element    ${Mes_anterior_desde}
    Sleep    3s
    Click Element    ${Fecha_desde}

Test combo fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Sleep    3s
    Click Element    ${Mes_anterior_hasta}
    Sleep    3s
    Click Element    ${Fecha_hasta}

Test boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test boton limpiar    
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
