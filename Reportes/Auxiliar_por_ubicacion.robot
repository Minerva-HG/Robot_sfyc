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
###################################Pantalla REPORTE AUXILIAR DE EQUIPOS POR UBICACIÓN##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[contains(.,'Auxiliar de equipos por ubicación')]
###################################Radio button#############################################################################
${Radio_button_serie}    xpath=//div[@class='dx-radiobutton-icon']
${Radio_button_identificador}    xpath=//div[@class='dx-radiobutton-icon']
#################################Checkbox#########################################################################
${Todos_tipos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Todos_modelos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Todos_ubicaciones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Todos_estado_desde}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Todos_tipos_cuadrillas_desde}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Todos_tipos_cuadrillas_hasta}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Todos_suscriptores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Todas_las_series}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
#################################Combos################################################################################
${Combo_tipos_equipo}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Combo_modelos_equipos}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Combo_ubicacion_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-source-target-location-equipment-parameters/div/div/div[1]/div[2]/app-location-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_ubicacion_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-source-target-location-equipment-parameters/div/div/div[2]/app-location-equipment-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_estado_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-state-equipment-parameters/div/div/div[1]/div[2]/app-state-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_estado_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-state-equipment-parameters/div/div/div[2]/app-state-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipo_cuadrilla_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-crew-parameters[1]/div/div/div[1]/div[2]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_cuadrilla_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-crew-parameters[1]/div/div/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipo_cuadrilla_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-crew-parameters[2]/div/div/div[1]/div[2]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_cuadrilla_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-crew-parameters[2]/div/div/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Campo_serie}    xpath=//input[contains(@maxlength,'35')]
${Combo_suscriptores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-equipments-by-location-form/form/dx-tab-panel/div[2]/div/div/div[4]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-serie-and-subscriber-parameters/div/div/div[1]/div[2]/app-subscriber-dropdown/dx-drop-down-box/div/div/div[1]/input
################################Equipo########################################################################
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
################################Modelos##################################################################################
${Modelos}    xpath=(//td[contains(.,'3COM')])[1]
################################Ubicaciones############################################################################
${Desde}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]
${Hasta}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[5]
#################################Estados################################################################################
${Estado_desde}    xpath=//td[contains(.,'ENVIADOS DE SISTEMAS')]
${Estado_hasta}    xpath=//td[@aria-describedby='dx-col-20'][contains(.,'ERROR DE AUDIO')]
#####################################Cuadrillas#################################################################################
${Tipo_cuadrilla_desde}    xpath=//td[@aria-describedby='dx-col-9'][contains(.,'ALM Almacen')]
${Cuadrilla_desde}    xpath=//td[contains(.,'0002')]
${Tipo_cuadrilla_hasta}    xpath=//td[@aria-describedby='dx-col-11'][contains(.,'ALM Almacen')]
${Cuadrilla_hasta}    xpath=//td[@aria-describedby='dx-col-21'][contains(.,'0007')]
######################################Suscriptor########################################################################################
${Suscriptor}    xpath=//td[contains(.,'SABINE MARTINA SHCUSTER SCHOLZ')]
#####################################Pestañas###########################################################################################
${Clasificacion}    xpath=//span[contains(.,'Clasificación')]
${Seleccion}    xpath=//span[contains(.,'Selección')]
${Mas_opciones_1}    xpath=(//span[contains(.,'Más opciones')])[1]
${Mas_opciones_2}    xpath=(//span[contains(.,'Más opciones')])[2]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
###############################Serie####################################################################
${Serie}    2524642422

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Identificador
    [Documentation]    Validando que habilite la opción por identificador
    [Tags]    test_dos
    Pestaña clasificacion
    Reporte por identificador
    Boton aceptar

Serie
    [Documentation]    Validando que habilite la opción por serie
    [Tags]    test_tres
    Reporte por serie
    Boton aceptar

Pestaña Selección
    [Documentation]    Validando la pestaña seleccion
    [Tags]    test_cuatro
    Seleccion

Modelo equipos
    [Documentation]    Validando combo tipos equipo
    [Tags]    test_cinco
    Equipo

Campo modelo
    [Documentation]    Validando combo modelos
    [Tags]    test_seis
    Modelo

Mas opciones (2)
    [Documentation]    Validando pestaña mas opciones 2
    [Tags]    test_siete
    Pestaña mas opciones 2

Campo series
    [Documentation]    Validando campo serie
    [Tags]    test_ocho
    Campo serie

Validar Suscriptores
    [Documentation]    Validando combo suscriptores
    [Tags]    test_diez
    Combo suscriptor

Tipo suscriptor
    [Documentation]    Validando suscriptor
    [Tags]    test_once
    Suscriptor

Botón preliminar
    [Documentation]    Generando reporte
    [Tags]    test_doce
    Boton aceptar

Mas opciones (1)
    [Documentation]    Validando pestaña mas opciones 1
    [Tags]    test_nueve
    Pestaña mas opciones 1

Listas despegables
    [Documentation]    Validando combos
    [Tags]    test_trece
    Boton limpiar
    Pestaña seleccion
    Combo tipos equipo
    Combo modelos
    Combo ubicacion desde
    Combo ubicacion hasta
    Pestaña mas opciones 1
    Combo estado desde
    Combo estado hasta
    Combo tipo de cuadrilla desde
    Combo cuadrilla desde
    Combo tipo de cuadrilla hasta
    Combo cuadrilla hasta
    Pestaña mas opciones 2
    Combo suscriptores

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

Pestaña clasificacion
    Wait Until Element Is Visible    ${Clasificacion}
    Click Element    ${Clasificacion}
    Sleep    3s

Reporte por identificador
    Wait Until Element Is Visible    ${Radio_button_identificador}
    Click Element    ${Radio_button_identificador}

Reporte por serie
    Wait Until Element Is Visible    ${Radio_button_serie}
    Click Element    ${Radio_button_serie}

Seleccion
    Wait Until Element Is Visible    ${Seleccion}
    Click Element    ${Seleccion}

Equipo
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
    Wait Until Element Is Visible    ${Modelos}
    Click Element    ${Modelos}    

Pestaña mas opciones 2
    Wait Until Element Is Visible    ${Mas_opciones_2}
    Click Element    ${Mas_opciones_2}

Campo serie
    Wait Until Element Is Visible    ${Todas_las_series}
    Click Element    ${Todas_las_series}
    Sleep    5s
    Click Element    ${Campo_serie}
    Input Text    ${Campo_serie}    ${Serie}

Pestaña mas opciones 1
    Wait Until Element Is Visible    ${Mas_opciones_1}
    Click Element    ${Mas_opciones_1}

Combo suscriptor
    Wait Until Element Is Visible    ${Todos_suscriptores}
    Click Element    ${Todos_suscriptores}
    Sleep    10s
    Click Element    ${Combo_suscriptores}

Suscriptor
    Wait Until Element Is Visible    ${Suscriptor}
    Click Element    ${Suscriptor}

Pestaña seleccion
    Wait Until Element Is Visible    ${Seleccion}
    Click Element    ${Seleccion}

Combo tipos equipo
    Wait Until Element Is Visible    ${Todos_tipos_equipos}
    Click Element    ${Todos_tipos_equipos}
    Sleep    5s
    Click Element    ${Combo_tipos_equipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Combo modelos
    Wait Until Element Is Visible    ${Todos_modelos_equipos}
    Click Element    ${Todos_modelos_equipos}
    Sleep    5s
    Click Element    ${Combo_modelos_equipos}
    Wait Until Element Is Visible    ${Modelos}
    Click Element    ${Modelos}

Combo ubicacion desde
    Wait Until Element Is Visible    ${Todos_ubicaciones}
    Click Element    ${Todos_ubicaciones}
    Sleep    5s
    Click Element    ${Combo_ubicacion_desde}
    Wait Until Element Is Visible    ${Desde}
    Click Element    ${Desde}

Combo ubicacion hasta
    Wait Until Element Is Visible    ${Combo_ubicacion_hasta}
    Click Element    ${Combo_ubicacion_hasta}
    Wait Until Element Is Visible    ${Hasta}
    Click Element    ${Hasta}   

Combo estado desde
    Wait Until Element Is Visible    ${Todos_estado_desde}
    Click Element    ${Todos_estado_desde}
    Sleep    5s
    Click Element    ${Combo_estado_desde}
    Wait Until Element Is Visible    ${Estado_desde}
    Click Element    ${Estado_desde}

Combo estado hasta
    Wait Until Element Is Visible    ${Combo_estado_hasta}
    Click Element    ${Combo_estado_hasta}
    Wait Until Element Is Visible    ${Estado_hasta}
    Click Element    ${Estado_hasta}

Combo tipo de cuadrilla desde
    Wait Until Element Is Visible    ${Todos_tipos_cuadrillas_desde}
    Click Element    ${Todos_tipos_cuadrillas_desde}
    Sleep    5s
    Click Element    ${Combo_tipo_cuadrilla_desde}
    Wait Until Element Is Visible    ${Cuadrilla_desde}
    Click Element    ${Cuadrilla_desde}

Combo cuadrilla desde
    Wait Until Element Is Visible    ${Combo_estado_desde}
    Click Element    ${Combo_estado_desde}
    Wait Until Element Is Visible    ${Estado_desde}
    Click Element    ${Estado_desde}

Combo tipo de cuadrilla hasta
    Wait Until Element Is Visible    ${Todos_tipos_cuadrillas_hasta}
    Click Element    ${Todos_tipos_cuadrillas_hasta}
    Sleep    5s
    Click Element    ${Combo_cuadrilla_hasta}
    Wait Until Element Is Visible    ${Cuadrilla_hasta}
    Click Element    ${Cuadrilla_hasta}

Combo cuadrilla hasta
    Wait Until Element Is Visible    ${Combo_cuadrilla_hasta}
    Click Element    ${Combo_cuadrilla_hasta}
    Wait Until Element Is Visible    ${Cuadrilla_hasta}
    Click Element    ${Cuadrilla_hasta}

Combo suscriptores
    Wait Until Element Is Visible    ${Todos_suscriptores}
    Click Element    ${Todos_suscriptores}
    Sleep    5s
    Click Element    ${Combo_suscriptores}
    Wait Until Element Is Visible    ${Suscriptor}
    Click Element    ${Suscriptor}

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    

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
