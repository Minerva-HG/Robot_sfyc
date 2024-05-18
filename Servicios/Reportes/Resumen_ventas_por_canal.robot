*** Settings ***
Documentation    Reporte cartera - Resumen ventas por canal   
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla Reporte cartera - Resumen ventas por canal###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Cartera_Resumen_Ventas_Por_Canal}    xpath=//td[contains(.,'Cartera - Resumen ventas por canal')]
#########################Fechas###################################################################
${Icono_fecha_desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Fecha_desde}    xpath=(//span[contains(.,'1')])[1]
${Icono_fecha_hasta}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
${Fecha_hasta}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div/table/tbody/tr[5]/td[1]
########################Combo sucursal##################################################################
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-summary-sales-per-channel-form/form/div/div/div[1]/app-branch-parameter/div/div/div/div/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Sucursal}    xpath=//td[contains(.,'Hermosillo')]
########################Botones##########################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
############################Campo vacio#####################################################
${Campo_vacio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-summary-sales-per-channel-form/form/div/div/div[1]/app-branch-parameter/div/div/div/div/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span


*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte cartera - Resumen ventas por canal
    [Tags]    Ingresar usuario
    Validacion de usuarios   

Fechas
    [Documentation]    Reporte cartera - Resumen ventas por canal
    [Tags]    Combo fechas
    Test fechas

Sucursal
    [Documentation]    Reporte cartera - Resumen ventas por canal
    [Tags]    Combo sucursal
    Test combo sucursal

Cartera - Resumen ventas por canal
    [Documentation]    Reporte cartera - Resumen ventas por canal
    [Tags]    Boton preliminar
    Test boton preliminar

Campos vacios
    [Documentation]    Reporte cartera - Resumen ventas por canal
    [Tags]    Campos vacios
    Test campos vacios

Boton limpiar
    [Documentation]    Reporte cartera - Resumen ventas por canal
    [Tags]    Boton limpiar
    Test boton limpiar 

Boton Cancelar
    [Documentation]    Reporte cartera - Resumen ventas por canal
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
        Sleep    25s
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Sleep    4s
        #Scroll Element Into View    ${Cartera_Resumen_Ventas_Por_Canal}
        #Wait Until Element Is Visible    ${Cartera_Resumen_Ventas_Por_Canal}  
        Sleep    5s
        Click Element    ${Cartera_Resumen_Ventas_Por_Canal}     
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test fechas
    Wait Until Element Is Visible    ${Icono_fecha_desde}
    Click Element    ${Icono_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}
    Sleep    5s
    Click Element    ${Icono_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Test combo sucursal
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Test boton preliminar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Test campos vacios
    Wait Until Element Is Visible    ${Campo_vacio}
    Click Element    ${Campo_vacio}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
