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
${Pass}  Mega12345                        
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Ventas
${Ventas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]
${Reporte}    xpath=//span[contains(.,'Reportes')]
#Reportes
${Combo_reportes}     xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[9]
${Reportes_global}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]/ul/li[3]
${Auxiliar_ventas_semanal}    xpath=//td[contains(.,'WEB - Reporte Auxiliar Ventas Semanal')]
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Auxiliar de ventas 
#Combos
${Combo_region}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/div/select
${Combo_cluster}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/select
${Combo_desde_vendedor}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[4]/td[2]/div/table/tbody/tr/td/input
${Combo_depende_de}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[5]/td[2]/div/select
${Combo_estado}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[5]/div/select
${Combo_sucursal}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[5]/div/select
${Combo_hasta_vendedor}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[4]/td[5]/div/table/tbody/tr/td/input
#Icono
${Icono_fecha_inicio}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[3]/td[2]/div/div/table/tbody/tr/td[2]/button
${Icono_fecha_fin}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[3]/td[5]/div/div/table/tbody/tr/td[2]/button
@{Region}=    Create List    ${Region1}    ${Region2}    ${Region3}    ${Region4}    ${Region5}    ${Region6}   
@{Cluster}=    Create List    ${Cluster1}    ${Cluster2}    ${Cluster3}    ${Cluster4}    ${Cluster5}    ${Cluster6}  
@{Fecha_inicio}=    Create List    ${Fecha_inicio_1}    ${Fecha_inicio_2}    ${Fecha_inicio_3}    ${Fecha_inicio_4}    ${Fecha_inicio_5}    ${Fecha_inicio_6}
@{Desde_vendedor}=    Create List    ${Desde_Vendedor1}    ${Desde_Vendedor2}    ${Desde_Vendedor3}    ${Desde_Vendedor4}    ${Desde_Vendedor5}    ${Desde_Vendedor6}
@{Depende_de}=    Create List    ${Depende_de_1}    ${Depende_de_2}    ${Depende_de_3}    ${Depende_de_4}    ${Depende_de_5}    ${Depende_de_6}
@{Estado}=    Create List    ${Estado_1}    ${Estado_2}    ${Estado_3}    ${Estado_4}    ${Estado_5}    ${Estado_6} 
@{Sucursal}=    Create List    ${Sucursal1}    ${Sucursal2}    ${Sucursal3}    ${Sucursal4}    ${Sucursal5}    ${Sucursal6}      
@{Fecha_fin}=    Create List    ${Fecha_fin_1}    ${Fecha_fin_2}    ${Fecha_fin_3}    ${Fecha_fin_4}    ${Fecha_fin_5}    ${Fecha_fin_6}  
@{Hasta_vendedor}=    Create List    ${Hasta_Vendedor1}    ${Hasta_Vendedor2}    ${Hasta_Vendedor3}    ${Hasta_Vendedor4}    ${Hasta_Vendedor5}    ${Hasta_Vendedor6}       
#Registros
${Region1}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/div/select/option[3]
${Region2}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/div/select/option[4]
${Region3}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/div/select/option[5]
${Region4}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/div/select/option[6]
${Region5}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/div/select/option[7]
${Region6}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[2]/div/select/option[8]
${Cluster1}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/select/option[2]
${Cluster2}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/select/option[2]
${Cluster3}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/select/option[2]
${Cluster4}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/select/option[2]
${Cluster5}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/select/option[2]
${Cluster6}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/select/option[2]
${Fecha_inicio_1}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[7]/td
${Fecha_inicio_2}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[2]/td[5]
${Fecha_inicio_3}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[2]/td[5]
${Fecha_inicio_4}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[2]/td[5]
${Fecha_inicio_5}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[2]/td[5]
${Fecha_inicio_6}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[2]/td[5]
${Desde_Vendedor1}    1
${Desde_Vendedor2}    2 
${Desde_Vendedor3}    3 
${Desde_Vendedor4}    4 
${Desde_Vendedor5}    5 
${Desde_Vendedor6}    6 
${Depende_de_1}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[5]/td[2]/div/select/option[3]
${Depende_de_2}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[5]/td[2]/div/select/option[3]
${Depende_de_3}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[5]/td[2]/div/select/option[3]
${Depende_de_4}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[5]/td[2]/div/select/option[3]
${Depende_de_5}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[5]/td[2]/div/select/option[3]
${Depende_de_6}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[5]/td[2]/div/select/option[3]
${Estado_1}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[5]/div/select/option[3]
${Estado_2}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[5]/div/select/option[3]
${Estado_3}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[5]/div/select/option[3]
${Estado_4}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[5]/div/select/option[3]
${Estado_5}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[5]/div/select/option[3]
${Estado_6}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[1]/td[5]/div/select/option[3]
${Sucursal1}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[5]/div/select/option[3]
${Sucursal2}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[5]/div/select/option[3]
${Sucursal3}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[5]/div/select/option[3]
${Sucursal4}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[5]/div/select/option[3]
${Sucursal5}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[5]/div/select/option[3]
${Sucursal6}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[5]/div/select/option[3]
${Fecha_fin_1}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[5]/td[6]/a
${Fecha_fin_2}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[5]/td[6]/a
${Fecha_fin_3}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[5]/td[6]/a
${Fecha_fin_4}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[5]/td[6]/a
${Fecha_fin_5}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[5]/td[6]/a
${Fecha_fin_6}    xpath=/html/body/form/span/div[8]/div/div/div[2]/table/tbody/tr[5]/td[6]/a
${Hasta_Vendedor1}    1
${Hasta_Vendedor2}    2 
${Hasta_Vendedor3}    3 
${Hasta_Vendedor4}    4 
${Hasta_Vendedor5}    5 
${Hasta_Vendedor6}    6 
${Ordenar_de_arriba_hacia_abajo}    xpath=//td[contains(.,'Metrocarrier-Auxiliar de ventas por vendedor mensual')]
#Botones
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
${Boton_ver_informe}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td/div/div/table/tbody/tr/td[3]/input
${Boton_guardar}    xpath=/html/body/form/table/tbody/tr/td/div[2]/div/table/tbody/tr[4]/td/div[1]/div/div[4]/table/tbody/tr/td/div[1]/table/tbody/tr/td/a/span[1]


*** Test Cases ***
Consultar reporte auxiliar de ventas semanal
    [Tags]    Validando Reporte auxiliar de ventas semanal
    Ingresar al Navegador
    Ingresar usuario contrasena
    Ventas
    #Sleep    4000s
    Reportes    
    Auxiliar ventas semanal
    Boton aceptar
    Validando que redireccione a los combos
    FOR    ${counter}    IN RANGE    1    7
        Seleccionando datos    ${Region}[${counter}]    ${Cluster}[${counter}]    ${Fecha_inicio}[${counter}]    ${Desde_vendedor}[${counter}]    ${Depende_de}[${counter}]    ${Estado}[${counter}]    ${Sucursal}[${counter}]    ${Fecha_fin}[${counter}]    ${Hasta_vendedor}[${counter}]     
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
    Wait Until Element Is Visible    ${Reportes_global}
    Click Element    ${Reportes_global}

Auxiliar ventas semanal
    Wait Until Element Is Visible    ${Combo_reportes}
    Click Element    ${Combo_reportes}
    Sleep    5s
    #Click Element    ${Ordenar_de_arriba_hacia_abajo}
    #Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
    Scroll Element Into View    ${Auxiliar_ventas_semanal}    
    Sleep    10s
    Wait Until Element Is Visible    ${Auxiliar_ventas_semanal}
    Click Element    ${Auxiliar_ventas_semanal} 


Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Validando que redireccione a los combos
    Switch Window    new

Seleccionando datos
    [Documentation]    Seleccionando region, cluster, fecha inicio, desde vendedor, depende de, estado, sucursal, Fecha fin y hasta vendedor
    [Arguments]     ${Region}    ${Cluster}    ${Fecha_inicio}    ${Desde_vendedor}    ${Depende_de}    ${Estado}    ${Sucursal}    ${Fecha_fin}    ${Hasta_vendedor}
    #Wait Until Element Is Visible    ${Combo_region}
    Sleep    3s
    Click Element    ${Combo_region}
    Wait Until Element Is Visible    ${Region}
    Click Element    ${Region}
    Sleep    3s
    Click Element    ${Combo_estado}
    Wait Until Element Is Visible    ${Estado}
    Click Element    ${Estado}
    Sleep    3s
    Click Element    ${Combo_cluster}
    Wait Until Element Is Visible    ${Cluster}
    Click Element    ${Cluster}
    Sleep    3s
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Sleep    3s
    Click Element    ${Icono_fecha_inicio}
    #Wait Until Element Is Visible    ${Fecha_inicio}
    Sleep    5s
    Click Element    ${Fecha_inicio}
    Sleep    3s
    Click Element    ${Combo_desde_vendedor}
    Input Text    ${Combo_desde_vendedor}    ${Desde_vendedor}
    Sleep    3s
    Click Element    ${Combo_depende_de}
    Wait Until Element Is Visible    ${Depende_de}
    Click Element    ${Depende_de}
    Sleep    3s
    Click Element    ${Icono_fecha_fin}
    Wait Until Element Is Visible    ${Fecha_fin}
    Click Element    ${Fecha_fin}
    Sleep    3s
    Click Element    ${Combo_hasta_vendedor}
    Input Text    ${Combo_hasta_vendedor}    ${Hasta_vendedor}
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
