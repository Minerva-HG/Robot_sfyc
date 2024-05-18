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
${Comisiones_diferidas}    xpath=//td[contains(.,'Comisiones diferidas')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Comisiones diferidas 
#Combos
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-deferred-commissions-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-deferred-commissions-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div/div/div[1]/input
${Campo_supervisor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-deferred-commissions-form/form/div/div/div[1]/dx-number-box/div/div[1]/input
#Registros
${Fecha_Desde}    xpath=(//span[contains(.,'1')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'21')])[3]
${Cantidad_de_supervisores}    11
#Radio button
${Radio_button_todo_lo_del_periodo}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[1]
${Radio_button_todas_las_instalaciones_pagadas}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Radio_button_todas_las_que_pagaron_primera_mensualidad}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]
${Radio_button_todo_lo_que_falta_de_instalacion}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[7]
${Radio_button_todo_lo_que_faltan_de_primera_mensualidad}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[9]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]


*** Test Cases ***
Comisiones Diferidas
    [Tags]    Validando Reporte Comisiones Diferidas
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ventas
    Reportes    
    Comisiones diferidas
    Fecha desde
    Fecha hasta
    Numero de supervisores
    Boton aceptar
    Sleep    6s
    Radio button todas las instalaciones pagadas
    Boton aceptar
    Sleep    5s
    Radio button todas las que pagaron primera mensualidad
    Boton aceptar
    Sleep    5s
    Radio button todas las que falta de instalacion
    Boton aceptar
    Sleep    5s
    Radio button todo lo que faltan de primera mensualidad
    Boton aceptar
    Sleep    5s
    
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

Comisiones diferidas
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
    Wait Until Element Is Visible    ${Comisiones_diferidas}
    Click Element    ${Comisiones_diferidas}

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

Numero de supervisores
    Wait Until Element Is Visible    ${Campo_supervisor}
    Click Element    ${Campo_supervisor}
    Input Text    ${Campo_supervisor}    ${Cantidad_de_supervisores}

Radio button todas las instalaciones pagadas
    Wait Until Element Is Visible    ${Radio_button_todas_las_instalaciones_pagadas}
    Click Element    ${Radio_button_todas_las_instalaciones_pagadas}

Radio button todas las que pagaron primera mensualidad
    Wait Until Element Is Visible    ${Radio_button_todas_las_que_pagaron_primera_mensualidad}
    Click Element    ${Radio_button_todas_las_que_pagaron_primera_mensualidad}

Radio button todas las que falta de instalacion
    Wait Until Element Is Visible    ${Radio_button_todo_lo_que_falta_de_instalacion}
    Click Element    ${Radio_button_todo_lo_que_falta_de_instalacion}

Radio button todo lo que faltan de primera mensualidad
    Wait Until Element Is Visible    ${Radio_button_todo_lo_que_faltan_de_primera_mensualidad}
    Click Element    ${Radio_button_todo_lo_que_faltan_de_primera_mensualidad}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}




