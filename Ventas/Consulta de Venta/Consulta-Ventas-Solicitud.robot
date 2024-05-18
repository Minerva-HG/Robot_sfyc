*** Settings ***
#Library  SeleniumLibrary
Library      String    
Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
#drops de Ventas
${ventas}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Ventas')]
${Cerrar}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${ConsultaV}    xpath=(//span[contains(.,'Consulta de Venta')])[1]
#Consultar
${Input}    xpath=//input[@step='1']
${Solicitud}    36636325
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
Steep1
    [Tags]    Validar que entre al navegador
    Ingresar al Navegador
Steep2
    [Tags]    Validar que entre y validé las credenciales
    Ingresar usuario contrasena
#Steep 3
    #Ingresar a Catalogos Generales
    
Steep 4
    Ingresar a Consulta de Ventas


    FOR    ${counter}    IN RANGE    1    15    
#    Steep consultar los grid
    Consultar un folio  
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
    Sleep    5s
    Click Element    ${Cerrar}
    Sleep    15s

Consulta Ventas
    Wait Until Element Contains    ${Ventas2}    VENTAS
    Click Element    ${Ventas2}
    Sleep    5s

Consulta Contratos 
    Click Element If Visible    ${Contratos}
    Sleep    5s

Consulta Cargos
    Click Element If Visible    ${Cargos}
    #Sleep    5s
    #Click Element    ${LastPage}
    Sleep    5s
    Click Element    ${Clean}

