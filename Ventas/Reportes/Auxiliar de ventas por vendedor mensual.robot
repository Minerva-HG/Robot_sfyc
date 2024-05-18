*** Settings ***

Library    String
Library    SeleniumLibrary
#Library    RPA.Desktop


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  mihernandezg
${Pass}  Mega12345
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Ventas
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
${Reporte}    xpath=//span[contains(.,'Reportes')]
#Reportes
${selector}    xpath=(//div[@class='dx-dropdowneditor-icon'])[2]
${R2}    xpath=//td[@aria-describedby='dx-col-1'][contains(.,'Auxiliar de ventas por vendedor mensual')]
#seleccionar Elements
${selector2V}    xpath=(//div[@class='dx-dropdowneditor-icon'])[3]
${Input1}     xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[5]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
${Vendedor1}    xpath=//td[contains(.,'ACEVES ALVAREZ FRANCISCO JAVIER')]
${Vendedor2}    xpath=//td[contains(.,'DELGADO RAMIREZ MARIA DE LA LUZ')]
${selector3V}    xpath=(//div[@class='dx-dropdowneditor-icon'])[4]
${Input2}    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[5]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
#fecha
${desde}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${atras}    xpath=//i[contains(@class,'dx-icon dx-icon-chevronleft')]
${fecha}     xpath=(//span[contains(.,'5')])[1]
${aceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]


*** Test Cases ***

Ingresar a Ventas
    Ingresar al Navegador
    Ingresar usuario contrasena 
    Sleep    5s
    Seleccionar Ventas   

Seleccionar Reporte
    Seleccion de Reporte
    Seleccionar vendedor 1
    Seleccionar vendedor 2
    Seleccionar Fecha
    Aceptar


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
    Sleep    10s

Seleccionar Ventas
    Click Element    ${Ventas} 
    Sleep    5s
    Click Element    ${Reporte}
    Sleep    5s

Seleccion de Reporte
    Click Element    ${selector}
    Sleep    5s
    Click Element    ${R2}
    Sleep    5s
Seleccionar vendedor 1
    Click Element    ${selector2V}
    Sleep    5s
    Click Element   ${Input1} 
    Input Text    ${Input1}    205378
    Sleep    2s
    Click Element    xpath=//td[@aria-describedby='dx-col-4'][contains(.,'ACERO VAZQUEZ BLANCA EDITH')]
    Sleep    2s
    
Seleccionar vendedor 2
    Click Element    ${selector3V}
    Sleep    5s
    Click element   ${Input2} 
    Sleep    2s
    Input Text    ${Input2}    256693
    Sleep    2s
    Click Element    ${Vendedor2}
    Sleep   2s

Seleccionar Fecha
    Click Element    ${desde} 
    Sleep   2s
    Click Element    ${atras}
    Sleep   2s
    Click Element    ${fecha} 
    Sleep   2s

Aceptar
    Click Element    ${aceptar} 

    

