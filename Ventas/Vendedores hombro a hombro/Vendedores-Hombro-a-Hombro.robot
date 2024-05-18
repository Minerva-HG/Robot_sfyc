*** Settings ***
#Library  SeleniumLibrary
Library      String    
Library      SeleniumLibrary


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${Vendedores_hombro_hombro}    xpath=(//span[contains(.,'Vendedores hombro a hombro')])[1]
#Consultar vendedor
${Combo_empresa_nomina}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/app-salesman-number-form/form/div[1]/app-company-payroll-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Empresa_nomina}    xpath=//td[contains(.,'Megaventas')]
${Combo_sucursales}    xpath=(//input[contains(@autocomplete,'off')])[2]
${Campo_id_sucursal}    xpath=/html/body/div[2]/div/div/div/dx-data-grid/div/div[5]/div/table/tbody/tr[2]/td[1]/div
${Id_sucursal}    53
${Sucursal}    xpath=//td[contains(.,'Zacatecas')]
${Campo_id_numero_empleado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/app-salesman-number-form/form/div[2]/dx-number-box/div/div[1]/input    
${Numero_empleado}    107865
${Numero_empleado_erroneo}    33333   
#Notificaciones
${Aviso_del_sistema}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Notificacion_no_hay_nuevos_ingresos}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Notificacion_de_certificacion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[3]
#Boton guardar
${Boton_guardar}    xpath=//span[contains(.,'Guardar')]
#Asignar un vendedor de entrenamiento
${Asignar_o_descartar}    xpath=//span[contains(.,'ASIGNAR O DESCARTAR')]
${Combo_empleado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/app-assignment-form/div/div/form/div/div[2]/div/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]
${Empleado}    xpath=
${Combo_periodo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/app-assignment-form/div/div/form/div/div[7]/app-weekly-tabulator-period-dropdown/dx-drop-down-box/div/div/div[1]
${Periodo}    xpath=
${Boton_asignar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/app-assignment-form/div/div/form/div/div[11]/div/div[1]/dx-button
#Boton descartar
${Boton_descartar}    xpath=(//div[contains(.,'Descartar')])[22]
#Texto visible
${Texto_aviso_del_sistema}    xpath=(//div[contains(.,'¡AVISO DEL SISTEMA!')])[25]

*** Tasks ***
Consultar Vendedor H a H
    [Tags]    Validando funcionalidad del proceso Consulta de ventas por solicitud
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Vendedores hombro a hombro
    #Sucursal
    Empresa nomina
    Numero de vendedor
    Consultar vendedor

Crear Vendedor H a H
    [Tags]    Validando consulta vendedor hombro a hombro
    Vendedores erroneos
    Consultar vendedor
    Validando si existe alguna notificacion
    Numero de vendedor
    Consultar vendedor
    Vendedor hombro a hombro
    Validando si existe alguna notificacion
    #Notificacion de certificacion

Asignar un vendedor de entrenamiento
    [Tags]    Validando que permita asignar un vendedor de entrenamiento    
    Asignar o descartar
    Combo empleado
    Combo periodo
    Boton asignar


Descar un vendedor en entrenamiento
    [Tags]    Validando que permita descartar 
    Asignar o descartar
    Combo empleado
    Combo periodo
    Boton descartar
    

*** Keywords ***
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

#Ingresar a Catalogos Generales
    #[Documentation]    Ingresamos a SFYC General
    #Sleep    5s
    #Click Element    ${ventas}


Vendedores hombro a hombro
    [Documentation]    Ingresamos a vendedores hombro a hombro
    Wait Until Element Is Visible    ${Vendedores_hombro_hombro}
    Click Element    ${Vendedores_hombro_hombro}
    
Empresa nomina
    Sleep    4s
    Click Element    ${Combo_empresa_nomina}
    Wait Until Element Is Visible    ${Empresa_nomina}
    Click Element    ${Empresa_nomina}

Sucursal
    Wait Until Element Is Visible    ${Combo_sucursales}
    Click Element    ${Combo_sucursales}
    Wait Until Element Is Visible    ${Campo_id_sucursal}
    Click Element    ${Campo_id_sucursal}
    Input Text    ${Campo_id_sucursal}    ${Id_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Numero de vendedor
    Wait Until Element Is Visible    ${Campo_id_numero_empleado}
    Click Element    ${Campo_id_numero_empleado}
    Input Text    ${Campo_id_numero_empleado}    ${Numero_empleado}

Consultar vendedor
    Wait Until Element Is Visible    ${Campo_id_numero_empleado}
    Press Keys    ${Campo_id_numero_empleado}    ENTER

Validando si existe alguna notificacion
    Sleep    7s
    ${Bandera_notificacion_aviso_del_sistema}=    Run Keyword And Return Status    Click Element    ${Aviso_del_sistema}
    ${Bandera_notificacion_no_hay_nuevos_ingresos}=    Run Keyword And Return Status    Click Element    ${Notificacion_no_hay_nuevos_ingresos}
    ${Bnadera_notificacion_de_certificacion}=    Run Keyword And Return Status    Click Element    ${Notificacion_de_certificacion}     
    IF    '${Bandera_notificacion_no_hay_nuevos_ingresos}' == 'True'
        Sleep    3s
        Click Element    ${Notificacion_no_hay_nuevos_ingresos}
    END
    IF    '${Bandera_notificacion_aviso_del_sistema}' == 'True'
        Sleep    3s
    END


Vendedores erroneos
    Wait Until Element Is Visible    ${Campo_id_numero_empleado}
    Click Element    ${Campo_id_numero_empleado}
    Input Text    ${Campo_id_numero_empleado}    ${Numero_empleado_erroneo}

Vendedor hombro a hombro
    Wait Until Element Is Visible    ${Boton_guardar}
    Click Element    ${Boton_guardar}   

Asignar o descartar
    Wait Until Element Is Visible    ${Asignar_o_descartar}
    Click Element    ${Asignar_o_descartar}    

Combo empleado
    Wait Until Element Is Visible    ${Combo_empleado}
    Click Element    ${Combo_empleado}
    Wait Until Element Is Visible    ${Empleado}
    Click Element    ${Empleado}

Combo periodo
    Wait Until Element Is Visible    ${Combo_periodo}
    Click Element    ${Combo_periodo}
    Wait Until Element Is Visible    ${Periodo}
    Click Element    ${Periodo}

Boton asignar
    Wait Until Element Is Visible    ${Boton_asignar}
    Click Element    ${Boton_asignar}

Boton descartar
    Wait Until Element Is Visible    ${Boton_descartar}
    Click Element    ${Boton_descartar}

Notificacion de certificacion
    Sleep    5s
    ${Bandera_notificacion_certificacion}=    Run Keyword And Return Status    Click Element    ${Notificacion_de_certificacion}
    IF    '${Bandera_notificacion_certificacion}' == 'True'
        Sleep    2s
    ELSE
        Log To Console    "Posiblemente sea un error del sistema, verifica que sea un vendedor que permita ser hombro a hoombro"
    END