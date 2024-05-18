*** Settings ***
Documentation    Reporte cartera - cambios de estado   
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
#########################Pantalla Reporte cartera - cambios de estado###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Cartera_Cambios_de_estado}    xpath=//td[contains(.,'Cartera - Cambios de estado')]
###########################Lista desplegable sucursal######################################################################################
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-day-status-changes-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div[1]/app-branch-parameter/div/div/div/div[2]/app-filter-branch-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Sucursal}    xpath=//td[contains(.,'Hermosillo')]
###############################Fecha desde##############################################################################################
${Icono_calendario}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]
##############################Botones######################################################################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
####################################Checkbox todas las sucursales#############################################################################
${Checkbox_todas_las_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
####################################Tipos de servicios##########################################################################################
${Pestaña_mas_opciones}    xpath=//span[contains(.,'Más Opciones')]
${Checkbox_todos_los_tipos_servicios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Combo_tipos_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-day-status-changes-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-service-parameter/div/div/div[1]/div[2]/app-type-service-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Tipo_servicio}    xpath=//td[contains(.,'Cable')]
#####################################Servicios######################################################################################################
${Checkbox_todos_servicios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Combo_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-day-status-changes-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-service-parameter/div/div/div[2]/div[2]/app-service-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Servicio}    xpath=//td[contains(.,'Sin Cable')]
#####################################Reporte con todos los servicios###############################################################################
${Todos_los_servicios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
######################################Campo vacio#######################################################################################################
${Campo_vacio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-day-status-changes-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-service-parameter/div/div/div[1]/div[2]/app-type-service-dropdown/dx-drop-down-box/div[1]/div/div[2]/span/span

*** Test Cases ***
Usuarios con permisos a la pantalla 
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Ingresar usuario
    Validacion de usuarios

Sucursal
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Lista desplegable sucursal
    Sleep    10s
    Lista desplegable sucursal
    
Fechas
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Fechas
    Fecha desde

Cartera - Cambios de estado
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Boton preliminar
    Generar reporte

Todas las sucursales
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Todas las sucursales
    Checkbox todas las sucursales
    Generar reporte

Tipo de servicio
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Tipo de servicio
    Test tipos de servicio

Servicios
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Servicios
    Test servicios
    Generar reporte

Generar reporte con todos los servicios
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Generar reporte con todos los servicios
    Checkbox todos los servicios
    Generar reporte

Campos vacios
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Campos vacios
    Test campos vacios
    
Boton limpiar
    [Documentation]    Reporte cartera - cambios de estado
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte cartera - cambios de estado
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
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Cartera_Cambios_de_estado}  
        Click Element    ${Cartera_Cambios_de_estado}     
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Lista desplegable sucursal
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Fecha desde    
    Wait Until Element Is Visible    ${Icono_calendario}
    Click Element    ${Icono_calendario}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Generar reporte
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Checkbox todas las sucursales
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucursales}
    Click Element    ${Checkbox_todas_las_sucursales}

Test tipos de servicio
    Wait Until Element Is Visible    ${Pestaña_mas_opciones}
    Click Element    ${Pestaña_mas_opciones}
    Sleep    5s
    Click Element    ${Checkbox_todos_los_tipos_servicios}
    Wait Until Element Is Visible    ${Combo_tipos_servicios}
    Click Element    ${Combo_tipos_servicios}
    Wait Until Element Is Visible    ${Tipo_servicio}
    Click Element    ${Tipo_servicio}

Test servicios
    Wait Until Element Is Visible    ${Checkbox_todos_servicios}
    Click Element    ${Checkbox_todos_servicios}
    Wait Until Element Is Visible    ${Combo_servicios}
    Click Element    ${Combo_servicios}
    Wait Until Element Is Visible    ${Servicio}
    Click Element    ${Servicio}

Checkbox todos los servicios
    Wait Until Element Is Visible    ${Todos_los_servicios}
    Click Element    ${Todos_los_servicios}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test campos vacios
    Wait Until Element Is Visible    ${Campo_vacio}
    Click Element    ${Campo_vacio}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
