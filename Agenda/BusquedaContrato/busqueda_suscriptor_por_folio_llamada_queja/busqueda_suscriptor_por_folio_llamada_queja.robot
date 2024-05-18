*** Settings ***
Library  SeleniumLibrary
Library  String  

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}   https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  dhernandezd
${Pass}  Omega12345
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${Combo_llamada}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[7]/div[1]
${Campo_sucursal}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[7]/dxi-item[1]/div[1]/app-subscriber-search-folio-call-folio-complaint-technical[1]/form[1]/div[1]/div[1]/app-branch-dropdown[1]/app-base-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${Lista_sucursal}    xpath=/html[1]/body[1]/div[4]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[5]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
${Sucursal}  12
${Seleccion_sucursal}    xpath=//td[normalize-space()='Tepic']
${Select_tipo_folio}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[7]/dxi-item[1]/div[1]/app-subscriber-search-folio-call-folio-complaint-technical[1]/form[1]/div[1]/div[2]/dx-select-box[1]/div[1]/div[1]/div[1]/input[1]
${Tipo_folio}     xpath=//div[contains(text(),'Folio llamada')]
${Seleccion_tipo_folio}     
${Input_folio}    xpath=/html[1]/body[1]/div[4]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[5]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
${Folio}  208594451  
${BtnConsultar}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/div[1]/div[1]/dx-button[1]/div[1]/span[1]
${Seleccionar_contrato}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/div[1]/div[2]/app-subscriber-search-grid[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]
${Cargar_contrato}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/div[1]/div[2]/app-subscriber-search-grid[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[4]/td[1]
${Filtro_llamada}    xpath=

*** Test Cases ***
Ingresar Sistema
    Open browser    ${Pagina}   ${Navegador}
    Sleep   2s
    Maximize Browser Window
    Sleep   2s
    Ingresar usuario contrasena
    Sleep   2s
    Ingresa llamada suscriptor
    Sleep   5s
    Selecciona contrato
    Sleep   15s
    Close browser


*** Keyword ***
Ingresar usuario contrasena
    Sleep    5s
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresa llamada suscriptor
    Sleep    10s
    Click Element    ${Combo_llamada} 
    Sleep    3s
    Click Element    ${Campo_sucursal}
    Sleep    3s
    Input Text   ${Lista_sucursal}   ${Sucursal} 
    Sleep    3s
    Click Element    ${Seleccion_sucursal}
        Sleep    3s
    Click Element    ${Select_tipo_folio}
        Sleep    3s
    Click Element    ${Tipo_folio}
    Sleep    3s
    Input Text    ${Input_folio}    ${Folio}
    Sleep    3s
    Wait Until Element Is Enabled    ${BtnConsultar}    timeout=5s
    Sleep    5s
    Click Element    ${BtnConsultar}
    Sleep    10s

Selecciona contrato
    Sleep    10s
    Input Text    ${Filtro_llamada}    ${Folio}
    Sleep    5s
    Double Click Element    ${Seleccionar_contrato}

