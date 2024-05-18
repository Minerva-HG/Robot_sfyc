*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui    
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Solicitudes
${Ventas}    xpath=(//div[contains(.,'Ventas')])[11]
${Operaciones}    xpath=//span[contains(.,'Operaciones')]
${Solicitudes}    xpath=//span[contains(.,'Solicitudes')]
${busqueda}    xpath=//i[contains(@class,'dx-icon dx-icon-find')]
#Vendedor
${SOLVEN}    xpath=//input[@role='spinbutton']
${Aceptar}    xpath=//span[normalize-space()='Aceptar']
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
@{folio}=    Create List     36636325    36636326    36636327    36636328    36636329
#Buscar
${Close}    xpath=//i[@class='dx-icon dx-icon-close']
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]


*** Tasks ***
Busquedad Avanzada
    [Tags]    Validar que permita la busqueda avanzada
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
    FOR    ${counter}    IN RANGE    1    6    
        Buscar Folio     ${folio}[${counter}]
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
Ingresar a Catalogos Generales
    [Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${ventas}


Ingresar a Consulta de Solicitudes
    [Documentation]    Ingresamos a Consulta de ventas por solicitud
    Wait Until Page Contains Element    ${Ventas}
    Click Element    ${Ventas}
    Wait Until Element Is Visible    ${Operaciones}
    Click Element    ${Operaciones}
    Wait Until Element Is Visible    ${Solicitudes}    
    Click Element   ${Solicitudes}
    Wait Until Element Is Visible    ${busqueda}
    Click Element    ${busqueda}
    Sleep    2s

Buscar Folio
    [Arguments]    ${folio}
    Input Text    ${SOLVEN}     ${folio} 
    Sleep    2s   
    Click Element    ${Aceptar}
    Sleep    2s
    Click Element    ${Close}
    Sleep    2s
    Click Element    ${Clean}
