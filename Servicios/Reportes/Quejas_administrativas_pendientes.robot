*** Settings ***
Documentation    Quejas administrativas pendientes
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows
#Library    XML


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui       #https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Megajos202   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla quejas administrativas pendientes###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Boton_reportes_idividual}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[8]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Quejas administrativas
${Reporte_quejas_administrativas_pendientes}    xpath=//td[contains(.,'Quejas administrativas pendientes')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
######################################Combo sucursal##################################################################################
${Combo_sucursal}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
#######################################Fechas##################################################################################################
${Mes_anterior_desde}    xpath=//i[@class='dx-icon dx-icon-chevronleft']
${Mes_anterior_hasta}    xpath=(//i[@class='dx-icon dx-icon-chevronleft'])[2]
${Fecha_desde}    xpath=(//span[contains(.,'2')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'15')])[4]
######################################Sucursal########################################################################################
${Sucursal_los_mochis}    xpath=//td[contains(.,'Los Mochis')]
@{Sucursal}=    Create List    ${Sucursal1}    ${Sucursal2}    ${Sucursal3}    ${Sucursal4}    ${Sucursal5}
${Sucursal1}    xpath=//td[contains(.,'Hermosillo')]
${Sucursal2}    xpath=//td[contains(.,'Guaymas')]
${Sucursal3}    xpath=//td[contains(.,'Cd. Obregon')]
${Sucursal4}    xpath=//td[contains(.,'Navojoa')]
${Sucursal5}    xpath=//td[contains(.,'Huatabampo')]
######################################Filtros###############################################################################################
${Campo_id_sucursal}    xpath=//input[contains(@inputmode,'decimal')]
${id_sucursal}    21
${Campo_descripción}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Descripcion_sucursal}    Los mochis
#######################################Caracteres invalidos##########################################################################
${Caracteres_invalidos}    @$%&/_
######################################Checkbox todas las sucursales###########################################################################
${Checkbox_todas_las_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]

*** Test Cases ***
Quejas administrativas pendientes
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Validando reporte quejas administrativas pendientes
    Validacion de usuarios
    Test checkbox todas las sucursales
    Test combo sucursal
    Fecha desde
    Fecha hasta
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes sucursal     ${Sucursal}[${counter}]
        Test boton aceptar    
    END
    Test boton limpiar 
    Test filtros
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
        Sleep    15s
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        #Click Element    ${Boton_reportes_idividual}
        Sleep    7s
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Campo_descripcion}
        Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
        Sleep    4s
        Click Element    ${Reporte_quejas_administrativas_pendientes}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test checkbox todas las sucursales
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucursales}
    Click Element    ${Checkbox_todas_las_sucursales}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test combo sucursal
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucursales}
    Click Element    ${Checkbox_todas_las_sucursales}
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Sleep    5s
    Click Element    ${Sucursal_los_mochis} 
    
Fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Sleep    5s
    Click Element    ${Mes_anterior_desde}
    Sleep    5s
    Click Element    ${Fecha_desde}

Fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Sleep    5s
    Click Element    ${Mes_anterior_hasta}
    Sleep    5s
    Click Element    ${Fecha_hasta}

Test boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}

Test filtros
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Campo_id_sucursal}
    Input Text    ${Campo_id_sucursal}    ${id_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_id_sucursal}    
    Wait Until Element Is Visible    ${Campo_descripción}
    Input Text    ${Campo_descripción}    ${Descripcion_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_descripción} 

Generando reporte con diferentes sucursal
    [Documentation]    Seleccionando sucursal
    [Arguments]     ${Sucursal}
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal} 
