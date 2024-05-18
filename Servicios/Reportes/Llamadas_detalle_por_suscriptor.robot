*** Settings ***
Documentation    Reporte llamadas - detalle por suscriptor
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
@{passL}=    Create List    Mega12345   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte Llamadas - detalle por suscriptor###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
${Combo_reportes}    xpath=//input[contains(@aria-expanded,'false')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    LLamadas
${Reporte_llamadas_detalle_por_suscriptor}    xpath=//td[contains(.,'Llamadas - Detalle por suscriptor')]
########################Fecha desde#########################################################################################
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Fecha_desde}    xpath=(//span[contains(.,'1')])[3]
#########################Fecha hasta##############################################################################################
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'7')])[13]
#########################Botón aceptar#######################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte llamadas - detalle por suscriptor
    [Tags]    Ingresar usuario
    Validacion de usuarios

Combo fecha desde
    [Documentation]    Reporte llamadas - detalle por suscriptor
    [Tags]    Pantalla llamadas - campo fecha desde
    Fecha desde

Combo fecha hasta 
    [Documentation]    Reporte llamadas - detalle por suscriptor
    [Tags]    Pantalla llamadas - campo fecha hasta
    Fecha hasta

Llamadas - Detalle por suscriptor
    [Documentation]    Reporte llamadas - detalle por suscriptor
    [Tags]    Pantalla llamadas - boton aceptar
    Test boton aceptar
    


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
        Click Element    ${Reporte_llamadas_detalle_por_suscriptor}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

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
