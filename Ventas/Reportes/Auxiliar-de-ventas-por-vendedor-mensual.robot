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
${Campo_reporte}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Metrocarrier-Auxiliar de ventas por vendedor mensual
${Auxiliar_de_ventas_por_vendedor_mensual}    xpath=//td[contains(.,'Metrocarrier-Auxiliar de ventas por vendedor mensual')]
#seleccionar Elements
${Combo_del}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-sale-monthly-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[1]/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_al}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-auxiliary-sale-monthly-form/form/div/app-reporting-start-end-salesman-parameter/div/div/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Vendedor_del}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Vendedor_al}    xpath=(//td[contains(.,'ACERO VIRAMONTES DIANA ILAYALI')])[2]
#fecha
${desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${atras}    xpath=//i[contains(@class,'dx-icon dx-icon-chevronleft')]
${fecha}     xpath=(//span[contains(.,'5')])[1]
${aceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]


*** Test Cases ***
Consultar Reporte Auxiliar de ventas por vendedor mensual
    [Tags]    Validando funcionalidad del reporte auxiliar de ventas mensual (Metrocarrier)
    Ingresar al Navegador
    Ingresar usuario contrasena 
    Sleep    5s
    #Ventas 
    Reportes 
    Auxiliar de ventas por vendedor mensual
    Vendedor 1
    Vendedor 2
    Seleccionar Fecha
    Aceptar


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

Auxiliar de ventas por vendedor mensual
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Campo_reporte}    ${Descripcion_reporte}
    Sleep    5s
    Click Element    ${Auxiliar_de_ventas_por_vendedor_mensual}

Vendedor 1
    Wait Until Element Is Visible    ${Combo_del}
    Click Element    ${Combo_del}
    Wait Until Element Is Visible    ${Vendedor_del}
    Click Element    ${Vendedor_del}
    
Vendedor 2
    Wait Until Element Is Visible    ${Combo_al}
    Click Element    ${Combo_al}
    Wait Until Element Is Visible    ${Vendedor_al}
    Click Element    ${Vendedor_al}

Seleccionar Fecha
    Click Element    ${desde} 
    Sleep   2s
    Click Element    ${atras}
    Sleep   2s
    Click Element    ${fecha} 
    Sleep   2s

Aceptar
    Sleep    4s
    Scroll Element Into View    ${aceptar}
    Sleep    4s
    Wait Until Element Is Visible    ${aceptar}
    Click Element    ${aceptar} 
