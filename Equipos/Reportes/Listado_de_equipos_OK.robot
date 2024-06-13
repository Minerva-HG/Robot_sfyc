*** Settings ***
Library  SeleniumLibrary
Library  String
#Library    RPA.Desktop


*** Variables ***
#######################################Validación de usuarios######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Megajos202   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*    Megacable2021*    Mega2020*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
###################################Pantalla REPORTE LISTADO DE EQUIPOS OK VS CLIENTE##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]    
${Descripcion_reporte}    Listado de equipos Ok CIS, ALM y CUA vs CLI    
${Reporte}  xpath=//td[contains(.,'Listado de equipos Ok CIS, ALM y CUA vs CLI')]
#########################################Combos#################################################################################
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-ok-status-vs-client-form/form/div/app-reporting-start-end-date-parameters/div/div/div[1]/dx-date-box/div/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-ok-status-vs-client-form/form/div/app-reporting-start-end-date-parameters/div/div/div[2]/dx-date-box/div[1]/div/div[1]/input
${Combo_tipo_equipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-ok-status-vs-client-form/form/div/div/div/app-type-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
######################################Registros combos##################################################################################
${Desde}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/table/tbody/tr[1]/td[3]
${Hasta}    xpath=(//span[contains(.,'21')])[3]
${Tipo_de_equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
######################################Campo vacio############################################################################################
${Campo_vacio_tipo_equipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
#####################################Filtros####################################################################
${Campo_descripcion}    xpath=(//input[contains(@autocomplete,'off')])[9]    
${Descripcion_equipo}    SWITCH    

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Combo desde
    [Documentation]    Validacion de combo desde
    [Tags]    test_dos
    Combo Desde

Combo hasta
    [Documentation]    Validacion de combo hasta
    [Tags]    test_tres
    Combo Hasta
    Sleep    15s

Rango de fechas
    [Documentation]    Validacion de combo hasta
    [Tags]    test_cuatro
    Rango de fechas

Combo tipo de equipo
    [Documentation]    Validacion de combo tipo de equipo
    [Tags]    test_cinco
    Combo Tipo de equipo

Botón aceptar
    [Documentation]    Validacion de combo tipo de equipo
    [Tags]    test_seis
    Boton aceptar

Campos vacios
    [Documentation]    Validacion de combo hasta
    [Tags]    test_siete
    Campos vacios

Filtros del drop tipo de equipo
    [Documentation]    Validando que funcionen los filtros del combo tipo de equipo
    [Tags]    test_ocho
    Filtro drop tipo de equipo

Botón limpiar
    [Documentation]    Validando que boton limpiar funcione de manera correcta
    [Tags]    test_nueve
    Boton limpiar

Botón cancelar
    [Documentation]    Validando que boton cancelar funcione de manera correcta
    [Tags]    test_diez
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
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botonreportes}
        Click Element    ${Botonreportes}
        Sleep    5s
        Click Element    ${Botonparadesplegarreportes}
        Wait Until Element Is Visible    ${Descripcion}
        Input Text    ${Descripcion}    ${Descripcion_reporte}
        Sleep    10s
        Click Element    ${Reporte}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END 

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    

Campo vacio tipo equipo
    Sleep    5s
    Click Element    ${Campo_vacio_tipo_equipo}

Combo Tipo de equipo
    Wait Until Element Is Visible    ${Combo_tipo_equipo} 
    Click Element    ${Combo_tipo_equipo} 
    Wait Until Element Is Visible    ${Tipo_de_equipo}
    Click Element    ${Tipo_de_equipo}

Combo Desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Desde}
    Click Element    ${Desde}

Combo Hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Hasta}
    Click Element    ${Hasta}

Rango de fechas
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    ${Bandera_fecha_menor_desde_activo}=    Run Keyword And Return Status    Page Should Contain Element    ${Fecha_menor_desde}
    IF    '${Bandera_fecha_menor_desde_activo}' == 'True'
        Fail
    ELSE
        Click Element    ${Combo_fecha_hasta}
    END

Campos vacios
    Wait Until Element Is Visible    ${Campo_vacio_tipo_equipo} 
    Click Element    ${Campo_vacio_tipo_equipo} 

Filtro drop tipo de equipo
    Wait Until Element Is Visible    ${Combo_tipo_equipo}
    Click Element    ${Combo_tipo_equipo}
    Wait Until Element Is Visible    ${Campo_descripcion}
    Input Text    ${Campo_descripcion}    ${Descripcion_equipo}
    Sleep    5s
    Clear Element Text    ${Campo_descripcion}

Boton limpiar
    Sleep    5s
    ${Bandera_boton_limpiar}=    Run Keyword And Return Status    Click Element    ${Limpiar}
    IF    '${Bandera_boton_limpiar}' == 'True'
        Sleep    5s
    ELSE
        Boton limpiar
    END

Boton cancelar
    Sleep    5s
    ${Bandera_boton_cancelar}=    Run Keyword And Return Status    Click Element    ${Cancelar}
    IF    '${Bandera_boton_cancelar}' == 'True'
        Sleep    5s
    ELSE
        Boton cancelar
    END

