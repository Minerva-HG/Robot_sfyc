*** Settings ***
Documentation    Reporte Ingresos - Depositos bancarios
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte Ingresos - Depositos bancarios###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Ingresos
${Reporte_ingresos_depositos_bancarios}    xpath=//td[contains(.,'Ingresos - Depósitos bancarios')]
###############################Fechas#################################################################################################
${Icono_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
##################################Botones#########################################################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
#####################################Combo cis##################################################
${Cis_plaza_terranova}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]
${Checkbox_todos_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-income-bank-deposit-form/form/div/app-all-cis-parameter/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Cis}=    Create List    ${Cis1}    ${Cis2}    ${Cis3}    ${Cis4}    ${Cis5}
${Cis1}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
${Cis2}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]    
${Cis3}    xpath=//td[contains(.,'CENTRAL')]
${Cis4}    xpath=//td[contains(.,'CIS CIRCUNVALACION')]
${Cis5}    xpath=//td[contains(.,'CIS JAVIER MINA')]
####################################Campos vacios#########################################################
${Campos_vacios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-income-bank-deposit-form/form/div/app-all-cis-parameter/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Ingresar usuario
    Validacion de usuarios

Valida fechas
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Validación de fechas
    Icono fecha

Valida todos CIS
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Validación de checkbox todos los CIS
    Boton aceptar

Validar combos cis
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Validación de combos cis
    Combo Cis
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes cis     ${Cis}[${counter}]    
    END

Ingresos - Depósitos bancarios
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Validación de reporte
    Boton aceptar

Campos vacios
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Validación de campos vacios
    Test campos vacios

Boton limpiar
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte Ingresos - Depositos bancarios
    [Tags]    Boton cancelar
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
        Click Element    ${Reporte_ingresos_depositos_bancarios} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Icono fecha
    Wait Until Element Is Visible    ${Icono_fecha}
    Click Element    ${Icono_fecha}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Combo Cis
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}
    Sleep    15s
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis_plaza_terranova}
    Click Element    ${Cis_plaza_terranova}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Generando reporte con diferentes cis
    [Documentation]    Seleccionando cis
    [Arguments]     ${Cis}   
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}  
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test campos vacios
    Wait Until Element Is Visible    ${Campos_vacios}
    Click Element    ${Campos_vacios}
 
 Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
