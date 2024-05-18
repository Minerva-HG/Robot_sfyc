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
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Ventas
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
${Reporte}    xpath=//span[contains(.,'Reportes')]
#Reportes
${Combo_reportes}     xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[9]
${Concentrado_de_ventas}    xpath=//td[contains(.,'Concentrado de ventas')]
#Checkbox
${Checkbox_todas_las_sucursales}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/div[2]/div[1]/div[1]/dx-check-box/div/span
${Checkbox_venta_generada_con_comision}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/div[2]/div[1]/div[2]/dx-check-box/div/span
${Checkbox_incluye_vendedores_sin_ventas_en_el_periodo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/div[2]/div[1]/div[3]/dx-check-box/div/span
${Checkbox_agrupar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/div[2]/div[2]/div/dx-check-box/div/span
#Combos
${Combo_niveles}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/div[1]/div[1]/app-level-salesman-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_canales_de_venta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/div[1]/div[2]/app-type-salesman-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-sale-concentrate-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div[1]/div/div[1]/input
#Registros
${Nivel}    xpath=//td[contains(.,'GER')]
${Canal_1}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Canal_2}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Canal_3}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[9]
${Fecha_Desde}    xpath=(//span[contains(.,'1')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'21')])[3]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

*** Test Cases ***
Consultar Reporte Concentrado de ventas
    [Tags]    Validando Reporte Auxiliar de ventas por vendedor
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ventas
    Reportes
    Concentrado de ventas
    Niveles
    Canales de venta
    Fecha desde
    Fecha hasta
    Checkbox todas las sucursales
    Checkbox agrupar
    Boton aceptar
    Sleep    5s
    Checkbox venta generada con comision 
    Checkbox todas las sucursales
    Boton aceptar
    Sleep    7s
    Checkbox venta generada con comision 
    Checkbox incluye vendedores sin ventas en el periodo
    Boton aceptar
    Sleep    7s
    Checkbox venta generada con comision
    Checkbox todas las sucursales
    Boton aceptar
    Sleep    7s
    Checkbox agrupar
    Boton aceptar
    Sleep    7s
    

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

Concentrado de ventas
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Wait Until Element Is Visible    ${Concentrado_de_ventas}
    Click Element    ${Concentrado_de_ventas}


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

 Niveles
    Wait Until Element Is Visible    ${Combo_niveles}
    Click Element    ${Combo_niveles}
    Wait Until Element Is Visible    ${Nivel}
    Click Element    ${Nivel}
   

Canales de venta
    Wait Until Element Is Visible    ${Combo_canales_de_venta}
    Click Element    ${Combo_canales_de_venta}
    Wait Until Element Is Visible    ${Canal_1}
    Click Element    ${Canal_1}
    Wait Until Element Is Visible    ${Canal_2}
    Click Element    ${Canal_2}
    Wait Until Element Is Visible    ${Canal_3}
    Click Element    ${Canal_3}

Checkbox todas las sucursales
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucursales}
    Click Element    ${Checkbox_todas_las_sucursales}

Checkbox agrupar
    Wait Until Element Is Visible    ${Checkbox_agrupar}
    Click Element    ${Checkbox_agrupar}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Checkbox venta generada con comision 
    Wait Until Element Is Visible    ${Checkbox_venta_generada_con_comision}
    Click Element    ${Checkbox_venta_generada_con_comision}

Checkbox incluye vendedores sin ventas en el periodo
    Wait Until Element Is Visible    ${Checkbox_incluye_vendedores_sin_ventas_en_el_periodo}
    Click Element    ${Checkbox_incluye_vendedores_sin_ventas_en_el_periodo}