*** Settings ***
Documentation    Reporte llamadas - resumen mensual
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
#########################Pantalla reporte Llamadas - resumen mensual###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    LLamadas
${Reporte_llamadas_resumen_mensual}    xpath=//td[contains(.,'Llamadas - Resumen mensual')]
#########################Botones#######################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
#############################Radio button######################################################################
@{Opcion}=    Create List    ${Radio_button_detalle_por_semana}    ${Radio_button_detalle_por_dia}    ${Radio_button_detalle_por_semana}    ${Radio_button_detalle_por_dia}   
@{Reporte}=    Create List    ${Radio_button_cable}    ${Radio_button_Help_Desk}    ${Radio_button_web}    ${Radio_button_visitas_en_cis}
${Radio_button_detalle_por_dia}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[1]
${Radio_button_detalle_por_semana}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Radio_button_cable}    xpath=(//div[@class='dx-radiobutton-icon'])[2]
${Radio_button_Help_Desk}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[7]
${Radio_button_web}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[9]
${Radio_button_visitas_en_cis}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[11]
#############################Combo mes############################################################################
${Combo_mes}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
################################Campo año#########################################################################
${Campo_año}    xpath=//span[contains(.,'2023')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    Ingresar usuario
    Validacion de usuarios

Opciones
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    Validar que cuente con los option buttons de: Cable, Help Desk, Web y Visitas en CIS
    Cable
    Help-Desk
    Web
    Visitas en CIS

Detalle por semana
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    Validar que genere el reporte detalle por semana
    Radio button detalle por semana

Llamadas - Resumen mensual
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    Validando reporte    
    Boton aceptar
    FOR    ${counter}    IN RANGE    1    5
        Generando reporte con diferentes datos    ${Reporte}[${counter}]    ${Opcion}[${counter}]    
        Boton aceptar
    END

Mes
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    Validar que desplegue un calendario para seleccionar el mes
    Combo mes

Año
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    validar que desplegue un calendario para seleccionar el año
    Test año

Boton limpiar
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    validar que el botón limpiar sea funcional
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte llamadas - resumen mensual
    [Tags]    validar que el botón cancelar sea funcional
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
        Click Element    ${Reporte_llamadas_resumen_mensual}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Cable
    Wait Until Element Is Visible    ${Boton_aceptar}    
    Click Element    ${Boton_aceptar}
    
Help-Desk
    Wait Until Element Is Visible    ${Radio_button_Help_Desk}
    Click Element    ${Radio_button_Help_Desk}
    

Web
    Wait Until Element Is Visible    ${Radio_button_web}
    Click Element    ${Radio_button_web}

Visitas en CIS
    Wait Until Element Is Visible    ${Radio_button_visitas_en_cis}
    Click Element    ${Radio_button_visitas_en_cis}

Combo mes
    Wait Until Element Is Visible    ${Combo_mes}
    Click Element    ${Combo_mes}

Test año
    Wait Until Element Is Visible    ${Campo_año}
    Click Element    ${Campo_año}

Radio button detalle por semana
    Wait Until Element Is Visible    ${Radio_button_detalle_por_semana}    
    Click Element    ${Radio_button_detalle_por_semana}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Generando reporte con diferentes datos
    [Documentation]    Seleccionando cis
    [Arguments]     ${Reporte}    ${Opcion} 
    Sleep    5s
    Click Element    ${Reporte}
    Wait Until Element Is Visible    ${Opcion}
    Click Element    ${Opcion}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Sleep    5s
    Click Element    ${Boton_cancelar}
