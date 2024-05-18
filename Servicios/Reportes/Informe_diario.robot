*** Settings ***
Documentation    Reporte informe diario
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows


*** Variables ***  
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte informe diario###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Informe diario
${Reporte_informe_diario}    xpath=(//td[contains(.,'Informe diario')])[1]
#########################Fechas############################################################################################################
${Icono_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
##################################Combo sucursal#################################################################################################
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-report-form/form/div[1]/app-branch-or-zone-parameter/div/div/div/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Sucursal}=    Create List    ${Sucursal1}    ${Sucursal2}    ${Sucursal3}    ${Sucursal4}    ${Sucursal5}
${Sucursal1}    xpath=//td[contains(.,'Hermosillo')]
${Sucursal2}    xpath=//td[contains(.,'Guaymas')]
${Sucursal3}    xpath=//td[contains(.,'Cd. Obregon')]
${Sucursal4}    xpath=//td[contains(.,'Navojoa')]
${Sucursal5}    xpath=//td[contains(.,'Huatabampo')]
#####################################Botones####################################################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
#####################################Por zona##########################################################################################
${Radio_button_por_zona}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Combo_por_zona}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-report-form/form/div[1]/app-branch-or-zone-parameter/div/div/div/app-zones-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Zona}=    Create List    ${Zona1}    ${Zona2}    ${Zona3}    ${Zona4}    ${Zona5}   
${Zona1}    xpath=//td[contains(.,'ZONA 1')]
${Zona2}    xpath=//td[contains(.,'ZONA 2')]
${Zona3}    xpath=//td[contains(.,'ZONA 3')]
${Zona4}    xpath=//td[contains(.,'ZONA 4')]
${Zona5}    xpath=//td[contains(.,'ZONA 5')]
${Zona_1_manual}    xpath=//td[contains(.,'ZONA 1')]
#########################################Campo vacio##############################################################################################
${Campo_vacio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-daily-report-form/form/div[1]/app-branch-or-zone-parameter/div/div/div/app-zones-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span

*** Test Cases ***
Ingresar usuario
    [Documentation]    Reporte informe diario
    [Tags]    Ingresar usuario
    Validacion de usuarios

Fechas
    [Documentation]    Reporte informe diario
    [Tags]    Fechas
    Test fechas
   
Sucursal
    [Documentation]    Reporte informe diario
    [Tags]    Combo sucursal
    Combo sucursal

Informe diario
    [Documentation]    Reporte informe diario
    [Tags]    Boton aceptar
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferente sucursal    ${Sucursal}[${counter}]    
        Boton aceptar
    END
    FOR    ${counter}    IN RANGE    1    6
        Generando reporte con diferente zona    ${Zona}[${counter}]    
        Boton aceptar
    END
    
        
Por zona
    [Documentation]    Reporte informe diario
    [Tags]    Por zona
    Reporte por zona
    Boton aceptar

Campos vacios
    [Documentation]    Reporte informe diario
    [Tags]    Campos vacios
    Test campos vacios
  
Boton limpiar
    [Documentation]    Reporte informe diario
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte informe diario
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
        Sleep    20s
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
        Click Element    ${Reporte_informe_diario}   
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Test fechas
    Wait Until Element Is Visible    ${Icono_fecha}
    Click Element    ${Icono_fecha}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Combo sucursal
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Sleep    3s
    Click Element    ${Combo_sucursal}


Generando reporte con diferente sucursal 
    [Documentation]    Seleccionando sucursal
    [Arguments]     ${Sucursal}   
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}  

Generando reporte con diferente zona
    [Documentation]    Seleccionando sucursal
    [Arguments]     ${Zona} 
    Wait Until Element Is Visible    ${Radio_button_por_zona}
    Click Element    ${Radio_button_por_zona}  
    Wait Until Element Is Visible    ${Combo_por_zona}
    Click Element    ${Combo_por_zona}
    Wait Until Element Is Visible    ${Zona}
    Click Element    ${Zona} 

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Reporte por zona
    Wait Until Element Is Visible    ${Radio_button_por_zona}
    Click Element    ${Radio_button_por_zona}
    Wait Until Element Is Visible    ${Combo_por_zona}
    Click Element    ${Combo_por_zona}
    Wait Until Element Is Visible    ${Zona_1_manual}
    Click Element    ${Zona_1_manual}

Test campos vacios    
    Wait Until Element Is Visible    ${Campo_vacio}
    Click Element    ${Campo_vacio}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
