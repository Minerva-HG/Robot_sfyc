*** Settings ***
Documentation    Reportes - Auxiliar de facturas por caja    
Library    String
Library    SeleniumLibrary
Library    RPA.Windows

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
#########################Pantalla Reporte auxiliar de facturas por caja###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Auxiliar_de_facturas_por_caja}    xpath=//td[contains(.,'Auxiliar de Facturas por Caja')]
#########################Fechas#####################################################################################################################
${Icono_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Fecha_desde}    xpath=(//span[contains(.,'1')])[1]
${Icono_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-invoice-auxiliary-form/form/div/app-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div/div/div[1]/input
${Fecha_hasta}    xpath=//span[contains(.,'10')]
#########################Reporte con todos los CIS#######################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
##########################Checkbox todos los CIS##############################################################################################################
${Checkbox_todos_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
##########################Combo CIS#########################################################################################################################
${Combo_CIS}    xpath=(//input[contains(@autocomplete,'off')])[6]
${CIS}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]    
######################################Boton limpiar##############################################################################################################
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]    
#######################################Boton cancelar############################################################################################################
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Usuarios con permisos a la pantalla 
    [Documentation]    Reporte - Auxiliar de facturas por caja
    [Tags]    Usuarios con permisos a la pantalla 
    Validacion de usuarios    
    
Valida fechas
    [Documentation]    Reporte - Auxiliar de facturas por caja
    [Tags]    Valida fechas
    Test fechas

Auxiliar de facturas por caja
    [Documentation]    Reporte - Auxiliar de facturas por caja
    [Tags]    Boton preliminar 
    Test boton preliminar

Checkbox todos los CIS
    [Documentation]    Reporte - Auxiliar de facturas por caja
    [Tags]    Checkbox todos los CIS 
    Test checkbox todos los CIS

Valida combo CIS
    [Documentation]    Reporte - Auxiliar de facturas por caja
    [Tags]    Combo CIS
    Test combo cis

Boton limpiar
    [Documentation]    Reporte - Auxiliar de facturas por caja
    [Tags]    Boton limpiar
    Boton limpiar

Boton cancelar
    [Documentation]    Reporte - Auxiliar de facturas por caja
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
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Auxiliar_de_facturas_por_caja}
        Click Element    ${Auxiliar_de_facturas_por_caja}   
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test fechas    
    Wait Until Element Is Visible    ${Icono_fecha_desde}
    Click Element    ${Icono_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}
    #Wait Until Element Is Visible    ${Icono_fecha_hasta}
    #Click Element    ${Icono_fecha_hasta}
    #Wait Until Element Is Visible    ${Fecha_hasta}
    #Click Element    ${Fecha_hasta}

Test boton preliminar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test checkbox todos los CIS
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}

Test combo cis
    Wait Until Element Is Visible    ${Combo_CIS}
    Click Element    ${Combo_CIS}
    Wait Until Element Is Visible    ${CIS}
    Click Element    ${CIS} 
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Boton limpiar    
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
