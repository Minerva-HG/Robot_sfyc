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
###################################Pantalla REPORTE LISTADO DE EQUIPOS POR UBICACIÓN##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]    
${Descripcion_reporte}    Listado de equipos por ubicación
${Reporte}  xpath=//td[contains(.,'Listado de equipos por ubicación')]
#######################################Radio button#########################################################################
${Serie}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[1]
${Identificador}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Ambos}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]
${Residenciales}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[7]
${Empresariales}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[9]
####################################Checkbox###########################################################################
${Todos_tipos_de_equipo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Todos_modelos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Todas_ubicaciones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Todos_estados}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Todos_tipo_cuadrilla_desde}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Todos_tipo_cuadrilla_hasta}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Todos_suscriptores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Todos_serie}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
#########################################Combos#################################################################################
${Combo_tipo_de_equipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-type-equipment-and-model-parameters/div/div/div[1]/div[2]/app-type-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_modelos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-type-equipment-and-model-parameters/div/div/div[2]/div[2]/app-model-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_ubicacion_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-source-target-location-equipment-parameters/div/div/div[1]/div[2]/app-location-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_ubicacion_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[2]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-source-target-location-equipment-parameters/div/div/div[2]/app-location-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_estado_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-state-equipment-parameters/div/div/div[1]/div[2]/app-state-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_estado_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-state-equipment-parameters/div/div/div[2]/app-state-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipo_cuadrilla_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-crew-parameters[1]/div/div/div[1]/div[2]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_cuadrilla_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-crew-parameters[1]/div/div/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipo_cuadrilla_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-crew-parameters[2]/div/div/div[1]/div[2]/app-type-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_cuadrilla_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[3]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-crew-parameters[2]/div/div/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_suscriptores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[4]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-serie-and-subscriber-parameters/div/div/div[1]/div[2]/app-subscriber-dropdown/dx-drop-down-box/div/div/div[1]/input
${Campo_series}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-location-form/form/dx-tab-panel/div[2]/div/div/div[4]/div/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-serie-and-subscriber-parameters/div/div/div[2]/div[2]/dx-text-box/div/div[1]/input
#######################################Registros combos##################################################################################
${Tipo_de_equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Modelo}    xpath=//td[contains(.,'2500')]
${Ubicacion_desde}    xpath=//td[contains(.,'CENTRAL ALTAS/CAMBIO')]
${Ubicacion_hasta}    xpath=(//td[contains(.,'CIS REVOL. ALT/CAM')])[2]
${Estado_desde}    xpath=//td[contains(.,'ENVIADOS DE SISTEMAS')]
${Estado_hasta}    xpath=(//td[contains(.,'ERROR DE VIDEO')])[2]
${Tipo_cuadrilla_desde}    xpath=//td[contains(.,'ALM Almacen')]
${Cuadrilla_desde}    xpath=//td[contains(.,'0001')]
${Tipo_cuadrilla_hasta}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[3]
${Cuadrilla_hasta}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[7]
${Suscriptor}    xpath=//td[contains(.,'SABINE MARTINA SHCUSTER SCHOLZ')]
${Serie_ha_ingresar}     131455334CD
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
######################################Campo vacio############################################################################################
${Campo_vacio_tipo_equipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
######################################Pestañas################################################################################################
${Clasificacion}    xpath=//span[contains(.,'Clasificación')]
${Seleccion}    xpath=//span[contains(.,'Selección')]
${Mas_opciones1}    xpath=(//span[contains(.,'Más opciones')])[1]
${Mas_opciones2}    xpath=(//span[contains(.,'Más opciones')])[2]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Pestaña Clasificación
    [Documentation]    Validando que cuente con la opcion por serie y por identificador
    [Tags]    test_dos
    Pestaña clasificacion
    Sleep    3s

Identificador
    [Documentation]    Validando que permita la consulta por identificador
    [Tags]    test_tres
    Identificador
    Sleep    3s
    Boton aceptar

Serie
    [Documentation]    Validando que permita la consulta por serie
    [Tags]    test_cuatro
    Serie
    Sleep    3s
    Boton aceptar

Pestaña Selección
    [Documentation]    Validando que pueda seleccionar la pestaña seleccion
    [Tags]    test_cinco
    Pestaña seleccion
    
Tipos de Equipo
    [Documentation]    Validando combo tipos de equipo
    [Tags]    test_seis
    Checkbox todos tipos de equipo
    Tipo de equipo

Modelo
    [Documentation]    Validando combo modelo
    [Tags]    test_siete
    Checkbox modelos
    Modelo

Ubicación
    [Documentation]    Validando combos ubicaciones
    [Tags]    test_ocho
    Checkbox todas las ubicaciones
    Ubicacion desde
    Ubicacion hasta

Mas opciones
    [Documentation]    Validando que pueda seleccionar la pestaña mas opciones 1
    [Tags]    test_nueve
    Pestaña mas opciones 1

Validar Estados
    [Documentation]    Validando combo estados
    [Tags]    test_diez
    Checkbox todos estados
    Estado desde
    Estado hasta

Validar Tipo Cuadrillas
    [Documentation]    Validando combo tipos de cuadrillas
    [Tags]    test_once
    Checkbox todos tipo de cuadrilla desde
    Tipo de cuadrilla desde
    Cuadrilla desde

Validar Cuadrillas 
    [Documentation]    Validando que muestre las cuadrillas
    [Tags]    test_doce
    Tipo de cuadrilla hasta
    Cuadrilla hasta

Mas opciones (2)
    [Documentation]    Validando que pueda seleccionar la pestaña Mas opciones 2
    [Tags]    test_trece
    Pestaña mas opciones 2

Validar serie
    [Documentation]    Validando que pueda consultar por serie
    [Tags]    test_catorce
    Checkbox todas las series
    Campo serie
    Boton aceptar
    Checkbox todas las series

Validar Suscriptores
    [Documentation]    Validando que pueda seleccionar la pestaña seleccion
    [Tags]    test_quince
    Checkbox todos los suscriptores
    Suscriptor

Validar Tipos Suscriptores
    [Documentation]    Validando que pueda consultar por diferente tipo de ssucriptor
    [Tags]    test_diezciseis
    Suscriptor ambos
    Boton aceptar
    Suscriptor residenciales
    Boton aceptar
    Suscriptor empresariales

Imprimir
    [Documentation]    Validando que imprima el reporte en formato PDF
    [Tags]    test_diezcisiete
    Boton aceptar

Campos Vacios 
    [Documentation]    Validando que no habilite el botón aceptar si existen campos vacios
    [Tags]    test_diezciocho
    Pestaña seleccion
    Campo vacio tipo equipo

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

Identificador
    Wait Until Element Is Visible    ${Identificador}
    Click Element    ${Identificador} 

Serie
    Wait Until Element Is Visible    ${Serie}
    Click Element    ${Serie}

Campo serie
    Wait Until Element Is Visible    ${Campo_series}
    Click Element    ${Campo_series}  
    Input Text    ${Campo_series}    ${Serie_ha_ingresar} 
    
Pestaña seleccion
    Wait Until Element Is Visible    ${Seleccion}
    Click Element    ${Seleccion}

Checkbox todos tipos de equipo
    Wait Until Element Is Visible    ${Todos_tipos_de_equipo}
    Click Element    ${Todos_tipos_de_equipo}

Tipo de equipo
    Wait Until Element Is Visible    ${Combo_tipo_de_equipo}
    Click Element    ${Combo_tipo_de_equipo}
    Wait Until Element Is Visible    ${Tipo_de_equipo}
    Click Element    ${Tipo_de_equipo}    

Checkbox modelos
    Wait Until Element Is Visible    ${Todos_modelos}
    Click Element    ${Todos_modelos}

Modelo
    Wait Until Element Is Visible    ${Combo_modelos}
    Click Element    ${Combo_modelos}
    Wait Until Element Is Visible    ${Modelo}
    Click Element    ${Modelo}

Checkbox todas las ubicaciones
    Wait Until Element Is Visible    ${Todas_ubicaciones}
    Click Element    ${Todas_ubicaciones}

Ubicacion desde
    Wait Until Element Is Visible    ${Combo_ubicacion_desde}
    Click Element    ${Combo_ubicacion_desde}
    Wait Until Element Is Visible    ${Ubicacion_desde}
    Click Element    ${Ubicacion_desde}    

Ubicacion hasta
    Wait Until Element Is Visible    ${Combo_ubicacion_hasta}
    Click Element    ${Combo_ubicacion_hasta}
    Wait Until Element Is Visible    ${Ubicacion_hasta}
    Click Element    ${Ubicacion_hasta} 

Pestaña mas opciones 1
    Wait Until Element Is Visible    ${Mas_opciones1}
    Click Element    ${Mas_opciones1} 

Checkbox todos estados
    Wait Until Element Is Visible    ${Todos_estados}
    Click Element    ${Todos_estados}

Estado desde
    Wait Until Element Is Visible    ${Combo_estado_desde}
    Click Element    ${Combo_estado_desde} 
    Wait Until Element Is Visible    ${Estado_desde}
    Click Element    ${Estado_desde}   

Estado hasta
    Wait Until Element Is Visible    ${Combo_estado_hasta}
    Click Element    ${Combo_estado_hasta}
    Wait Until Element Is Visible    ${Estado_hasta}
    Click Element    ${Estado_hasta}

Checkbox todos tipo de cuadrilla desde
    Wait Until Element Is Visible    ${Todos_tipo_cuadrilla_desde}
    Click Element    ${Todos_tipo_cuadrilla_desde}

Tipo de cuadrilla desde
    Wait Until Element Is Visible    ${Combo_tipo_cuadrilla_desde}
    Click Element    ${Combo_tipo_cuadrilla_desde}
    Wait Until Element Is Visible    ${Tipo_cuadrilla_desde}
    Click Element    ${Tipo_cuadrilla_desde}

Cuadrilla desde
    Wait Until Element Is Visible    ${Combo_cuadrilla_desde}
    Click Element    ${Combo_cuadrilla_desde}
    Wait Until Element Is Visible    ${Cuadrilla_desde}
    Click Element    ${Cuadrilla_desde}

Tipo de cuadrilla hasta
    Wait Until Element Is Visible    ${Combo_tipo_cuadrilla_hasta}
    Scroll Element Into View    ${Aceptar}
    Click Element    ${Combo_tipo_cuadrilla_hasta}
    Wait Until Element Is Visible    ${Tipo_cuadrilla_hasta}
    Click Element    ${Tipo_cuadrilla_hasta}

Cuadrilla hasta
    Wait Until Element Is Visible    ${Combo_cuadrilla_hasta}
    Click Element    ${Combo_cuadrilla_hasta}
    Wait Until Element Is Visible    ${Cuadrilla_hasta}
    Click Element    ${Cuadrilla_hasta}

Pestaña mas opciones 2
    Wait Until Element Is Visible    ${Mas_opciones2}
    Click Element    ${Mas_opciones2}  

Checkbox todas las series
    Wait Until Element Is Visible    ${Todos_serie}
    Click Element    ${Todos_serie}  

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    

Campo vacio tipo equipo
    Sleep    5s
    Click Element    ${Campo_vacio_tipo_equipo}

Pestaña clasificacion
    Wait Until Element Is Visible    ${Clasificacion}
    Click Element    ${Clasificacion}

Checkbox todos los suscriptores
    Wait Until Element Is Visible    ${Todos_suscriptores}
    Click Element    ${Todos_suscriptores}

Suscriptor
    Wait Until Element Is Visible    ${Combo_suscriptores}
    Click Element    ${Combo_suscriptores}
    Wait Until Element Is Visible    ${Suscriptor}
    Click Element    ${Suscriptor}

Suscriptor ambos
    Wait Until Element Is Visible    ${Ambos}
    Click Element    ${Ambos}

Suscriptor residenciales
    Wait Until Element Is Visible    ${Residenciales}
    Click Element    ${Residenciales}

Suscriptor empresariales
    Wait Until Element Is Visible    ${Empresariales}
    Click Element    ${Empresariales}
    
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
