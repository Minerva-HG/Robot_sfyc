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
@{passL}=    Create List    Mega12345    #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*    Megacable2021*    Mega2020*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
###################################Pantalla REPORTE AUXILIAR DE EQUIPOS POR ESTADO##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[contains(.,'Auxiliar de equipos por estado')]
#################################Checkbox#########################################################################
${Todos_tipos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Todos_modelos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Todos_ubicaciones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Todos_estados}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Todos_suscriptores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-state-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-serie-and-subscriber-parameters/div/div/div[1]/div[1]/dx-check-box/div/span
${Todos_tiposcuadrillas}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Todos_series}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
#################################Combos################################################################################
${Combo_tipos_equipo}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Combo_modelos_equipos}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Combo_ubicacion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-state-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/div[1]/div[2]/app-location-equipment-dropdown/dx-drop-down-box/div[1]/div/div[1]
${Combo_estado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-state-form/form/dx-tab-panel/div[2]/div/div/div[1]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/div[2]/div[2]/app-state-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_suscriptores}    xpath=(//input[contains(@autocomplete,'off')])[9]
${Campo_serie}    xpath=//input[contains(@maxlength,'35')]
${Combo_tipo_cuadrilla}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Combo_cuadrilla}    xpath=(//input[contains(@autocomplete,'off')])[15]
#################################Tipo quipo################################################################################
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
################################Modelo################################################################################################
${Modelo}    xpath=(//td[contains(.,'3COM')])[1]
################################Ubicacion##############################################################################################
${Ubicacion}    xpath=//td[contains(.,'CIRCUNV ALTAS/CAMBIO')]
#################################Estado##############################################################################################
${Estado}    xpath=//td[contains(.,'F02')]
#################################Suscriptor###########################################################################################
${Suscriptor}    xpath=//td[contains(.,'JOSE JULIO LOPEZ RAMELLA')]
###################################Serie#########################################################
${Serie}    2145654221
##################################Tipo cuadrilla##############################################################################################
${Tipo_cuadrilla}    xpath=//td[contains(.,'ATQ Mant. ATQ')]
####################################Cuadrilla##################################################################################################
${Cuadrilla}    xpath=//td[contains(.,'0021')]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
################################Filtros##############################################################################################
${Filtro_tipo_equipo}    xpath=(//input[contains(@autocomplete,'off')])[19]
${Descripcion_tipo_equipo}    CABLE MODEMS
${Filtro_modelo}    xpath=(//input[contains(@autocomplete,'off')])[19]
${Descripcion_modelo}    xpath=AMBIT
${Filtro_ubicacion}    xpath=(//input[contains(@autocomplete,'off')])[19]
${Descripcion_ubicacion}    xpath=IS GRAN PLAZA
${Filtro_estado}    xpath=(//input[contains(@autocomplete,'off')])[19]
${Descripcion_estado}    EN BUENAS CONDICIONE
${Filtro_suscriptor}    xpath=(//input[contains(@autocomplete,'off')])[16]
${Descripcion_suscriptor}    HECTOR VICENTE GONZALEZ LARA 
${Filtro_tipo_cuadrilla}    xpath=//input[contains(@maxlength,'7094')]
${Descripcion_tipo_cuadrilla}    CCT Call Center Tepic
${Filtro_cuadrilla}    xpath=//input[contains(@max,'9999')]
${Descripcion_cuadrilla}    0003       
####################################Pestañas#########################################################################
${Pestaña_mas_opciones}    xpath=//span[contains(.,'Más opciones')]
${Pestaña_seleccion}    xpath=//span[contains(.,'Selección')]
####################################Campos vacios#######################################################################################
${Campo_vacio_suscriptor}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[7]
${Campo_vacio_tipo_equipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Validar Todos Tipo Equipo
    [Documentation]    Validacion de checkbox todos los tipos de equipos
    [Tags]    test_dos
    Checkbox inactivos
    Checkbox todos tipos equipo

Validar Todos Ubicación
    [Documentation]    Validacion de checkbox todas las ubicaciones
    [Tags]    test_tres
    Checkbox todos modelos
    Checkbox todas ubicaciones

Validar Todos Estados
    [Documentation]    Validacion de checkbox todos los estados
    [Tags]    test_cuatro
    Checkbox todos estados
    Boton aceptar
    Boton limpiar

Validar Combo Tipo Equipo
    [Documentation]    Validacion de combo tipo de equipo
    [Tags]    test_cinco
    Tipo equipo

Validar Combo Modelo Equipo
    [Documentation]    Validacion de combo modelo equipo
    [Tags]    test_seis
    Modelo

Validar Combo Ubicación
    [Documentation]    Validacion de combo ubicación
    [Tags]    test_siete
    Ubicacion

Validar Combo Estado
    [Documentation]    Validacion de combo estado
    [Tags]    test_ocho
    Estado

Más opciones
    [Documentation]    Validacion de pestaña mas opciones
    [Tags]    test_nueve
    Pestaña mas opciones

Validar Todos suscriptor
    [Documentation]    Validacion de checkbox todos los suscriptores
    [Tags]    test_diez
    Checkbox inactivos mas opciones
    Checkbox todos suscriptores

Validar Todos Tipo Cuadrilla
    [Documentation]    Validacion de checkbox todos tipos cuadrilla
    [Tags]    test_once
    Checkbox todas las series
    Checkbox todos tipos cuadrilla
    Boton aceptar
    Boton limpiar

Validar Combo suscriptor
    [Documentation]    Validacion de combo suscriptores
    [Tags]    test_doce
    Pestaña mas opciones
    Suscriptor

Validar Combo Tipo Cuadrilla
    [Documentation]    Validacion de combo tipo cuadrilla
    [Tags]    test_trece
    Combo tipo cuadrilla

Validar combo cuadrilla
    [Documentation]    Validacion de combo tipo cuadrilla
    [Tags]    test_catorce
    Combo cuadrilla

Imprimir
    [Documentation]    Validacion de la generación del reporte para imprimir
    [Tags]    test_quince
    Boton aceptar

Validar Campos Vacios Más opciones
    [Documentation]    Validacion de campos vacios
    [Tags]    test_diesciseis
    Campos vacios suscriptor

Validar Campos Vacios
    [Documentation]    Validacion de campos vacios
    [Tags]    test_diesciseis
    Pestaña seleccion
    Tipo equipo
    Campos vacios tipo de equipo

Filtros combos
    [Documentation]    Validacion de filtros en los combos
    [Tags]    test_diescisiete
    Boton limpiar
    Checkbox inactivos
    Combo tipo equipo
    Combo modelo
    Combo ubicacion
    Combo estado
    Pestaña mas opciones
    Checkbox inactivos mas opciones
    Combo suscriptores
    Combo tipo cuadrilla filtro
    Combo cuadrilla filtro

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

Checkbox inactivos
    Wait Until Element Is Visible    ${Todos_tipos_equipos}
    Click Element    ${Todos_tipos_equipos}
    Wait Until Element Is Visible    ${Todos_modelos_equipos}
    Click Element    ${Todos_modelos_equipos}
    Wait Until Element Is Visible    ${Todos_ubicaciones}
    Click Element    ${Todos_ubicaciones}
    Wait Until Element Is Visible    ${Todos_estados}
    Click Element    ${Todos_estados}

Checkbox todos tipos equipo
    Sleep    5s
    Click Element    ${Todos_tipos_equipos}

Checkbox todos modelos
    Sleep    5s
    Click Element    ${Todos_modelos_equipos}

Checkbox todas ubicaciones
    Sleep    5s
    Click Element    ${Todos_ubicaciones}

Checkbox todos estados
    Sleep    2s
    Click Element    ${Todos_estados}
    Sleep    5s
    
Tipo equipo
    Wait Until Element Is Visible    ${Todos_tipos_equipos}
    Click Element    ${Todos_tipos_equipos}
    Sleep    5s
    Click Element    ${Combo_tipos_equipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Modelo
    Wait Until Element Is Visible    ${Todos_modelos_equipos}
    Click Element    ${Todos_modelos_equipos}
    Sleep    5s
    Click Element    ${Combo_modelos_equipos}
    Wait Until Element Is Visible    ${Modelo}
    Click Element    ${Modelo}

Ubicacion
    Wait Until Element Is Visible    ${Todos_ubicaciones}
    Click Element    ${Todos_ubicaciones}
    Sleep    5s
    Click Element    ${Combo_ubicacion}
    Wait Until Element Is Visible    ${Ubicacion}
    Click Element    ${Ubicacion}

Estado
    Wait Until Element Is Visible    ${Todos_estados}
    Click Element    ${Todos_estados}
    Sleep    5s
    Click Element    ${Combo_estado}
    Wait Until Element Is Visible    ${Estado}
    Click Element    ${Estado}

Pestaña mas opciones
    Wait Until Element Is Visible    ${Pestaña_mas_opciones}
    Click Element    ${Pestaña_mas_opciones}
    Sleep    3s

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}

Checkbox inactivos mas opciones
    Wait Until Element Is Visible    ${Todos_suscriptores}
    Click Element    ${Todos_suscriptores}
    Wait Until Element Is Visible    ${Todos_series}
    Click Element    ${Todos_series}
    Wait Until Element Is Visible    ${Todos_tiposcuadrillas}
    Click Element    ${Todos_tiposcuadrillas}
    Sleep    3s

Checkbox todos suscriptores
    Sleep    3s
    Wait Until Element Is Visible    ${Todos_suscriptores}
    Click Element    ${Todos_suscriptores}

Checkbox todas las series
    Sleep    3s
    Wait Until Element Is Visible    ${Todos_series}
    Click Element    ${Todos_series}

Checkbox todos tipos cuadrilla
    Sleep    3s
    Wait Until Element Is Visible    ${Todos_tiposcuadrillas}
    Click Element    ${Todos_tiposcuadrillas}

Suscriptor
    Wait Until Element Is Visible    ${Todos_suscriptores}
    Click Element    ${Todos_suscriptores}
    Sleep    5s
    Click Element    ${Combo_suscriptores}
    Wait Until Element Is Visible    ${Suscriptor}
    Click Element    ${Suscriptor}

Combo tipo cuadrilla
    Wait Until Element Is Visible    ${Todos_tiposcuadrillas}
    Click Element    ${Todos_tiposcuadrillas}
    Sleep    5s
    Click Element    ${Combo_tipo_cuadrilla}
    Wait Until Element Is Visible    ${Tipo_cuadrilla}
    Click Element    ${Tipo_cuadrilla}

Combo cuadrilla
    Sleep    5s
    Click Element    ${Combo_cuadrilla}
    Wait Until Element Is Visible    ${Cuadrilla}
    Click Element    ${Cuadrilla}

Campos vacios suscriptor
    Wait Until Element Is Visible    ${Campo_vacio_suscriptor}
    Click Element    ${Campo_vacio_suscriptor}

Pestaña seleccion
    Wait Until Element Is Visible    ${Pestaña_seleccion}
    Click Element    ${Pestaña_seleccion}

Campos vacios tipo de equipo
    Sleep    5s
    Wait Until Element Is Visible    ${Campo_vacio_tipo_equipo}
    Click Element    ${Campo_vacio_tipo_equipo}

Combo tipo equipo
    Sleep    5s
    Click Element    ${Combo_tipos_equipo}
    Sleep    3s
    Input Text    ${Filtro_tipo_equipo}    ${Descripcion_tipo_equipo}
    Sleep    4s
    Clear Element Text    ${Filtro_tipo_equipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Combo modelo
    Sleep    5s
    Click Element    ${Combo_modelos_equipos}
    Sleep    3s
    Input Text    ${Filtro_modelo}    ${Descripcion_modelo}
    Sleep    4s
    Clear Element Text    ${Filtro_modelo}
    Wait Until Element Is Visible    ${Combo_modelos_equipos}
    Click Element    ${Combo_modelos_equipos}

Combo ubicacion
    Sleep    5s
    Click Element    ${Combo_ubicacion}
    Sleep    3s
    Input Text    ${Filtro_ubicacion}    ${Descripcion_ubicacion}
    Sleep    4s
    Clear Element Text    ${Filtro_ubicacion}
    Wait Until Element Is Visible    ${Combo_ubicacion}
    Click Element    ${Combo_ubicacion}

Combo estado
    Sleep    5s
    Click Element    ${Combo_estado}
    Sleep    3s   
    Input Text    ${Filtro_estado}    ${Descripcion_estado}
    Sleep    4s
    Clear Element Text    ${Filtro_estado}
    Wait Until Element Is Visible    ${Combo_estado}
    Click Element    ${Combo_estado}

Combo suscriptores
    Sleep    3s
    Wait Until Element Is Visible    ${Pestaña_mas_opciones}
    Click Element    ${Pestaña_mas_opciones}
    Sleep    5s
    Click Element    ${Combo_suscriptores}
    Sleep    3s
    Input Text    ${Filtro_suscriptor}    ${Descripcion_suscriptor}
    Sleep    4s
    Clear Element Text    ${Filtro_suscriptor}
    Wait Until Element Is Visible    ${Combo_suscriptores}
    Click Element    ${Combo_suscriptores}

Combo tipo cuadrilla filtro
    Sleep    5s
    Click Element    ${Combo_tipo_cuadrilla}
    Sleep    3s  
    Input Text    ${Filtro_tipo_cuadrilla}    ${Descripcion_tipo_cuadrilla}
    Sleep    4s
    Clear Element Text    ${Filtro_tipo_cuadrilla}
    Wait Until Element Is Visible    ${Tipo_cuadrilla}
    Click Element    ${Tipo_cuadrilla}

Combo cuadrilla filtro
    Sleep    5s
    Click Element    ${Combo_cuadrilla}
    Sleep    3s
    Input Text    ${Filtro_cuadrilla}    ${Descripcion_cuadrilla}
    Sleep    4s
    Clear Element Text    ${Filtro_cuadrilla}
    Wait Until Element Is Visible    ${Combo_cuadrilla}
    Click Element    ${Combo_cuadrilla}

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