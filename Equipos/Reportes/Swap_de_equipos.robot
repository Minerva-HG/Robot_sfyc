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
###################################Pantalla REPORTE SWAP DE EQUIPOS##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]    
${Descripcion_reporte}    Swap de equipos
${Reporte}  xpath=//td[contains(.,'Swap de equipos')]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
##############################Combos######################################################################################
${Combo_tipo_de_equipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-swap-form/form/div/div/div[1]/app-type-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_ubicacion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-swap-form/form/div/div/div[2]/app-location-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Entre_el}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-swap-form/form/div/div/div[3]/dx-date-box/div/div/div[1]/input
############################Campos vacios######################################################################
${Campo_vacio_tipo_de_equipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
############################Registros##################################################################################
${Tipo_equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Ubicacion}    xpath=//td[contains(.,'CIS REVOL. ALT/CAM')]
${Fecha}    xpath=(//span[contains(.,'1')])[2]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Swap de Equipos
    [Documentation]    Validar que el sistema muestre el reporte
    [Tags]    test_dos
    Tipo de equipo
    Ubicacion
    Entre el

Combos
    [Documentation]    Validar que no habilite el boton aceptar si existen campos vacios
    [Tags]    test_tres
    Combo tipo de equipo
    Combo ubicacion
    Combo entre el

Botón aceptar
    [Documentation]    Validar que funcione de manera correcta el botón aceptar
    [Tags]    test_cuatro
    Boton aceptar

PDF
    [Documentation]    Validar que genere el PDF
    [Tags]    test_cinco
    Boton aceptar

Campos vacios
    [Documentation]    Validar que no habilite el boton aceptar si existen campos vacios
    [Tags]    test_seis
    Campo vacio tipo de equipo

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

Tipo de equipo
    Wait Until Element Is Visible    ${Combo_tipo_de_equipo}
    Click Element    ${Combo_tipo_de_equipo}
    Wait Until Element Is Visible    ${Tipo_equipo}
    Click Element    ${Tipo_equipo}

Ubicacion
    Wait Until Element Is Visible    ${Combo_ubicacion}
    Click Element    ${Combo_ubicacion}
    Wait Until Element Is Visible    ${Ubicacion}
    Click Element    ${Ubicacion}

Entre el
    Wait Until Element Is Visible    ${Entre_el}
    Click Element    ${Entre_el}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Campo vacio tipo de equipo
    Wait Until Element Is Visible    ${Campo_vacio_tipo_de_equipo}
    Click Element    ${Campo_vacio_tipo_de_equipo}

Combo tipo de equipo
    Wait Until Element Is Visible    ${Combo_tipo_de_equipo}
    Click Element    ${Combo_tipo_de_equipo}

Combo ubicacion
    Wait Until Element Is Visible    ${Combo_ubicacion}
    Click Element    ${Combo_ubicacion}

Combo entre el
    Wait Until Element Is Visible    ${Entre_el}
    Click Element    ${Entre_el}

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    
    
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
