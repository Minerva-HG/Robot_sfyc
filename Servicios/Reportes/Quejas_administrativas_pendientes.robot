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
${Pagina}    https://servicios.qa-cluster.sfycnextgen.com.mx/ui       #https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Mega12345   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla quejas administrativas pendientes###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
${Boton_reportes_idividual}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[7]
${Combo_reportes}    xpath=//input[contains(@aria-expanded,'false')]
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
${Fecha_desde}    xpath=(//span[contains(.,'2')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'15')])[4]
######################################Sucursal########################################################################################
${Sucursal}    xpath=//td[contains(.,'Hermosillo')]
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
Usuarios con permisos a la pantalla 
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Ingresar usuario
    Validacion de usuarios

Reporte con todas las sucursales
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Reporte con todas las sucursales
    Test checkbox todas las sucursales

Combo sucursal
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Combo sucursal
    Test combo sucursal

Rango de fechas
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Rango de fechas
    Fecha desde
    Fecha hasta

Quejas administrativas pendientes
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Boton aceptar
    Test boton aceptar

Boton limpiar
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Boton limpiar
    Test boton limpiar 

Filtros
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Filtros
    Test filtros

Boton cancelar
    [Documentation]    Reporte quejas administrativas pendientes
    [Tags]    Boton cancelar
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
        #Click Element    ${Boton_reportes_idividual}
        Wait Until Element Is Visible    ${Combo_reportes}
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
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    
Fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}

Fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
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
