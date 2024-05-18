*** Settings ***
Documentation    Reporte notas de crédito
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
#########################Pantalla reporte notas de crédito###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Notas
${Reporte_notas_de_credito}    xpath=//td[contains(.,'Notas de Crédito')]
##########################Checkbox todos los CIS###################################################################################################
${Checkbox_todos_los_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Checkbox_todos_los_cajeros}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
##########################Combos#######################################################################################################################
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-credit-note-form/form/div/app-cis-and-cashier-parameter/div/div/div[1]/div[2]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_cajero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-credit-note-form/form/div/app-cis-and-cashier-parameter/div/div/div[2]/div[2]/app-cashier-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
#############################Cis###################################################################################################################################
${Cis_Depto_ingresos}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
@{Cis}=    Create List    ${Cis1}    ${Cis2}    ${Cis3}    ${Cis4}    ${Cis5}
${Cis1}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
${Cis2}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]
${Cis3}    xpath=//td[contains(.,'CENTRAL')]
${Cis4}    xpath=//td[contains(.,'CIS CIRCUNVALACION')]
${Cis5}    xpath=//td[contains(.,'CIS JAVIER MINA')]
####################################Cajero############################################################################################################################
${Cajero}    xpath=//td[contains(.,'DEPTO. INFORMATICA')]
###################################Fechas############################################################################################################
${Fecha_desde}    xpath=(//span[contains(.,'1')])[3]
${Fecha_hasta}    xpath=(//span[contains(.,'27')])[5]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
##########################################Campo vacio#####################################################################################################################
${Campo_vacio}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[4]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte notas de crédito
    [Tags]    Ingresar usuario
    Validacion de usuarios

Notas de Crédito
    [Documentation]    Reporte notas de crédito
    [Tags]    "1. Selecciona la lista despegable de Notas de crédito. 2. Seleccionar CIS 3. Seleccionar Cajero. 4. Seleccionar fecha Desde, Hasta. 5.  Ejecuta la consulta: "
    Test informe de notas de credito

Validar combo CIS     
    [Documentation]    Reporte notas de crédito
    [Tags]    En el reporte solo debera mostrar el nombre del cis seleccionado
    Test combo cis

Cajeros
    [Documentation]    Reporte notas de crédito
    [Tags]    Validar en el reporte la seleccion de cada uno de los combos
    Test todos los cajeros
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes cis    ${Cis}[${counter}]  
    END

Campos vacios
    [Documentation]    Reporte notas de crédito
    [Tags]    Validar campos vacios
    Combo cis vacio

Validar todos los CIS
    [Documentation]    Reporte notas de crédito
    [Tags]    En el reporte debera mostrar todos los CIS del grupo sucursal.
    Test todos los CIS

Boton limpiar
    [Documentation]    Reporte notas de crédito
    [Tags]    Valida que el botón limpiar funcione correctamente
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte notas de crédito
    [Tags]    Valida que el botón cancelar funcione correctamente
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
        Click Element    ${Reporte_notas_de_credito}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Test informe de notas de credito
    Wait Until Element Is Visible    ${Checkbox_todos_los_cis}
    Click Element    ${Checkbox_todos_los_cis}
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Sleep    5s
    Click Element    ${Cis_Depto_ingresos}
    Wait Until Element Is Visible    ${Checkbox_todos_los_cajeros}
    Click Element    ${Checkbox_todos_los_cajeros}
    Wait Until Element Is Visible    ${Combo_cajero}
    Click Element    ${Combo_cajero}
    Wait Until Element Is Visible    ${Cajero}
    Click Element    ${Cajero}
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}
    Sleep    5s
    Click Element    ${Boton_aceptar}

Test combo cis
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Sleep    10s
    Click Element    ${Cis_Depto_ingresos}

Generando reporte con diferentes cis
    [Documentation]    Seleccionando cis
    [Arguments]     ${Cis}  
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}
    Sleep    5s
    Click Element    ${Boton_aceptar}   

Test todos los CIS
    Wait Until Element Is Visible    ${Checkbox_todos_los_cis}
    Click Element    ${Checkbox_todos_los_cis}
    Sleep    5s
    Click Element    ${Boton_aceptar}

Test todos los cajeros
    Wait Until Element Is Visible    ${Checkbox_todos_los_cajeros}
    Click Element    ${Checkbox_todos_los_cajeros}
    Sleep    5s
    Click Element    ${Boton_aceptar}    

Combo cis vacio
    Wait Until Element Is Visible    ${Campo_vacio}
    Click Element    ${Campo_vacio}

Test boton limpiar
    Wait Until Element Is Visible    ${Checkbox_todos_los_cis}
    Click Element    ${Checkbox_todos_los_cis}
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Sleep    5s
    Click Element    ${Cis_Depto_ingresos}
    Sleep    10s
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Sleep    5s
    Click Element    ${Boton_cancelar}
