*** Settings ***
Library    String
Library    SeleniumLibrary
#Library    RPA.Desktop


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}   https://ventas.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  joriospe
${Pass}  Mega12345                        
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Ventas
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
${Reporte}    xpath=//span[contains(.,'Reportes')]
#Reportes
${Combo_reportes}     xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[9]
${Ventas_canceladas}    xpath=(//td[contains(.,'Ventas canceladas')])[2]
${Campo_reporte}    xpath=//input[@maxlength='7081']
${Descripcion_reporte}    Ventas canceladas
#Checkbox
${Checkbox_todos_los_vendedores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
#Combos
${Combo_del}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-canceled-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[1]/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_al}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-canceled-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=(//i[@class='dropdown-icon dx-icon dx-icon-event dx-template-wrapper dx-button-content'])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dropdown-icon dx-icon dx-icon-event dx-template-wrapper dx-button-content')])[2]
#Registros
${Del}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Al}    xpath=(//td[contains(.,'ACERO VIRAMONTES DIANA ILAYALI')])[2]
${Fecha_Desde}    xpath=(//span[contains(.,'1')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'21')])[3]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

*** Test Cases ***
Consultar Reporte Ventas canceladas
    [Tags]    Validando Reporte Total de ventas canceladas
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ventas
    Reportes
    Ventas canceladas
    Checkbox todos los vendedores
    Fecha desde
    Fecha hasta
    Boton aceptar
    Sleep    6s
    Checkbox todos los vendedores
    Combo del
    Combo al
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

Ventas canceladas
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    3s
    Input Text    ${Campo_reporte}    ${Descripcion_reporte}   
    Wait Until Element Is Visible    ${Ventas_canceladas} 
    Click Element    ${Ventas_canceladas} 

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

Checkbox todos los vendedores
    Wait Until Element Is Visible    ${Checkbox_todos_los_vendedores}
    Click Element    ${Checkbox_todos_los_vendedores}

Combo del
    Sleep    25s
    Wait Until Element Is Visible    ${Combo_del}
    Click Element    ${Combo_del}
    Wait Until Element Is Visible    ${Del}
    Click Element    ${Del}

Combo al
    Wait Until Element Is Visible    ${Combo_al}
    Click Element    ${Combo_al}
    Wait Until Element Is Visible    ${Al}
    Click Element    ${Al}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}


