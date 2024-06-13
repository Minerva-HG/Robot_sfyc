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
###################################Pantalla REPORTE LISTADO DE EQUIPOS CON ERROR##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[contains(.,'Equipos con error')]
#################################Combos################################################################################
${Combo_tipos_de_equipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-errors-equipments-form/form/div/div/div/app-type-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-errors-equipments-form/form/div/app-reporting-start-end-date-parameters/div/div/div[2]/dx-date-box/div/div/div[1]/input
################################Fechas############################################################################
${Desde}    xpath=(//span[contains(.,'4')])[1]
${Hasta}    xpath=(//span[contains(.,'17')])[3]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
###############################Campos vacios################################################################################
${Tipo_de_equipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
################################Fecha hasta menor a Desde################################################################################
${Fecha_menor}    xpath=(//span[contains(.,'1')])[18]
##################################Tipo de equipo###############################################################################################
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Combo desde
    [Documentation]    Validacion de combo desde
    [Tags]    test_dos
    Fecha desde

Combo hasta
    [Documentation]    Validacion de combo hasta
    [Tags]    test_tres
    Fecha hasta

Combo tipo de equipo
    [Documentation]    Validacion de combo tipo de equipo
    [Tags]    test_cuatro
    Tipo de equipo

Botón aceptar
    [Documentation]    Validacion de botón aceptar
    [Tags]    test_cinco
    Boton aceptar

Generar reporte listado de equipos con error
    [Documentation]    Generando reporte
    [Tags]    test_seis
    Boton aceptar

Campos vacios
    [Documentation]    Validacion de campos vacios
    [Tags]    test_tres
    Campo vacio tipo de equipo
    
Botón limpiar
    [Documentation]    Validacion de botón limpiar
    [Tags]    test_cinco
    Boton limpiar

Botón Cancelar
    [Documentation]    Validacion de botón cancelar
    [Tags]    test_seis
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
        Sleep    3s
        Scroll Element Into View    ${Reporte}
        Sleep    3s
        Wait Until Element Is Visible    ${Reporte}
        Click Element    ${Reporte}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END 

Tipo de equipo
    Wait Until Element Is Visible    ${Combo_tipos_de_equipo}
    Click Element    ${Combo_tipos_de_equipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

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

Campo vacio tipo de equipo
    Wait Until Element Is Visible    ${Tipo_de_equipo}
    Click Element    ${Tipo_de_equipo}

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    

Fecha hasta menor ha fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Sleep    3s
    ${Bandera_fecha_visible}=    Run Keyword And Return Status    Page Should Contain Element    ${Fecha_menor}    
    IF    '${Bandera_fecha_visible}' == 'True'
        Sleep    3s
    ELSE
        Sleep    3s
    END

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

