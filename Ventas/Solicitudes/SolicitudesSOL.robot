*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
#Solicitudes
${Solicitudes}    xpath=(//div[contains(.,'Solicitudes')])[9]
${Estado}    xpath=//dx-drop-down-box[@id='stateDropdown']//div[@class='dx-dropdowneditor-icon']
${Input}    xpath=(//input[contains(@type,'text')])[10]
${CanIn}    CAN
${SOL}    xpath=//td[normalize-space()='Solicitudes']
${DEL}    xpath=//dx-number-box[@name='requestSaleFrom']//input[@role='spinbutton']
${AL}    xpath=//dx-number-box[@name='requestSaleTo']//input[@role='spinbutton']
#menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]

#Buscar
${Buscar}    xpath=//span[contains(.,'Buscar')]
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
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
    Ingresar a Consulta de Solicitudes

Steep 5
   FOR    ${counter}    IN RANGE    1    5    
    Seleccionar Estado de Solcitud  
    Sleep    5s
    Decargar Excel
    
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


Ingresar a Consulta de Solicitudes
    [Documentation]    Ingresamos a Consulta de ventas por solicitud
    Sleep    5s
    Click Element   ${Solicitudes}
    Sleep    2s
   
    
Seleccionar Estado de Solcitud
    [Documentation]    Consultar un folio existente
    Click Element    ${Estado} 
    Sleep    10s
    Click Element    ${SOL} 
    Sleep    2s
    Input Text    ${DEL}    1234
    Input Text    ${AL}    1500
    Click Element    ${Buscar}
    Sleep    45s



Decargar Excel
    Click Element    ${Excel}
    Sleep    2s
    Click Element    ${Clean}
