*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${SeleccionMenu}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[7]/div[1]
${sucursal_numero}  12
${sucursal_numero}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[3]/dxi-item[1]/div[1]/app-subscriber-search-address-form[1]/form[1]/div[1]/div[1]/div[1]/app-branch-dropdown[1]/app-base-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${tipo_folio}  Folio llamada
${tipo_folio}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[7]/dxi-item[1]/div[1]/app-subscriber-search-folio-call-folio-complaint-technical[1]/form[1]/div[1]/div[2]/dx-select-box[1]/div[1]/div[1]/div[1]/input[1]
${folio}  129051620
${folio}  xpath=//html[1]/body[1]/div[3]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[7]/dxi-item[1]/div[1]/app-subscriber-search-folio-call-folio-complaint-technical[1]/form[1]/div[1]/div[3]/dx-number-box[1]/div[1]/div[1]/input[1]
${BotonConsultar}  Xpath: //div[@class='add-subscriber-buttons']



*** Test Cases ***
Consulta de Suscriptor
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Navegar a busqueda por domicilio
    Sleep   15s
    Seleccionar menu

Ingresar los datos del suscriptor
    Seleccionar Sucursal    12
    Sleep   5s
    Seleccionar Tipo Folio
    Sleep   5s
    Ingresar el folio
    Sleep   5s
    Presionar Boton Consultar

Seleccionar contrato de suscriptor
    Sleep   5s
    Doble Click en Nombre en Tabla

*** Keywords ***
Seleccionar Sucursal
    [Arguments]    ${sucursal_numero}
    Select From List by Value    id=sucursal-list    ${sucursal_numero}

Seleccionar Tipo Folio
    [Arguments]    ${tipo_folio}
    Input Text    id=tipo_folio    ${tipo_folio}

Seleccionar Folio
    [Arguments]    ${folio}
    Input Text    id=folio    ${folio}

Presionar Boton Consultar
    Click Button    ${BotonConsultar}

Doble Click en Nombre en Tabla
    Double Click Element    xpath=//table[@id='suscriptoresTable']//td[contains(text(),'${nombre}')]

