*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  dhernandezd
${Pass}  Mega12345
${Contrato}  0120063814
${btnfolio}  xpath=//*[contains(text(), "Folio llamada o folio queja")]
${btnConsultar}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/div[1]/div[1]/dx-button[2]/div[1]/span[1]
${Lista_sucursal}  xpath=//dx-drop-down-box[contains(@class, "dx-state-active")]/div/div/div[2]/div[2]/div/div
${Campo_sucursal}  xpath=//div[contains(@class, "dx-state-focused")]/div/div[1]/input
${Sucursal}  12
${Seleccion_sucursal}  xpath=//td[normalize-space()='Tepic']
${Lista_tipo}  xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[7]/div[1]/app-subscriber-search-folio-call-folio-complaint-technical[1]/form[1]/div[1]/div[2]/dx-select-box[1]/div[1]/div[1]/div[1]/input[1]
${tipo}  xpath=/html[1]/body[1]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]
${folio_llamada}  Folio llamada
${Input_folio}  xpath=//input[@name="outdoor_number"]
${folio}  135596889
${Seleccionar_contrato}  xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/app-subscriber-search-grid[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[3]

*** Test Cases ***
Ingresar usuario
    Abrir navegador
    Maximize Browser Window
    Sleep   5s
    Seleccionar dominio
    Sleep   5s
    Ingresar usuario contrasena
    Sleep   5s
    Ingresar contrato
    Sleep   5s
    Cerrar navegador


*** Keywords ***
Cerrar navegador
    Sleep   3s
    close browser

Ingresar contrato
    Click Element    ${btnfolio}
    Sleep   2s
    Click Element    ${Lista_sucursal}
    Sleep   8s
    Input Text    ${Campo_sucursal}   ${Sucursal} 
    Sleep    3s
    Click Element    ${Seleccion_sucursal}   
    Sleep   2s
    Click Element    ${Lista_tipo}   ${folio_llamada}
    Sleep   2s
    Input Text    ${Input_folio}   ${folio}
    Sleep   2s
    Click Element    ${btnConsultar}
    Sleep   5s
    Double Click Element    ${Seleccionar_contrato}

Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   3s
    Click Button    name:button

Seleccionar dominio
    Select From List By Label     name:Domain   SFYC



Abrir navegador
    Open browser    ${Pagina}   ${Navegador}
    title should be  Atención a Clientes