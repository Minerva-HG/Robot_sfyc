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
###################################Pantalla REPORTE DEPURACIÓN DE EQUIPOS POR SFYC##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[contains(.,'Depuración de equipos por SfyC')]
#################################Checkbox#########################################################################
${Todos_tipos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Todos_modelos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Todos_ubicaciones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Resumen}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
#################################Combos################################################################################
${Combo_tipos_equipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipment-debugging-by-sfyc-form/form/div/app-reporting-type-equipment-and-model-parameters/div/div/div[1]/div[2]/app-type-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_modelos_equipos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipment-debugging-by-sfyc-form/form/div/app-reporting-type-equipment-and-model-parameters/div/div/div[2]/div[2]/app-model-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
${Combo_ubicacion_destino}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipment-debugging-by-sfyc-form/form/div/div/div[1]/div[2]/app-location-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
################################Equipo########################################################################
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
################################Modelos##################################################################################
${Modelos}    xpath=(//td[contains(.,'3COM')])[1]
################################Fechas############################################################################
${Desde}    xpath=(//span[contains(.,'2')])[1]
${Hasta}    xpath=(//span[contains(.,'15')])[3]
${Fecha_mayor_desde}    xpath=(//span[contains(.,'1')])[46]
#################################Estados################################################################################
${Ubicacion_destino}    xpath=//td[contains(.,'Actopan')]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
###############################Campos vacios################################################################################
${Tipo_equipo_vacio}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Depuración de Equipos por SFyC con resumen
    [Documentation]    Validando que genere reporte con resumen
    [Tags]    test_dos
    Combo tipos equipo
    Combo modelos equipo
    Fecha desde
    Fecha hasta
    Ubicación destino
    Checkbox resumen
    Boton aceptar

Depuración de Equipos por SFyC sin resumen
    [Documentation]    Validando que genere reporte sin resumen
    [Tags]    test_tres
    Checkbox resumen
    Boton aceptar

Campos vacios
    [Documentation]    Validando que no habilite el botón aceptar si existen campos vacios
    [Tags]    test_cuatro
    Tipos equipo vacio

Fechas mayor
    [Documentation]    Validando que no permita una fecha menor a fecha desde
    [Tags]    test_cinco
    Fecha hasta mayor a desde

Combos
    [Documentation]    Validando que funcionen de manera correcta cada uno de los combos
    [Tags]    test_seis
    Boton limpiar
    Combo tipos equipo
    Combo modelos equipo
    Fecha desde
    Fecha hasta
    Ubicación destino
    
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

Combo tipos equipo
    Wait Until Element Is Visible    ${Todos_tipos_equipos}
    Click Element    ${Todos_tipos_equipos}
    Sleep    5s
    Click Element    ${Combo_tipos_equipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Combo modelos equipo
    Wait Until Element Is Visible    ${Todos_modelos_equipos}
    Click Element    ${Todos_modelos_equipos}
    Sleep    5s
    Click Element    ${Combo_modelos_equipos}
    Wait Until Element Is Visible    ${Modelos}
    Click Element    ${Modelos}

Fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Desde}
    Click Element    ${Desde}

Fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Hasta}
    Click Element    ${Hasta}

Ubicación destino
    Wait Until Element Is Visible    ${Todos_ubicaciones}
    Click Element    ${Todos_ubicaciones}
    Sleep    5s
    Click Element    ${Combo_ubicacion_destino}
    Wait Until Element Is Visible    ${Ubicacion_destino}
    Click Element    ${Ubicacion_destino}

Checkbox resumen
    Wait Until Element Is Visible    ${Resumen}
    Click Element    ${Resumen}

Tipos equipo vacio
    Wait Until Element Is Visible    ${Tipo_equipo_vacio}
    Click Element    ${Tipo_equipo_vacio}

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    

Fecha hasta mayor a desde
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_mayor_desde}
    Click Element    ${Fecha_mayor_desde}

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