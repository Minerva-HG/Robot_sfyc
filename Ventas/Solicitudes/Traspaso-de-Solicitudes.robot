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
${Operaciones}    xpath=(//div[contains(.,'Operaciones')])[10]
${Solicitudes}    xpath=//span[contains(.,'Solicitudes')]
${Traspaso}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-request-sale-main-container/div/app-request-sale-menu-options/dx-button-group/div/div[2]
#Vendedor
${SalesmanDrop}    xpath=//dx-drop-down-box[@id='salesmanDropdown']//div[@class='dx-dropdowneditor-icon']
${Drop2}    xpath=(//div[@class='dx-dropdowneditor-icon'])[3]
${Salesman}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${SalesmanM}    xpath=(//td[contains(.,'ABRAJAN CORTES CARLOS ALBERTO')])[2]
${Label}    xpath=//label[@class='field-label description']
#folios
${Nfolios}    xpath=//input[contains(@max,'undefined')]
${Aceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
${Close}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#manual
${Manual}    xpath=//span[@class='dx-checkbox-icon']
${DEL}    xpath=(//input[contains(@autocomplete,'off')])[9]
${AL}    xpath=(//input[contains(@autocomplete,'off')])[10]
${fol}    54556016
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]

#Buscar
${Buscar}    xpath=//span[contains(.,'Buscar')]
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]


*** Tasks ***
Traspasar Solicitudes
    [Tags]    Traspasar solicitudes
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
    Agregar vendedor 1
    Agregar vendedor 2
    Agregar Folios
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
    Wait Until Element Is Visible    ${Ventas}
    Click Element    ${Ventas}
    Wait Until Element Is Visible    ${Operaciones}
    Click Element    ${Operaciones}
    Wait Until Element Is Visible    ${Solicitudes}
    Click Element   ${Solicitudes}
    Sleep    5s
    Click Element    ${Traspaso}
    
Agregar vendedor 1
    Wait Until Element Is Visible    ${SalesmanDrop}
    Click Element    ${SalesmanDrop}
    Sleep    5s
    Click Element    ${Salesman}

Agregar vendedor 2
    Sleep    5s
    Click Element    ${Drop2}
    Sleep    5s
    #Input Text    xpath=(//input[@type='text'])[9]    299417
    #Sleep    5s
    Click Element    ${SalesmanM}
    Sleep    5s

Agregar Folios
    Wait Until Element Is Visible    ${DEL}
    Click Element    ${DEL}    
    Input Text    ${DEL}    ${fol}
    Input Text    ${AL}    54556028
    Sleep    5s

Finalizar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}
    Sleep    5s
    Click Element    ${Close} 
