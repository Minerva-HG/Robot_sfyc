*** Settings ***
#Library  SeleniumLibrary
Library      String    
Library      SeleniumLibrary


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui    
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Ventas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=//span[contains(.,'Operaciones')]
${Vendedores_hombro_hombro}    xpath=//span[contains(.,'Vendedores hombro a hombro')]
#Consultar vendedor
${Combo_empresa_nomina}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/app-salesman-number-form/form/div[1]/app-company-payroll-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Empresa_nomina}    xpath=//td[contains(.,'Megaventas')]
${Combo_sucursales}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/app-header/header/div/div[2]/div[1]/app-branch-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_id_sucursal}    xpath=//input[contains(@min,'0')]
${Id_sucursal}    12
${Id_sucursal_41}    41
${Sucursal}    xpath=//td[contains(.,'Tepic')]
${Sucursal_41}    xpath=//td[contains(.,'Guadalajara')]
${Campo_id_numero_empleado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/app-salesman-number-form/form/div[2]/dx-number-box/div/div[1]/input    
${Numero_empleado}    286361                   
${Numero_empleado_erroneo}    33333   
#Notificaciones
${Aviso_del_sistema}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Notificacion_no_hay_nuevos_ingresos}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Notificacion_de_certificacion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[3]
#Boton guardar
${Boton_guardar}    xpath=//span[contains(.,'Guardar')]
#Asignar un vendedor de entrenamiento
${Asignar_o_descartar}    xpath=//span[contains(.,'ASIGNAR O DESCARTAR')]
${Boton_buscar_vendedor}    xpath=//div[@class='dx-button-content'][contains(.,'Buscar vendedor')]
${Campo_numero_vendedor}    xpath=(//input[contains(@autocomplete,'off')])[31]
${Vendedor_ha_buscar}    306795    
${Boton_enviar}    xpath=//span[contains(.,'Enviar')]
${Boton_enviar_vendedor_2_semanas}    xpath=(//div[contains(.,'Enviar')])[27]
${Boton_asignar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/app-assignment-form/div/div/form/div/div[11]/div/div[1]/dx-button
#Boton descartar
${Boton_descartar}    xpath=(//div[contains(.,'Descartar')])[22]
${Combo_empleado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-shoulder-to-shoulder-main-container/div/div[2]/dx-tab-panel/div[2]/div/div/div[2]/div/app-assignment-form/div/div/form/div/div[2]/div/app-salesman-dropdown/dx-drop-down-box/div/div/div[1]
${Empleado}    xpath=//span[contains(.,'Limpiar')]
#Texto visible
${Texto_aviso_del_sistema}    xpath=(//div[contains(.,'¡AVISO DEL SISTEMA!')])[25]
#Boton limpiar
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

*** Tasks ***
Consultar Vendedor H a H
    [Tags]    Validando funcionalidad del proceso Consulta de ventas por solicitud
    Ingresar al Navegador
    Ingresar usuario contrasena
    Vendedores hombro a hombro
    Empresa nomina
    Numero de vendedor
    Consultar vendedor

Crear Vendedor H a H
    [Tags]    Validando consulta vendedor hombro a hombro
    Vendedor hombro a hombro
    Validando si existe alguna notificacion
    

Asignar un vendedor de entrenamiento
    [Tags]    Validando que permita asignar un vendedor de entrenamiento 
    Boton Limpiar 
    Empresa nomina
    Numero de vendedor
    Consultar vendedor 
    Validando si existe alguna notificacion 
    Asignar o descartar
    Buscar vendedor
    Validando notificacion aviso del sistema
    Boton asignar
    Validando si existe alguna notificacion


Descar un vendedor en entrenamiento
    [Tags]    Validando que permita descartar 
    Asignar o descartar
    Checkbox descartar
    Combo empleado
    Boton descartar
    
#Botones (Aceptar, Cancelar, Limpiar)

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

Vendedores hombro a hombro
    [Documentation]    Ingresamos a vendedores hombro a hombro
    Wait Until Element Is Visible    ${Ventas}
    Click Element    ${Ventas} 
    Wait Until Element Is Visible    ${Operaciones}
    Click Element    ${Operaciones}   
    Wait Until Element Is Visible    ${Vendedores_hombro_hombro}
    Click Element    ${Vendedores_hombro_hombro}
    
Empresa nomina
    Scroll Element Into View    ${Combo_empresa_nomina}
    Sleep    4s
    Click Element    ${Combo_empresa_nomina}
    Wait Until Element Is Visible    ${Empresa_nomina}
    Click Element    ${Empresa_nomina}

Sucursal
    Sleep    5s
    Click Element    ${Combo_sucursales}
    Sleep    5s
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
    Sleep    3s
    ${Bandera_boton_guardar}=    Run Keyword And Return Status    Click Element    ${Boton_guardar}
    IF    '${Bandera_boton_guardar}' == 'True'
        Sleep    2s
    ELSE
        Vendedor hombro a hombro
    END
    

Asignar o descartar
    Scroll Element Into View    ${Asignar_o_descartar}
    Sleep    3s
    Wait Until Element Is Visible    ${Asignar_o_descartar}
    Click Element    ${Asignar_o_descartar} 

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

Buscar vendedor
    Scroll Element Into View    ${Boton_buscar_vendedor}    
    Wait Until Element Is Visible    ${Boton_buscar_vendedor}
    Click Element    ${Boton_buscar_vendedor}
    Sleep    4s
    Input Text    ${Campo_numero_vendedor}    ${Vendedor_ha_buscar}
    Wait Until Element Is Visible    ${Boton_enviar}
    Click Element    ${Boton_enviar}

Validando notificacion aviso del sistema
    Sleep    5s
    ${Bandera_vendedor_tiene_mas_de_2_semanas}=    Run Keyword And Return Status    Click Element    ${Boton_enviar_vendedor_2_semanas}
    IF    '${Bandera_vendedor_tiene_mas_de_2_semanas}' == 'True'
        Sleep    5s
    ELSE
        Sleep    1s
    END

Combo empleado
    Wait Until Element Is Visible    ${Combo_empleado}
    Click Element    ${Combo_empleado}
    Wait Until Element Is Visible    ${Empleado}
    Click Element    ${Empleado}

Checkbox descartar
    Wait Until Element Is Visible    ${Boton_descartar} 
    Click Element    ${Boton_descartar} 

Boton Limpiar
    Sleep    4s
    Scroll Element Into View    ${Boton_limpiar}
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}
