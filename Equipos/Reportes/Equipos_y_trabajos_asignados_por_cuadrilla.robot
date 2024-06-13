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
###################################Pantalla REPORTE EQUIPOS Y TRABAJOS ASIGNADO POR CUADRILLA##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]    
${Descripcion_reporte}    Equipos y trabajos asignado por
${Reporte}  xpath=//td[contains(.,'Equipos y trabajos asignado por cuadrilla')]
####################################Checkbox###########################################################################
${Todos_tipo_cuadrilla}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Con_trabajo_asignado}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
#########################################Combos#################################################################################
${Combo_tipo_cuadrilla}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Combo_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-and-jobs-assigned-by-crews-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div[2]/div[1]/app-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-and-jobs-assigned-by-crews-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div[2]/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_considerar_reporte}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-and-jobs-assigned-by-crews-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/div/app-multiple-type-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
#######################################Registros combos##################################################################################
${Tipo_cuadrilla}    xpath=//td[contains(.,'ALM Almacen')]
${Desde}    xpath=//td[contains(.,'0001')]
${Hasta}    xpath=(//td[contains(.,'0007')])[2]
${Equipo_1}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4] 
${Equipo_2}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
######################################Campo vacio############################################################################################
${Campo_vacio_tipo_cuadrilla}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
######################################Pestañas################################################################################################
${Cuadrillas}    xpath=//span[contains(.,'Cuadrillas')]
${Trabajos}    xpath=//span[contains(.,'Trabajos')]
${Equipos}    xpath=//span[@class='dx-tab-text'][contains(.,'Equipos')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Validar Cuadrillas
    [Documentation]    Validando el checkbox todos tipo cuadrilla
    [Tags]    test_dos
    Checkbox todos tipo cuadrilla
    Sleep    5s

Validar Tipo cuadrilla
    [Documentation]    Validando los combos de tipo cuadrilla
    [Tags]    test_tres
    Combo tipo cuadrilla
    Combo desde
    Combo hasta

Validar Trabajos
    [Documentation]    Validando la opción trabajos
    [Tags]    test_cuatro
    Pestaña trabajos
    Checkbox con trabajo asignado

Validar Equipos
    [Documentation]    Validando la opción Equipos
    [Tags]    test_cinco
    Pestaña equipos

Validar combo Equipos
    [Documentation]    Validando el combo equipos
    [Tags]    test_seis
    Combo considerar para reporte
    Equipos

Consultar
    [Documentation]    Validando que genere el reporte
    [Tags]    test_siete
    Boton aceptar

Campos Vacios
    [Documentation]    Validacion de campos vacios
    [Tags]    test_ocho
    Pestaña cuadrillas
    Campos vacios

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

Checkbox todos tipo cuadrilla
    Wait Until Element Is Visible    ${Todos_tipo_cuadrilla}
    Click Element    ${Todos_tipo_cuadrilla}

Combo tipo cuadrilla
    Wait Until Element Is Visible    ${Combo_tipo_cuadrilla}
    Click Element    ${Combo_tipo_cuadrilla}
    Sleep    3s
    Click Element    ${Tipo_cuadrilla}

Combo desde
    Wait Until Element Is Visible    ${Combo_desde}
    Click Element    ${Combo_desde}
    Wait Until Element Is Visible    ${Desde}
    Click Element    ${Desde}

Combo hasta
    Wait Until Element Is Visible    ${Combo_hasta}
    Click Element    ${Combo_hasta}
    Wait Until Element Is Visible    ${Hasta}
    Click Element    ${Hasta}

Pestaña trabajos
    Wait Until Element Is Visible    ${Trabajos}
    Click Element    ${Trabajos}

Checkbox con trabajo asignado
    Wait Until Element Is Visible    ${Con_trabajo_asignado}
    Click Element    ${Con_trabajo_asignado}

Pestaña equipos
    Wait Until Element Is Visible    ${Equipos}
    Click Element    ${Equipos}

Combo considerar para reporte
    Wait Until Element Is Visible    ${Combo_considerar_reporte}
    Click Element    ${Combo_considerar_reporte}

Equipos
    Wait Until Element Is Visible    ${Equipo_1}
    Click Element    ${Equipo_1}
    Sleep    5s
    Click Element    ${Equipo_2}

Pestaña cuadrillas
    Wait Until Element Is Visible    ${Cuadrillas}
    Click Element    ${Cuadrillas}

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    

Campos vacios
    Sleep    5s
    Click Element    ${Campo_vacio_tipo_cuadrilla}

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

