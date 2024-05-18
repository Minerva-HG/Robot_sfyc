*** Settings ***
Library  SeleniumLibrary
Library  String


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
###################################Pantalla REPORTE ANALÍTICO DE EQUIPOS POR UBICACIÓN Y MODELO##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[normalize-space()='Analítico de equipos por ubicación y modelo']
${Bottontipodeequipo}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-summary-equipment-models-form/form/div/div/div/app-type-equipment-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]
${Seleccionarequipo}  xpath=//td[normalize-space()='CABLE MODEMS']
${Bottonenviar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Bottonlimpiar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[3]/dx-button
${Equipodiferentealprimero}  xpath=//td[normalize-space()='ACCESS POINT']
${Bottoncancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[2]/dx-button
###################################Filtros############################################################################################
${Filtro_tipo_equipo}    xpath=//input[contains(@inputmode,'decimal')]
${Equipo}    12
${Filtro_descripcion}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Descripcion}    DOWN CONVERTER

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Botton limpiar
    Sleep    10s
    Seleccionar botton limpiar
    Sleep    5s

Combo tipo de equipo
    Sleep    5s
    Seleccionar botton tipo de equipo
    Sleep    5s
    Seleccionar otro equipo diferente al primero
    Sleep    5s

Generar reporte
    Sleep    5s
    Seleccionar botton enviar

Filtrado de campos
    Filtros

Botton cancelar
    Sleep    10s
    Seleccionar botton cancelar
    Sleep    3s



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

Seleccionar botton tipo de equipo
    Click Element    ${Bottontipodeequipo}

Seleccionar equipo
    Click Element    ${Seleccionarequipo}

Seleccionar botton enviar
    Click Element    ${Bottonenviar}

Seleccionar botton limpiar
    Click Element    ${Bottonlimpiar}

Seleccionar otro equipo diferente al primero
    Click Element    ${Equipodiferentealprimero}

Seleccionar botton cancelar
    Click Element    ${Bottoncancelar}

Filtros
    Wait Until Element Is Visible    ${Bottontipodeequipo}
    Click Element    ${Bottontipodeequipo}  
    Input Text    ${Filtro_tipo_equipo}    ${Equipo}  
    Sleep    5s
    Clear Element Text    ${Filtro_tipo_equipo}
    Input Text    ${Filtro_descripcion}    ${Descripcion}  
    Sleep    5s
    Clear Element Text    ${Filtro_descripcion}
    