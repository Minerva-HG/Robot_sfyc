*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.qa-cluster.sfycnextgen.com.mx/ui      #https://global.dev-cluster.sfycnextgen.com.mx/ui/
${Usuario}  joriospe
${Pass}  Mega12345
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Consultar
${Combo_compañia_nomina}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-form/div/div[1]/form/div[1]/div[1]/app-company-payroll-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Empresa}    xpath=//td[contains(.,'SAOSA')]
${Campo_numero_de_empleado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-form/div/div[1]/form/div[1]/div[2]/dx-number-box/div/div[1]/input
${Numero_empleado}    239540    
#drops de Ventas
${ventas}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Ventas')]
#menu
${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${Vendedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[1]/ul/li[3]
#Tiempo
${time}    10s
#Editar registros
${Combo_periodo_nomina}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-form/div/div[1]/form/div[2]/div[3]/div[2]/div[3]/app-period-payroll-dropdown/dx-drop-down-box/div[1]/div/div[1]/input    
${Periodo_mensual}    xpath=//td[contains(.,'Mensual')]
${Periodo_semanal}    xpath=//td[contains(.,'Semanal')]
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
#Notificaciones
${Notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#Campos vacios+
${Campos_vacios}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[6]
#Vendedor nuevo
${Empresa_02}    xpath=//td[contains(.,'Megaventas')]
${Numero_empleado_nuevo}    254430
${Combo_tipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-form/div/div[1]/form/div[2]/div[2]/div[2]/div[2]/div/app-type-salesman-position-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Tipo}    xpath=(//td[contains(.,'Vendedor Cambaceo')])[1]
${Combo_tabulador_de_sucursal_grupo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-salesman-form/div/div[1]/form/div[2]/div[2]/div[2]/div[5]/app-all-branch-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Sucursal}    xpath=//td[contains(.,'Hermosillo')]


*** Tasks ***
Validacion de usuarios e ingreso a la pantalla
    [Tags]    Validar que entre al navegador, validé las credenciales y que Ingresé al menú de catalogos
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Catalogos

Validar Catalogo de Vendedores
    [Tags]    Validar test cases catalogo de vendedores
    Consultar vendedor
    Actualizar datos
    Validando si existe alguna notificacion 
    Consultar vendedor
    Campos erroneos
    Periodo semanal     
    Validando si existe alguna notificacion
    
Vendedor de Cambaceo Nuevo
    [Tags]    Validar test cases cambaceo nuevo
    Consultar vendedor nuevo
    Actualizar datos vendedor nuevo
    Validando si existe alguna notificacion


*** Keywords ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   ${time}
    
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresar a Catalogos Generales
    [Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${ventas}

Ingresar a Catalogos
    [Documentation]    Ingresamos al modulo de Catalogos
    #Sleep    ${time}
    #Click Element    ${menu}
    Sleep    ${time}
    Click Element    ${Catalogo}
    Sleep    ${time}
    Click Element    ${Vendedores} 


Consultar vendedor
    Wait Until Element Is Visible    ${Combo_compañia_nomina}
    Click Element    ${Combo_compañia_nomina}
    Wait Until Element Is Visible    ${Empresa}
    Click Element    ${Empresa}
    Wait Until Element Is Visible    ${Campo_numero_de_empleado}
    Click Element    ${Campo_numero_de_empleado}
    Input Text    ${Campo_numero_de_empleado}    ${Numero_empleado}
    Sleep    5s
    Press Keys    ${Campo_numero_de_empleado}    ENTER
    
Actualizar datos
    Sleep    4s    
    Scroll Element Into View    ${Combo_periodo_nomina}
    Sleep    3s
    Click Element    ${Combo_periodo_nomina}
    Wait Until Element Is Visible    ${Periodo_mensual}
    Click Element    ${Periodo_mensual}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Validando si existe alguna notificacion
    Sleep    5s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Click Element    ${Notificacion}
    IF    '${Bandera_notificacion}' == 'True'
        Sleep    1s
    ELSE
        Validando si existe alguna notificacion
    END
    Sleep    3s
    Scroll Element Into View    ${Combo_compañia_nomina}
    Sleep    3s

Periodo semanal
    Sleep    4s    
    Scroll Element Into View    ${Combo_periodo_nomina}
    Sleep    3s
    Click Element    ${Combo_periodo_nomina}
    Wait Until Element Is Visible    ${Periodo_semanal}
    Click Element    ${Periodo_semanal}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Campos erroneos
    Wait Until Element Is Visible    ${Campos_vacios}
    Click Element    ${Campos_vacios}
    Sleep    3s

Consultar vendedor nuevo
    Wait Until Element Is Visible    ${Combo_compañia_nomina}
    Click Element    ${Combo_compañia_nomina}
    Wait Until Element Is Visible    ${Empresa_02}
    Click Element    ${Empresa_02}
    Wait Until Element Is Visible    ${Campo_numero_de_empleado}
    Click Element    ${Campo_numero_de_empleado}
    Input Text    ${Campo_numero_de_empleado}    ${Numero_empleado_nuevo}
    Sleep    5s
    Press Keys    ${Campo_numero_de_empleado}    ENTER

Actualizar datos vendedor nuevo
    Wait Until Element Is Visible    ${Combo_tipo}
    Click Element    ${Combo_tipo}
    Wait Until Element Is Visible    ${Tipo}
    Click Element    ${Tipo}
    Wait Until Element Is Visible    ${Combo_tabulador_de_sucursal_grupo}
    Click Element    ${Combo_tabulador_de_sucursal_grupo}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Sleep    4s    
    Scroll Element Into View    ${Combo_periodo_nomina}
    Sleep    3s
    Click Element    ${Combo_periodo_nomina}
    Wait Until Element Is Visible    ${Periodo_semanal}
    Click Element    ${Periodo_semanal}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}