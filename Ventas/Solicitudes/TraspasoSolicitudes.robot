*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.dev-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Solicitudes
${ventas}    xpath=//li[@aria-label='Ventas']
${Solicitudes}    xpath=(//div[contains(.,'Solicitudes')])[9]
${Traspaso}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#Vendedor
${SalesmanDrop}    xpath=//dx-drop-down-box[@id='salesmanDropdown']//div[@class='dx-dropdowneditor-icon']
${Drop2}    xpath=(//div[@class='dx-dropdowneditor-icon'])[3]
${Salesman}    xpath=//td[contains(.,'LIZARRAGA ROSALES JUAN ALFONSO')]
${SalesmanM}    xpath=//td[contains(.,'ABEDOY SILVA JOSE ROBERTO')]
${Label}    xpath=//label[@class='field-label description']
#folios
${Nfolios}    xpath=//input[contains(@max,'undefined')]
${Aceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
${Close}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#manual
${Manual}    xpath=//span[@class='dx-checkbox-icon']
${DEL}    xpath=(//input[@type='text'])[9]
${AL}    xpath=(//input[@type='text'])[10]
${fol}    3456
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
Steep 3
    Ingresar a Catalogos Generales
    
Steep 4
    Ingresar a Consulta de Solicitudes

Steep 5
    Agregar vendedor 1
    Agregar vendedor 2
    Sleep    2s
    Agregar Folios
Steep 6
#    FOR    ${counter}    IN RANGE    1    5    
    Finalizar
#    END






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
    Sleep    5s
    Click Element   ${Solicitudes}
    Sleep    2s
   Click Element    ${Traspaso}
    
Agregar vendedor 1
    Click Element    ${SalesmanDrop}
    Sleep    5s
    Click Element    ${Salesman}

Agregar vendedor 2
    Sleep    5s
    Click Element    ${Drop2}
    Sleep    5s
    Input Text    xpath=(//input[@type='text'])[9]    299417
    Sleep    5s
    Click Element    ${SalesmanM}
    Sleep    5s

Agregar Folios
    Input Text    ${DEL}    ${fol}
    Input Text    ${AL}    3495
    Sleep    5s

Finalizar
    Click Element    ${Aceptar}
    Sleep    5s
    Click Element    ${Close} 
    Click Element    ${Clean}
