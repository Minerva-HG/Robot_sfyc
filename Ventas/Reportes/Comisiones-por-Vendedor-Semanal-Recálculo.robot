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
${Comisiones_por_vendedor_semanal_recalculo}    xpath=//td[contains(.,'Comisiones por vendedor semanal recálculo')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Comisiones por vendedor semanal recálculo  
#Checkbox
${Checkbox_todos_los_vendedores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Checkbox_los_que_dependen_de}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
#Combos
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-app-reporting-commission-by-salesman-weekly-recalculate/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-app-reporting-commission-by-salesman-weekly-recalculate/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div/div/div[1]/input
${Combo_del}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-app-reporting-commission-by-salesman-weekly-recalculate/form/div/app-reporting-start-end-salesman-parameter/div/div/div[1]/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_al}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-app-reporting-commission-by-salesman-weekly-recalculate/form/div/app-reporting-start-end-salesman-parameter/div/div/div[2]/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_los_que_dependen_de}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-app-reporting-commission-by-salesman-weekly-recalculate/form/div/div/div/div[2]/app-salesman-chief-by-period-dropdown/dx-drop-down-box/div/div/div[1]/input
#Registros
${Fecha_Desde}    xpath=(//span[contains(.,'1')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'21')])[3]
${Del}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Al}    xpath=(//td[contains(.,'ACERO VIRAMONTES DIANA ILAYALI')])[2]
${Los_que_dependen_de}    xpath=//td[contains(.,'ZARAGOZA SANDOVAL FRANCISCO JAVIER')]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

*** Test Cases ***
Comisiones por vendedor semanal recálculo
    [Tags]    Validando Reporte Comisiones por vendedor semanal recálculo
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ventas
    Reportes    
    Comisiones por vendedor semanal recalculo
    Fecha desde
    Fecha hasta
    Checkbox todos los vendedores
    Boton aceptar
    Sleep    6s
    Checkbox todos los vendedores
    Combo del
    Combo al
    Boton aceptar
    Sleep    6s
    Checkbox los que dependen de
    Combo los que dependen de
    Boton aceptar
    Sleep    6s
    
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

Comisiones por vendedor semanal recalculo
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
    Wait Until Element Is Visible    ${Comisiones_por_vendedor_semanal_recalculo}
    Click Element    ${Comisiones_por_vendedor_semanal_recalculo}

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

Combo del
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
    Sleep    5s
    Scroll Element Into View    ${Boton_aceptar}
    Sleep    5s
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Checkbox todos los vendedores
    Wait Until Element Is Visible    ${Checkbox_todos_los_vendedores}
    Click Element    ${Checkbox_todos_los_vendedores}

Checkbox los que dependen de
    Wait Until Element Is Visible    ${Checkbox_los_que_dependen_de}
    Click Element    ${Checkbox_los_que_dependen_de}

Combo los que dependen de
    Wait Until Element Is Visible    ${Combo_los_que_dependen_de}
    Click Element    ${Combo_los_que_dependen_de}
    Wait Until Element Is Visible    ${Los_que_dependen_de}
    Click Element    ${Los_que_dependen_de}

