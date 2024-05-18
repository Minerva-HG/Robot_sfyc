*** Settings ***
Library    String
Library    SeleniumLibrary
#Library    RPA.Desktop



*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.qa-cluster.sfycnextgen.com.mx/ui   
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
${Vendedores_en_entrenamiento_hombro_ha_hombro}    xpath=//td[contains(.,'WEB-Vendedores En Entrenamiento Hombro a Hombro')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    WEB-Vendedores En Entrenamiento Hombro a Hombro
#Combos
${Combo_region}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[2]/div/select
${Combo_sucursal}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[5]/div/select
@{Region}=    Create List    ${Region1}    ${Region2}    ${Region3}    ${Region4}    ${Region5}    ${Region6}   
@{Sucursal}=     Create List    ${Sucursal1}    ${Sucursal2}    ${Sucursal3}    ${Sucursal4}    ${Sucursal5}    ${Sucursal6}   
#Registros
${Region1}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[2]/div/select/option[3]
${Region2}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[2]/div/select/option[4]
${Region3}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[2]/div/select/option[5]
${Region4}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[2]/div/select/option[6]
${Region5}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[2]/div/select/option[7]
${Region6}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[2]/div/select/option[8]
${Sucursal1}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[5]/div/select/option[3]
${Sucursal2}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[5]/div/select/option[3]
${Sucursal3}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[5]/div/select/option[3]
${Sucursal4}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[5]/div/select/option[3]
${Sucursal5}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[5]/div/select/option[3]
${Sucursal6}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr/td[5]/div/select/option[3]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
${Boton_ver_informe}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[3]/input
${Boton_guardar}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[4]/td/div[1]/div/div[4]/table/tbody/tr/td/div[1]/table/tbody/tr/td/a


*** Test Cases ***
Consultar Reporte Vendedores En Entrenamiento Hombro a Hombro
    [Tags]    Validando Reporte Listado de Vendedores Hombro a Hombro
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ventas
    Reportes    
    Vendedores en entrenamiento hombro a hombro
    Boton aceptar
    Validando que redireccione a los combos
    FOR    ${counter}    IN RANGE    1    7
        Seleccionando datos    ${Region}[${counter}]    ${Sucursal}[${counter}]    
        Boton ver informe 
        Bandera para verificar que genere el reporte
    END

*** Keyword ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    
    
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

Vendedores en entrenamiento hombro a hombro
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
    Wait Until Element Is Visible    ${Vendedores_en_entrenamiento_hombro_ha_hombro} 
    Click Element    ${Vendedores_en_entrenamiento_hombro_ha_hombro} 


Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Validando que redireccione a los combos
    Switch Window    new

Seleccionando datos
    [Documentation]    Seleccionando region, sucursal y prospectos
    [Arguments]     ${Region}    ${Sucursal}
    #Wait Until Element Is Visible    ${Combo_region}
    Sleep    3s
    Click Element    ${Combo_region}
    Sleep    3s
    #Wait Until Element Is Visible    ${Region}
    Click Element    ${Region}
    Sleep    3s
    #Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Sleep    3s
    #Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Sleep    3s


Boton ver informe
    Wait Until Element Is Visible    ${Boton_ver_informe}
    Click Element    ${Boton_ver_informe}

Bandera para verificar que genere el reporte
    Sleep    5s
    ${Bandera_boton_guardar_activo}=    Run Keyword And Return Status    Click Element    ${Boton_guardar}
    IF    '${Bandera_boton_guardar_activo}' == 'True'
        Click Element    ${Boton_guardar}
        Sleep    3s
    ELSE
        Bandera para verificar que genere el reporte
    END



