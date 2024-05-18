*** Settings ***
#Library  SeleniumLibrary
Library      String    
Library      SeleniumLibrary


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.dev-cluster.sfycnextgen.com.mx/ui
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#drops de Ventas
${ventas}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Ventas')]
${Cerrar}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${ConsultaV}    xpath=(//span[contains(.,'Consulta de Venta')])[1]
#Consultar
${Input}    xpath=//input[@step='1']
${Solicitud}    1000071452
${Aceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
#Consultar Ventas
${Ventas2}      xpath=//span[contains(.,'VENTAS')]
#consultar  Contratos
${Contratos}    xpath=//span[@class='dx-tab-text'][contains(.,'CONTRATOS')]
#consultar Cargos
${Cargos}    xpath=//span[normalize-space()='CARGOS']
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'4')]
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]


*** Tasks ***
Consulta de Solicitud
    [Tags]    Validando funcionalidad del proceso Consulta de ventas por solicitud
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Ventas
    FOR    ${counter}    IN RANGE    1    15    
#    Steep consultar los grid
    Consultar un folio 
    Validando si existe una notificacion 
    Sleep    5s
 #   Otras consultas
    Consulta Ventas
    Consulta Contratos
    Consulta Cargos
    
    END






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


Ingresar a Consulta de Ventas
    [Documentation]    Ingresamos a Consulta de ventas por solicitud
    Sleep    5s
    Click Element    ${ConsultaV}
    Sleep    5s
   
    
Consultar un folio
    [Documentation]    Consultar un folio existente
    Input Text    ${Input}    ${Solicitud} 
    Click Element    ${Aceptar}
    
Validando si existe una notificacion
    Sleep    15s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Click Element    ${Cerrar}
    IF    '${Bandera_notificacion}' == 'True'
        Sleep    3s
    ELSE
        Validando si existe una notificacion
    END
   

Consulta Ventas
    Wait Until Element Contains    ${Ventas2}    VENTAS
    Click Element    ${Ventas2}
    Sleep    5s

Consulta Contratos 
    Wait Until Element Is Visible    ${Contratos}
    Click Element   ${Contratos}
    Sleep    5s

Consulta Cargos
    Wait Until Element Is Visible    ${Cargos}
    Click Element    ${Cargos}
    #Sleep    5s
    #Click Element    ${LastPage}
    Sleep    5s
    Click Element    ${Clean}