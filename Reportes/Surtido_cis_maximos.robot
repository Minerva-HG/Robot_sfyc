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
###################################Pantalla REPORTE SURTIDO CIS MAX Y MIN##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]    
${Descripcion_reporte}    Surtido CIS máximos y mínimos
${Reporte}  xpath=//td[contains(.,'Surtido CIS máximos y mínimos')]
################################Botones##############################################################################################
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
##############################Combos######################################################################################
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-cis-assortment-maximum-and-minimum-form/form/div/div/div/div[2]/app-cis-dropdown/dx-drop-down-box/div/div/div[1]/input
#############################Checkbox#############################################################################
${Todos_cis}    xpath=//span[contains(@class,'dx-checkbox-icon')]
############################Campos vacios######################################################################
${Campo_vacio_combo_cis}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
############################Registros##################################################################################
${Cis}    xpath=//td[contains(.,'CIS JAVIER MINA')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios

Consulta todos cis
    [Documentation]    Validacion de usuario
    [Tags]    test_dos
    Boton aceptar

Consulta por cis
    [Documentation]    Consulta por Cis
    [Tags]    test_tres
    Checkbox todos cis
    Cis
    Boton aceptar

PDF
    [Documentation]    Validando que genere reporte
    [Tags]    test_cuatro
    Boton aceptar

Combos
    [Documentation]    Validando combo cis
    [Tags]    test_cinco
    Combo cis

Campos vacios
    [Documentation]    Validando que no habilite el boton aceptar si existen campos vacios
    [Tags]    test_seis
    Combo cis vacio

Botón Cancelar
    [Documentation]    Validando que funcione de manera correcta el botón cancelar    
    [Tags]    test_siete
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

Combo cis vacio
    Wait Until Element Is Visible    ${Campo_vacio_combo_cis}
    Click Element    ${Campo_vacio_combo_cis}   

Checkbox todos cis
    Wait Until Element Is Visible    ${Todos_cis}
    Click Element    ${Todos_cis}

Cis
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}

Combo cis
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}

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
