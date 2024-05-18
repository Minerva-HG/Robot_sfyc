*** Settings ***
Documentation    Reportes - Auxiliar de ingresos por caja   
Library    String
Library    SeleniumLibrary

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
#########################Pantalla Reporte auxiliar de ingresos por caja###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Auxiliar_de_ingresos_por_caja}    xpath=//td[contains(.,'Auxiliar de ingresos por caja')]
##########################Fechas###########################################################################################################
${Icono_fechas}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
###########################Checkbox todos activos##############################################################################################
${Checkbox_todos_cajeros}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
###########################Boton preliminar################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
#############################Combo cis#######################################################################################################
${Checkbox_todos_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Combo_CIS}    xpath=(//input[contains(@autocomplete,'off')])[6]
${CIS}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
#############################Combo cajero#########################################################################################################
${Combo_cajero}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Cajero}    xpath=//td[contains(.,'DEPTO. INFORMATICA')]
##############################Boton limpiar###################################################################################################
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
#######################################Boton cancelar################################################################################################
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Usuarios con permisos a la pantalla 
    [Documentation]    Reporte - Auxiliar de ingresos por caja
    [Tags]    Pantalla reporte auxiliar de ingresos por caja
    Validacion de usuarios

Fechas
    [Documentation]    Reporte - Auxiliar de ingresos por caja
    [Tags]    Fechas
    Test fechas

Checkbox todos activos
    [Documentation]    Reporte - Auxiliar de ingresos por caja
    [Tags]    Check box todos activos
    Test Checkbox todos activos

Auxiliar de ingresos por caja
    [Documentation]    Reporte - Auxiliar de ingresos por caja
    [Tags]    Boton preliminar
    Test boton preliminar

CIS
    [Documentation]    Reporte - Auxiliar de ingresos por caja
    [Tags]    Cis
    Combo CIS

CAJERO
    [Documentation]    Reporte - Auxiliar de ingresos por caja
    [Tags]    Cajero
    Combo cajero
    Test boton preliminar
    
Boton limpiar
    [Documentation]    Reporte - Auxiliar de ingresos por caja
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte - Auxiliar de ingresos por caja
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
        Wait Until Element Is Visible    ${Auxiliar_de_ingresos_por_caja} 
        Click Element    ${Auxiliar_de_ingresos_por_caja}    
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test fechas
    Wait Until Element Is Visible    ${Icono_fechas}
    Click Element    ${Icono_fechas}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Test Checkbox todos activos
    Wait Until Element Is Visible    ${Checkbox_todos_cajeros}
    Click Element    ${Checkbox_todos_cajeros}

Test boton preliminar
    Sleep    5s
    Click Element    ${Boton_aceptar}

Combo CIS
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}
    Wait Until Element Is Visible    ${Combo_CIS}
    Click Element    ${Combo_CIS}
    Wait Until Element Is Visible    ${CIS}
    Click Element    ${CIS}

Combo cajero
    Wait Until Element Is Visible    ${Checkbox_todos_cajeros}
    Click Element    ${Checkbox_todos_cajeros}
    Wait Until Element Is Visible    ${Combo_cajero}
    Click Element    ${Combo_cajero}
    Wait Until Element Is Visible    ${Cajero}
    Click Element    ${Cajero}
    
Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element   ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
