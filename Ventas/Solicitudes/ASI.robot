*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.qa-cluster.sfycnextgen.com.mx/ui   
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Solicitudes
${Ventas}    xpath=//li[@aria-label='Ventas']
${Solicitudes}    xpath=(//div[contains(.,'Solicitudes')])[9]
${Estado}    xpath=(//input[contains(@class,'dx-texteditor-input')])[3]
${ColEst}    xpath=(//input[contains(@tabindex,'0')])[4]
${Input}    ASI
${Asignado}    xpath=//td[normalize-space()='ASI']
#menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
#Vendedor
${Vendedor}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${IVendedor}    xpath=//td[normalize-space()='COINTSA S. A. DE C. V.']
#Buscar
${Buscar}    xpath=//span[contains(.,'Buscar')]
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]
#Boton limpiar
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
#Boton cancelar
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]


*** Tasks ***
Consultar Solicitudes de ventas ASI
    [Tags]    Consultar solicitudes de ventas ASI
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
   FOR    ${counter}    IN RANGE    1    3    
    Seleccionar Estado de Solcitud  
    Sleep    5s
    Seleccionar Vendedor
    Decargar Excel
    END

Validar componentes
    [Tags]    Validando componentes  
    Decargar Excel 
    Boton limpiar
    Boton cancelar

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

Ingresar a Catalogos Generales
    #[Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${ventas}


Ingresar a Consulta de Solicitudes
    [Documentation]    Ingresamos a Consulta de ventas por solicitud
    Sleep    2s
    Click Element   ${Solicitudes}
    Sleep    2s
   
    
Seleccionar Estado de Solcitud
    [Documentation]    Consultar un folio existente
    Click Element    ${Estado} 
    Sleep    2s
    Click Element    ${Asignado}
    Sleep    2s

Seleccionar Vendedor
    Click Element    ${Vendedor}
    Sleep    2s
    Click Element    ${IVendedor} 
    Sleep    2s
    Click Element    ${Buscar}
    Sleep    25s
    #Wait Until Element Is Visible    ${LastPage}    
    #Click Element    ${LastPage}

Decargar Excel
    Click Element    ${Excel}
    Sleep    2s
    Click Element    ${Clean}

Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}