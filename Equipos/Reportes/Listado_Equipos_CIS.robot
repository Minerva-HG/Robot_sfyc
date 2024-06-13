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
###################################Pantalla REPORTE LISTADO DE EQUIPOS CIS, ALM Y CUA POR ESTADO##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]    
${Descripcion_reporte}    Listado de equipos CIS, ALM y CUA por estado
${Reporte}  xpath=//td[contains(.,'Listado de equipos CIS, ALM y CUA por estado')]
#########################################Combos#################################################################################
${Combo_tipo_de_equipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-cis-alm-cua-by-state-form/form/div/div/div[1]/app-type-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_estado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-equipments-list-cis-alm-cua-by-state-form/form/div/div/div[2]/app-state-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
#######################################Registros combos##################################################################################
${Tipo_de_equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Estado}    xpath=//td[contains(.,'ENVIADOS DE SISTEMAS')]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
######################################Campo vacio############################################################################################
${Campo_vacio_tipo_equipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]


*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Listado
    [Documentation]    Validacion de listado de combos
    [Tags]    test_dos
    Tipo de equipo
    Estado

Combos
    [Documentation]    Validacion de combos
    [Tags]    test_tres
    Combo tipo de equipo
    Combo estado

PDF
    [Documentation]    Validando que genere el PDF
    [Tags]    test_cuatro
    Boton aceptar
    
Botón Limpiar
    [Documentation]    Validando que boton limpiar funcione de manera correcta
    [Tags]    test_cinco
    Boton limpiar

Botón cancelar
    [Documentation]    Validando que boton cancelar funcione de manera correcta
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
    Wait Until Element Is Visible    ${Tipo_de_equipo}
    Click Element    ${Tipo_de_equipo}    

Estado
    Wait Until Element Is Visible    ${Combo_estado}
    Click Element    ${Combo_estado}
    Wait Until Element Is Visible    ${Estado}
    Click Element    ${Estado}

Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}    

Campo vacio tipo equipo
    Sleep    5s
    Click Element    ${Campo_vacio_tipo_equipo}

Combo tipo de equipo
    Wait Until Element Is Visible    ${Combo_tipo_de_equipo}
    Click Element    ${Combo_tipo_de_equipo}
    Sleep    5s
    Click Element    ${Combo_tipo_de_equipo}

Combo estado    
    Wait Until Element Is Visible    ${Combo_estado}
    Click Element    ${Combo_estado}
    Sleep    5s
    Click Element    ${Combo_estado}
    
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

