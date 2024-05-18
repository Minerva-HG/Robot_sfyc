*** Settings ***
Library  SeleniumLibrary
Library  String    
#Library    RPA.Browser.Selenium   auto_close=${FALSE}

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://global.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#fechas
${Desde}    xpath=//dx-date-box[@name='startDate']//input[@role='combobox']
${retroceder}    xpath=//i[@class='dx-icon dx-icon-chevronleft']
${Fecha1}    xpath=(//span[contains(.,'14')])[1]
#Aceptar
${ventas}    xpath=//li[@aria-label='Ventas']
${Aceptar}    xpath=//span[normalize-space()='Aceptar']
#Busqueda
${Buscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
${input}     xpath=Jose
${Titulo}    xpath=//div[@class='title-form'][contains(.,'BITÁCORA DE VENTAS')]
${element}     xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Bitácora de Ventas')]



*** Test Cases ***
        
Steep1
    [Tags]    Validar que entre al navegador
    Ingresar al Navegador
Steep2
    [Tags]    Validar que entre y validé las credenciales
    Ingresar usuario contrasena
Catalogos Generales
    Ingresar a Catalogos Generales

Consultar Bitacora
    Validar titulo 
    Sleep    5s
    Iniciar fechas
    Sleep    5s
    Seleccionar aceptar





*** Keyword ***
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

Validar titulo 
    Sleep    5s
    Click Element   ${element}
    Wait Until Element Contains    xpath=//div[@class='title-form']    BITÁCORA DE VENTAS
    Log    CONTIENE EL TITULO CORRECTO
Iniciar fechas
    Click Element    ${Desde}
    Sleep   3s
    Click Element    ${retroceder}
    Sleep   3s
    Click Element    ${Fecha1}

Seleccionar aceptar
    Click Element    ${Aceptar}
