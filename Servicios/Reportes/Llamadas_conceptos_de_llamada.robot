*** Settings ***
Documentation    Reporte llamadas - Conceptos de llamda
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Megajos202   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte Llamadas - Conceptos de llamada###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    LLamadas
${Reporte_llamadas_conceptos_de_llamada}    xpath=//td[contains(.,'Llamadas - Conceptos de llamada')]
#########################Botones#############################################################################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
########################Fechas#######################################################################################################################
${Icono_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Fecha_Desde}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/table/tbody/tr[1]/td[6]
${Icono_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'8')])[15]
########################Combo sucursal#################################################################################################################
${Checkbox_todas_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Combo_sucursales}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-call-concept-form/form/app-reporting-branch-cis-parameter/div/div/div[1]/div[2]/app-all-branch-dropdown/dx-drop-down-box/div/div/div[1]/input
${Sucursal}    xpath=//td[contains(.,'Hermosillo')]
##########################Combo cis######################################################################################################################
${Checkbox_todos_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-call-concept-form/form/app-reporting-branch-cis-parameter/div/div/div[2]/div[2]/app-cis-dropdown/dx-drop-down-box/div/div/div[1]/input
${Cis}    xpath=//td[contains(.,'CIS VERACRUZ')]
#########################Combo tipo de llamada#############################################################################################################
${Checkbox_todos_tipos_de_llamada}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Combo_tipo_de_llamada}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-call-concept-form/form/app-call-type-parameter/div/div/div[1]/div[2]/app-call-type-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Tipo_llamada}    xpath=//td[contains(.,'602-Aclaración de Saldos y pagos')]
#########################Combo subtipo de llamada###########################################################################################################
${Checkbox_todos_subtipos_de_llamada}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Combo_subtipo_de_llamada}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-call-concept-form/form/app-call-type-parameter/div/div/div[2]/div[2]/app-subtype-call-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Subtipo_llamada_cliente}    xpath=//td[contains(.,'Cliente nuevo o reconectado')]
@{Subtipo_llamada}=    Create List    ${Subtipo_llamada_1}    ${Subtipo_llamada_2}    ${Subtipo_llamada_3}    ${Subtipo_llamada_4}    ${Subtipo_llamada_5}
${Subtipo_llamada_1}    xpath=//td[contains(.,'Cliente nuevo o reconectado')]
${Subtipo_llamada_2}    xpath=//td[contains(.,'Bonificaciones por promoción no aplicada')]   
${Subtipo_llamada_3}    xpath=//td[contains(.,'Cargo no reconocido')]
${Subtipo_llamada_4}    xpath=//td[contains(.,'Convenios de pago')]
${Subtipo_llamada_5}    xpath=//td[contains(.,'Dif. entre cobro y estado de cuenta')]
#########################Campo vacio################################################################################
${Campo_vacio_sucursal}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[4]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Ingresar usuario
    Validacion de usuarios

Fechas
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Fechas
    Test fechas

Llamadas - Conceptos de llamada
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Checkbox todos activos
    Boton aceptar

Combo sucursales
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Combo sucursales
    Test combo sucursal

CIS
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Combo CIS
    Test combo cis

Tipo de llamada
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Combo tipo de llamada
    Test combo tipo de llamada

Subtipo de llamada
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Combo Subtipo de llamada
    Test combo subtipo de llamada
    Boton aceptar
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferentes datos    ${Subtipo_llamada}[${counter}]    
        Boton aceptar
    END

Campos vacios
    [Documentation]    Reporte llamadas - conceptos de llamada
    [Tags]    Campos vacios
    Test campos vacios
    

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
        Click Element    ${Reporte_llamadas_conceptos_de_llamada}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Test fechas
    Wait Until Element Is Visible    ${Icono_fecha_desde}
    Click Element    ${Icono_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_Desde}
    Click Element    ${Fecha_Desde}
    Wait Until Element Is Visible    ${Icono_fecha_hasta}
    Click Element    ${Icono_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Generando reporte con diferentes datos 
    [Documentation]    Seleccionando cis
    [Arguments]     ${Subtipo_llamada} 
    Wait Until Element Is Visible    ${Combo_subtipo_de_llamada}
    Click Element    ${Combo_subtipo_de_llamada}
    #Sleep    25s
    Wait Until Element Is Visible    ${Subtipo_llamada}
    Click Element    ${Subtipo_llamada}

Test combo sucursal
    Wait Until Element Is Visible    ${Checkbox_todas_sucursales}
    Click Element    ${Checkbox_todas_sucursales}
    Wait Until Element Is Visible    ${Combo_sucursales}
    Click Element    ${Combo_sucursales}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Test combo cis
    Wait Until Element Is Visible    ${Checkbox_todos_cis}
    Click Element    ${Checkbox_todos_cis}
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}

Test combo tipo de llamada
    Wait Until Element Is Visible    ${Checkbox_todos_tipos_de_llamada}
    Click Element    ${Checkbox_todos_tipos_de_llamada}
    Wait Until Element Is Visible    ${Combo_tipo_de_llamada}
    Click Element    ${Combo_tipo_de_llamada}
    Wait Until Element Is Visible    ${Tipo_llamada}
    Click Element    ${Tipo_llamada}

Test combo subtipo de llamada
    Wait Until Element Is Visible    ${Checkbox_todos_subtipos_de_llamada}
    Click Element    ${Checkbox_todos_subtipos_de_llamada}
    Wait Until Element Is Visible    ${Combo_subtipo_de_llamada}
    Click Element    ${Combo_subtipo_de_llamada}
    Wait Until Element Is Visible    ${Subtipo_llamada_cliente}
    Click Element    ${Subtipo_llamada_cliente}

Test campos vacios
    Wait Until Element Is Visible    ${Campo_vacio_sucursal}
    Click Element    ${Campo_vacio_sucursal}
