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
${Datos_generales}    xpath=//td[contains(.,'Datos generales')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Datos generales
#Checkbox
${Checkbox_todas_estatus}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Checkbox_resumen}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
#Combos
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-general-data-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-general-data-form/form/div/app-reporting-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div/div/div[1]/input
${Combo_estatus}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-general-data-form/form/div/div[1]/div[1]/div[2]/app-status-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_sucursales}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-general-data-form/form/div/div[1]/div[2]/app-region-branch-dropdown/dx-drop-down-box/div/div/div[1]/input
#Registros
${Fecha_Desde}    xpath=(//span[contains(.,'1')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'21')])[3]
${Estatus}    xpath=//td[contains(.,'Activo')]
${Sucursal}    xpath=(//td[contains(.,'PACIFICO')])[3]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

*** Test Cases ***
Consultar Reporte Datos generales
    [Tags]    Validando Reporte Datos generales
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ventas
    Reportes
    Datos generales
    Fecha desde
    Fecha hasta
    Checkbox todos los estatus
    Sucursal
    Boton aceptar
    Sleep    5s
    Checkbox resumen
    Boton aceptar
    Sleep    5s
    Checkbox todos los estatus
    Estatus
    Boton aceptar
    Sleep    5s
    Checkbox resumen
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

Datos generales
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
    Wait Until Element Is Visible    ${Datos_generales}
    Click Element    ${Datos_generales}

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

Checkbox todos los estatus
    Wait Until Element Is Visible    ${Checkbox_todas_estatus}
    Click Element    ${Checkbox_todas_estatus}

Sucursal
    Wait Until Element Is Visible    ${Combo_sucursales}
    Click Element    ${Combo_sucursales}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Boton aceptar
    Sleep    5s
    Scroll Element Into View    ${Boton_aceptar}
    Sleep    5s
    Click Element    ${Boton_aceptar}

Checkbox resumen
    Wait Until Element Is Visible    ${Checkbox_resumen}
    Click Element    ${Checkbox_resumen}

Estatus
    Wait Until Element Is Visible    ${Combo_estatus}
    Click Element    ${Combo_estatus}
    Wait Until Element Is Visible    ${Estatus}
    Click Element    ${Estatus}
