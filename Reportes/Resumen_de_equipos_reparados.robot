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
###################################Pantalla REPORTE RESUMEN DE EQUIPOS REPARADOS##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]    
${Descripcion_reporte}    Resumen equipos reparados
${Reporte}  xpath=//td[contains(.,'Resumen equipos reparados')]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
##############################Combos######################################################################################
${Combo_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-summary-equipments-repaired-form/form/div/app-reporting-start-end-date-parameters/div/div/div[1]/dx-date-box/div/div/div[1]/input
${Combo_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-summary-equipments-repaired-form/form/div/app-reporting-start-end-date-parameters/div/div/div[2]/dx-date-box/div/div/div[1]/input
#############################Fechas#############################################################################
${Fecha_desde}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/table/tbody/tr[1]/td[3]
${Fecha_hasta}    xpath=/html/body/div/div/div/div/div[1]/div/div/table/tbody/tr[4]/td[1]
${Fecha_menor_ha_desde}    xpath=/html/body/div/div/div/div/div[1]/div/div[1]/table/tbody/tr[1]/td[2]
############################Campos vacios######################################################################
${Campo_vacio_reporte}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Lista desplegable de reporte
    [Documentation]    Validando combo reporte
    [Tags]    test_dos
    Combo reporte

Campos
    [Documentation]    Validando campos Desde y Hasta
    [Tags]    test_tres
    Combo desde 
    Combo hasta

Fechas correctas
    [Documentation]    No se permite que el parámetro Hasta sea menor que Desde.
    [Tags]    test_cuatro
    Validación de fechas

Imprimir
    [Documentation]    Validando que arroje el reporte para imprimir
    [Tags]    test_cinco
    Boton aceptar

Campos Vacios
    [Documentation]    Validando que no active el botón aceptar si existen campos vacios
    [Tags]    test_seis
    Campo reporte vacio

Botón Limpiar
    [Documentation]    Validando botón limpiar
    [Tags]    test_siete
    Boton limpiar

Botón Cancelar
    [Documentation]    Validando botón cancelar
    [Tags]    test_ocho
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

Combo reporte
    Wait Until Element Is Visible    ${Botonparadesplegarreportes}
    Click Element    ${Botonparadesplegarreportes}
    Sleep    5s
    Click Element    ${Botonparadesplegarreportes}

Combo desde 
    Wait Until Element Is Visible    ${Combo_desde}
    Click Element    ${Combo_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}

Combo hasta
    Wait Until Element Is Visible    ${Combo_hasta}
    Click Element    ${Combo_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Validación de fechas
    Wait Until Element Is Visible    ${Combo_hasta}
    Click Element    ${Combo_hasta}
    Sleep    3s
    ${Bandera_para_fecha_menor}=    Run Keyword And Return Status    Page Should Contain    ${Fecha_menor_ha_desde}
    IF    '${Bandera_para_fecha_menor}' == 'True'
        Fail
    ELSE
        Click Element    ${Combo_hasta}
    END

Campo reporte vacio
    Wait Until Element Is Visible    ${Campo_vacio_reporte}
    Click Element    ${Campo_vacio_reporte}    

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
