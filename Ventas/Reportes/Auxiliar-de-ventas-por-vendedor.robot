*** Settings ***
Library    String
Library    SeleniumLibrary
#Library    RPA.Desktop


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui   
${Usuario}  joriospe
${Pass}    Megacable2023                   
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Ventas
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
${Reporte}    xpath=//span[contains(.,'Reportes')]
#Reportes
${Combo_reportes}     xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Ventas}    xpath=//div[@class='tree-view-custom-item'][contains(.,'Ventas')]
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[5]/ul/li[3]
${Auxiliar_de_ventas_por_vendedor}    xpath=//td[contains(.,'Auxiliar de ventas por vendedor')]
#Checkbox
${Todos_los_vendedores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
#Combos
${Combo_del}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-sale-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[1]/div[2]/app-salesman-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_al}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-sale-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-sale-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-sale-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div/div/div[1]/input
#Registros
${Vendedor_del}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Vendedor_al}    xpath=(//td[contains(.,'ACERO VIRAMONTES DIANA ILAYALI')])[2]
${Fecha_desde}    xpath=(//span[contains(.,'1')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'21')])[3]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

*** Test Cases ***
Consultar Reporte Auxiliar de ventas por vendedor
    [Tags]    Validando Reporte Auxiliar de ventas por vendedor
    Ingresar al Navegador
    Ingresar usuario contrasena
    Ventas
    Reportes
    Auxiliar de ventas por vendedor
    Del
    Al
    Fecha desde
    Fecha hasta
    Boton aceptar
    Checkbox todos los vendedores
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
    Wait Until Page Contains Element    ${Ventas}
    Click Element    ${Ventas} 
    
Reportes
    Wait Until Element Is Visible    ${Reportes}
    Click Element    ${Reportes}

Auxiliar de ventas por vendedor
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Wait Until Element Is Visible    ${Auxiliar_de_ventas_por_vendedor}
    Click Element    ${Auxiliar_de_ventas_por_vendedor}

Checkbox todos los vendedores
    Wait Until Element Is Visible    ${Todos_los_vendedores}
    Click Element    ${Todos_los_vendedores}

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

Del
    Wait Until Element Is Visible    ${Combo_del}
    Click Element    ${Combo_del}
    Wait Until Element Is Visible    ${Vendedor_del} 
    Click Element    ${Vendedor_del} 

Al
    Wait Until Element Is Visible    ${Combo_al}
    Click Element    ${Combo_al}
    Wait Until Element Is Visible    ${Vendedor_al} 
    Click Element    ${Vendedor_al} 


Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}


