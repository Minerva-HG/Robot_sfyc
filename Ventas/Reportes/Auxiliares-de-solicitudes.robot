*** Settings ***
Library    String
Library    SeleniumLibrary
#Library    RPA.Desktop


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui   
${Usuario}  MBELTRANG      
${Pass}    Mega2022                        
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Reporte auxiliar de solicitudes
${Ventas}    xpath=(//div[contains(.,'Ventas')])[11]
${Reportes}    xpath=//span[contains(.,'Reportes')]
${Auxiliar_de_solicitudes}    xpath=//td[contains(.,'Auxiliar de solicitudes')]
#Checkbox
${Checkbox_todos_vendedores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Checkbox_todas_las_sucrsales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
#Combos
${Combo_del}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-request-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[1]/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_al}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-request-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_estados}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-request-form/form/div/div/div[1]/app-state-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-request-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div[1]/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-request-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div[1]/div/div[1]/input
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
#Botones
${Boton_aceptar}        xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
#Registros
${Vendedor_del}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Vendedor_al}    xpath=(//td[contains(.,'ACERO VIRAMONTES DIANA ILAYALI')])[2]
${Estado_asignado}    xpath=//td[contains(.,'Asignado')]
${Estado_cancelada}    xpath=//td[contains(.,'Cancelada U')]
${Estado_vendidas}    xpath=//td[contains(.,'Vendidas')]
${Fecha_desde}    xpath=(//span[contains(.,'1')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'20')])[4]

*** Test Cases ***
Consultar Reporte Auxiliares de solicitudes
    [Tags]    Validando funcionalidad del reporte auxiliar de solicitudes
    Ingresar al Navegador
    Ingresar usuario contrasena 
    Sleep    5s
    Ventas 
    Reportes 
    Auxiliar de solicitudes 
    Checkbox todos los vendedores
    Fecha desde
    Fecha hasta
    Estado Asignado
    Checkbox todas las sucursales
    Boton aceptar
    Estado cancelado
    Boton aceptar
    Estado vendidas
    Boton aceptar
    Checkbox todos los vendedores
    Checkbox todas las sucursales
    Vendedor desde
    Vendedor hasta
    Boton aceptar
    

*** Keyword ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button
    Sleep    10s

Ventas
    Wait Until Element Is Visible    ${Ventas}
    Click Element    ${Ventas} 
    
Reportes
    Wait Until Element Is Visible    ${Reportes}
    Click Element    ${Reportes}

Auxiliar de solicitudes
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Wait Until Element Is Visible    ${Auxiliar_de_solicitudes}
    Click Element    ${Auxiliar_de_solicitudes}

Checkbox todos los vendedores
    Wait Until Element Is Visible    ${Checkbox_todos_vendedores}
    Click Element    ${Checkbox_todos_vendedores}

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

Estado Asignado
    Wait Until Element Is Visible    ${Combo_estados}
    Click Element    ${Combo_estados}
    Wait Until Element Is Visible    ${Estado_asignado}
    Click Element    ${Estado_asignado}

Checkbox todas las sucursales
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucrsales}
    Click Element    ${Checkbox_todas_las_sucrsales}

Estado cancelado
    Wait Until Element Is Visible    ${Combo_estados}
    Click Element    ${Combo_estados}
    Wait Until Element Is Visible    ${Estado_cancelada}
    Click Element    ${Estado_cancelada}

Estado vendidas
    Wait Until Element Is Visible    ${Combo_estados}
    Click Element    ${Combo_estados}
    Wait Until Element Is Visible    ${Estado_vendidas}
    Click Element    ${Estado_vendidas}

Boton aceptar
    Sleep    5s
    Scroll Element Into View    ${Boton_aceptar}
    Sleep    5s    
    Click Element    ${Boton_aceptar}

Vendedor desde
    Wait Until Element Is Visible    ${Combo_del}
    Click Element    ${Combo_del}
    Wait Until Element Is Visible    ${Vendedor_del}
    Click Element    ${Vendedor_del}

Vendedor hasta
    Wait Until Element Is Visible    ${Combo_al}
    Click Element    ${Combo_al}
    Wait Until Element Is Visible    ${Vendedor_al}
    Click Element    ${Vendedor_al}
