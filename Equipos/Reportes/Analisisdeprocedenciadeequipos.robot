*** Settings ***
Library  SeleniumLibrary
Library  String
Library    RPA.Desktop


*** Variables ***
#######################################Validación de usuarios######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Mega12345    #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*    Megacable2021*    Mega2020*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
###################################Pantalla REPORTE ANALISIS DE PROCEDENCIA DE EQUIPOS##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[contains(.,'Análisis de procedencia de equipos')]
#################################Checkbox#########################################################################
${Todas_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Todos_tipos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
#################################Combos################################################################################
${Combo_sucursales}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Combo_tipos_equipo}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=(//input[contains(@autocomplete,'off')])[12]
#################################Sucursal##############################################################################
${Sucursal}    xpath=//td[contains(.,'Cd. Obregon')]
#################################Tipos equipo################################################################################
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
################################Fechas##########################################################################################
${Mes}    xpath=/html/body/div/div/div/div/div[2]/a[1]/div/i  
${Fecha_desde}    xpath=(//span[contains(.,'1')])[1]
${Fecha_hasta}    xpath=(//span[contains(.,'1')])[46]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
################################Filtros##############################################################################################
${Filtro_sucursal}    xpath=//input[contains(@maxlength,'20')]
${Descripcion_sucursal}    Mazatlan
${Filtro_tipo_equipo}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Descripcion_tipo_equipo}    SWITCH


*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Combo sucursales
    [Documentation]    Validacion del combo sucursales
    [Tags]    test_dos
    Sucursal

Combo tipos equipo
    [Documentation]    Validacion del combo tipos equipo
    [Tags]    test_tres
    Tipo equipo

Combo fecha desde
    [Documentation]    Validacion del combo fecha desde
    [Tags]    test_cuatro
    Fecha desde

Combo fecha hasta
    [Documentation]    Validacion del combo fecha hasta
    [Tags]    test_cinco
    Fecha hasta

Filtros combos
    [Documentation]    Validacion de los filtros en los combos
    [Tags]    test_seis
    Filtros

Botón aceptar
    [Documentation]    Validacion del boton aceptar
    [Tags]    test_siete
    Boton aceptar

Botón Limpiar
    [Documentation]    Validacion del boton limpiar
    [Tags]    test_ocho
    Boton limpiar

Reporte con checkbox todas y todos activos
    [Documentation]    Validacion del reporte con todos los checkbox activos
    [Tags]    test_nueve
    Boton aceptar

Botón cancelar
    [Documentation]    Validacion del boton cancelar
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
        Wait Until Element Is Visible    ${Reporte}
        Click Element    ${Reporte}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END 

Sucursal
    Wait Until Element Is Visible    ${Todas_sucursales}
    Click Element    ${Todas_sucursales}
    Sleep    5s
    Click Element    ${Combo_sucursales}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Tipo equipo
    Wait Until Element Is Visible    ${Todos_tipos_equipos}
    Click Element    ${Todos_tipos_equipos}
    Sleep    5s
    Click Element    ${Combo_tipos_equipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Sleep    3s
    Click Element    ${Mes}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}

Fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Sleep    3s
    Click Element    ${Fecha_hasta}

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}

Filtros
    Wait Until Element Is Visible    ${Combo_sucursales}
    Click Element    ${Combo_sucursales}
    Wait Until Element Is Visible    ${Filtro_sucursal}
    Input Text    ${Filtro_sucursal}    ${Descripcion_sucursal}
    Sleep    5s
    Clear Element Text    ${Filtro_sucursal}
    Wait Until Element Is Visible    ${Combo_sucursales}
    Click Element    ${Combo_sucursales}
    
    Sleep    3s
    Click Element    ${Combo_tipos_equipo}
    Wait Until Element Is Visible    ${Combo_tipos_equipo}
    Input Text    ${Filtro_tipo_equipo}    ${Descripcion_tipo_equipo}
    Sleep    5s
    Clear Element Text    ${Filtro_tipo_equipo}
    Wait Until Element Is Visible    ${Combo_tipos_equipo}
    Click Element    ${Combo_tipos_equipo}

Boton limpiar
    Sleep    15s
    ${Bandera_boton_limpiar}=    Run Keyword And Return Status    Click Element    ${Limpiar}
    IF    '${Bandera_boton_limpiar}' == 'True'
        Sleep    5s
    ELSE
        Boton limpiar
    END

Boton cancelar
    Sleep    15s
    ${Bandera_boton_cancelar}=    Run Keyword And Return Status    Click Element    ${Cancelar}
    IF    '${Bandera_boton_cancelar}' == 'True'
        Sleep    5s
    ELSE
        Boton cancelar
    END
