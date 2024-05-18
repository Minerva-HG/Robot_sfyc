*** Settings ***
Documentation    Reportes - Auditoria recolección de valores    
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui      
${Usuario}  softteck01                                           
${Pass}  123456c                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
#########################Pantalla Reporte auditoria recolección de valores###################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Auditoria_recoleccion_de_valores}    xpath=//td[contains(.,'Auditoría recolección de valores')]
#########################Fechas#####################################################################################################################
${Icono_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-recolection-value-auditory-form/form/div/div/div[1]/app-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div/div/div[1]/input
${Fecha_desde}    xpath=(//span[contains(.,'1')])[1]
${Icono_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-recolection-value-auditory-form/form/div/div/div[1]/app-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div/div/div[1]/input
${Fecha_hasta}    xpath=(//span[contains(.,'1')])[7] 
#############################Checkbox todos los CIS#################################################################################################
${Checkbox_todos_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
###############################Combo cis###############################################################################################################
${Combo_CIS}    xpath=(//input[contains(@autocomplete,'off')])[8]
${CIS}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
##################################Boton aceptar###############################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
#####################################Boton limpiar################################################################################################################
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
######################################Boton cancelar##############################################################################################################
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Auditoria recoleccion de valores
    [Documentation]    Reporte - Auditoría recolección de valores
    [Tags]    Auditoria recolección de valores
    Validacion de usuarios    
    Fechas
    Checkbox todos los cis
    Combo cis
    Informe de convenios registrados
    Reporte con todos los CIS
    Campos vacios
    Boton limpiar
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
        Wait Until Element Is Visible    ${Auditoria_recoleccion_de_valores}
        Click Element    ${Auditoria_recoleccion_de_valores}   
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Fechas
    Wait Until Element Is Visible    ${Icono_fecha_desde}
    Click Element    ${Icono_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}
    #Wait Until Element Is Visible    ${Icono_fecha_hasta}
    #Click Element    ${Icono_fecha_hasta}
    #Wait Until Element Is Visible    ${Fecha_hasta}
    #Click Element    ${Fecha_hasta}

Checkbox todos los cis
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}

Combo cis
    Wait Until Element Is Visible    ${Combo_CIS}
    Click Element    ${Combo_CIS}
    Sleep    5s
    Click Element    ${CIS}
    
Informe de convenios registrados
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Reporte con todos los CIS
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Campos vacios
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}

Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
