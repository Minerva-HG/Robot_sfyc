*** Settings ***
Documentation    Reporte numeros de vanidad
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Megajos202   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte numeros de vanidad###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Numeros
${Reporte_numeros_de_vanidad}    xpath=//td[contains(.,'Números de vanidad')]
##########################Radio button###################################################################################################
${Radio_button_Codigo_area_local}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-vanity-numbers-form/form/div/div/div[1]/dx-radio-group/div/div[1]/div[1]/div/div
${Radio_button_sucursal}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
##########################Combos#######################################################################################################################
${Combo_codigo_area_local}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-vanity-numbers-form/form/div/div/div[2]/app-local-area-code-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-vanity-numbers-form/form/div/div/div[2]/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
##########################Registros#######################################################################################################################################
${Codigo_area_local}    xpath=//td[contains(.,'33')]
${Sucursal_hermosillo}    xpath=//td[contains(.,'Hermosillo')]
@{Sucursal}=    Create List    ${Sucursal1}    ${Sucursal2}    ${Sucursal3}    ${Sucursal4}    ${Sucursal5}
${Sucursal1}    xpath=//td[contains(.,'Guaymas')]
${Sucursal2}    xpath=//td[contains(.,'Cd. Obregon')]
${Sucursal3}    xpath=//td[contains(.,'Navojoa')]
${Sucursal4}    xpath=//td[contains(.,'Huatabampo')]
${Sucursal5}    xpath=//td[contains(.,'Los Mochis')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
##########################################Campo vacio#####################################################################################################################
${Campo_vacio}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[5]

*** Test Cases ***
Números de vanidad
    [Documentation]    Reporte numeros de vanidad
    [Tags]    Valida reporte numeros de vanidad
    Validacion de usuarios
    Codigo area local
    Boton aceptar
    Sucursal
    Boton aceptar
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes sucursal    ${Sucursal}[${counter}]
        Boton aceptar  
    END


Campos vacios
    [Documentation]    Reporte numeros de vanidad
    [Tags]    Validar campos vacios
    Combo vacio

Boton limpiar
    [Documentation]    Reporte numeros de vanidad
    [Tags]    Valida que el botón limpiar funcione correctamente
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte numeros de vanidad
    [Tags]    Valida que el botón cancelar funcione correctamente
    Test boton cancelar
   

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
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Campo_descripcion}
        Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
        Sleep    4s
        Click Element    ${Reporte_numeros_de_vanidad}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END
 

Combo vacio
    Wait Until Element Is Visible    ${Campo_vacio}
    Click Element    ${Campo_vacio}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}

Codigo area local
    Wait Until Element Is Visible    ${Combo_codigo_area_local}
    Click Element   ${Combo_codigo_area_local}
    Wait Until Element Is Visible    ${Codigo_area_local}
    Click Element    ${Codigo_area_local}

Sucursal
    Sleep    4s
    Click Element    ${Radio_button_sucursal}
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal_hermosillo}
    Click Element    ${Sucursal_hermosillo}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
       
Generando reporte con diferentes sucursal
    [Documentation]    Seleccionando sucursal
    [Arguments]     ${Sucursal}  
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
