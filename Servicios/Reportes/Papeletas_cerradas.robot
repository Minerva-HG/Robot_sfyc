*** Settings ***
Documentation    Reporte papeletas cerradas
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
#########################Pantalla papeletas cerradas###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Pape
${Reporte_papeletas_cerradas}    xpath=//td[contains(.,'Papeletas cerradas')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
####################################Combos###########################################################################
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
${Combo_del_vendedor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-closed-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-salesman-parameter/div/div/div/div[2]/app-salesman-dropdown[1]/dx-drop-down-box/div/div/div[1]/input
${Combo_al_vendedor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-closed-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-salesman-parameter/div/div/div/div[2]/app-salesman-dropdown[2]/dx-drop-down-box/div/div/div[1]/input
##################################Fechas################################################################################
${Fecha_desde}    xpath=(//span[contains(.,'2')])[2] 
${Fecha_hasta}    xpath=(//span[contains(.,'6')])[14]
######################################Checkbox##################################################################################
${Checkbox_por_operador}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[1]
${Checkbox_por_vendedor}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Checkbox_todos_los_vendedores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
#########################################Pestaña mas opciones###################################################################
${Pestaña_mas_opciones}    xpath=//span[contains(.,'Más opciones')]
######################################Vendedores###################################################################################
${Vendedor_1}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Vendedor_2}    xpath=(//td[contains(.,'A & A SERVICIOS EN LINEA S DE RL DE CV')])[2]
@{Vendedor_del}=    Create List    ${Vendedor_del_1}    ${Vendedor_del_2}    ${Vendedor_del_3}    ${Vendedor_del_4}    ${Vendedor_del_5}
@{Vendedor_al}=    Create List    ${Vendedor_al_1}    ${Vendedor_al_2}    ${Vendedor_al_3}    ${Vendedor_al_4}    ${Vendedor_al_5}
${Vendedor_del_1}    xpath=(//td[contains(.,'COINTSA S. A. DE C. V.')])[2]
${Vendedor_del_2}    xpath=(//td[contains(.,'LIZARRAGA ROSALES JUAN ALFONSO')])[2]
${Vendedor_del_3}    xpath=(//td[contains(.,'A & A SERVICIOS EN LINEA S DE RL DE CV')])[2]
${Vendedor_del_4}    xpath=(//td[contains(.,'A LA TORRE TORRES MARCOS IVAN')])[2]
${Vendedor_del_5}    xpath=(//td[contains(.,'ABAD DAVILA EFREN ARTURO')])[2]
${Vendedor_al_1}    xpath=(//td[contains(.,'ABAD DAVILA EFREN ARTURO')])[2]
${Vendedor_al_2}    xpath=(//td[contains(.,'A LA TORRE TORRES MARCOS IVAN')])[2]
${Vendedor_al_3}    xpath=(//td[contains(.,'A & A SERVICIOS EN LINEA S DE RL DE CV')])[2]
${Vendedor_al_4}    xpath=(//td[contains(.,'LIZARRAGA ROSALES JUAN ALFONSO')])[2]
${Vendedor_al_5}    xpath=(//td[contains(.,'COINTSA S. A. DE C. V.')])[2]
#####################################Campo vacio combo del##########################################################################
${Campo_vacio_combo_del}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[4]

*** Test Cases ***
Ingresar usuario
    [Documentation]    Reporte papeletas cerradas
    [Tags]    Ingresar usuario
    Validacion de usuarios   

Fechas
    [Documentation]    Reporte papeletas cerradas
    [Tags]    Combo fechas
    Combo fecha desde 
    Combo fecha hasta

Tipo de vendedor
    [Documentation]    Reporte papeletas cerradas
    [Tags]    "Validar que cuente con los optionbuttons de: por operador por vendedor"
    Por operador
    Por vendedor

Vendedores
    [Documentation]    Reporte papeletas cerradas
    [Tags]    "Validar que cuente con los optionbuttons de: Todos "Del vendedor Al"
    Test vendedores

Papeletas cerradas
    [Documentation]    Reporte papeletas cerradas
    [Tags]    "Imprimirá en un reporte los campos requeridos."
    Boton aceptar
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes vendedores    ${Vendedor_del}[${counter}]    ${Vendedor_al}[${counter}] 
        Boton aceptar
    END
    

Campos vacios
    [Documentation]    Reporte papeletas cerradas
    [Tags]    "El sistema validará que no se puedan dejar los campos vacios"
    Campo vacio del vendedor

Boton limpiar
    [Documentation]    Reporte papeletas cerradas
    [Tags]    "Valida que el botón limpiar sea funcional"
    Test boton limpiar

Boton Cancelar
    [Documentation]    Reporte papeletas cerradas
    [Tags]    "Valida que el botón cancelar sea funcional"
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
        Click Element    ${Reporte_papeletas_cerradas}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END
   
Combo fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}

Combo fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Por operador
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Por vendedor
    Wait Until Element Is Visible    ${Checkbox_por_vendedor}
    Click Element    ${Checkbox_por_vendedor}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test vendedores
    Wait Until Element Is Visible    ${Pestaña_mas_opciones}
    Click Element    ${Pestaña_mas_opciones}
    #Wait Until Element Is Visible    ${Checkbox_todos_los_vendedores}
    Sleep    5s
    Click Element    ${Checkbox_todos_los_vendedores}
    Wait Until Element Is Visible    ${Combo_del_vendedor}
    Click Element    ${Combo_del_vendedor}
    Wait Until Element Is Visible    ${Vendedor_1}
    Click Element    ${Vendedor_1}
    Wait Until Element Is Visible    ${Combo_al_vendedor}
    Click Element    ${Combo_al_vendedor}
    Wait Until Element Is Visible    ${Vendedor_2}
    Click Element    ${Vendedor_2}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Campo vacio del vendedor
    Wait Until Element Is Visible    ${Campo_vacio_combo_del}
    Click Element    ${Campo_vacio_combo_del}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}

Generando reporte con diferentes vendedores
    [Documentation]    Seleccionando sucursal
    [Arguments]     ${Vendedor_del}    ${Vendedor_al}  
    Wait Until Element Is Visible    ${Combo_del_vendedor}
    Click Element    ${Combo_del_vendedor}  
    #Wait Until Element Is Visible    ${Vendedor_del}
    Sleep    5s
    Click Element    ${Vendedor_del}
    Wait Until Element Is Visible    ${Combo_al_vendedor}
    Click Element    ${Combo_al_vendedor}
    #Wait Until Element Is Visible    ${Vendedor_al}
    Sleep    5s
    Click Element    ${Vendedor_al}
