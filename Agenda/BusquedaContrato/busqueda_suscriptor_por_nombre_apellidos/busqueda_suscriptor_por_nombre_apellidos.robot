*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${SeleccionMenu}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[2]/div[1]
${Cajadetextoserie}  xpath=//input[@name='subscriber']
${sucursal_numero}  12
${sucursal_numero}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[2]/dxi-item[1]/div[1]/app-subscriber-search-fullname-form[1]/form[1]/div[1]/div[1]/div[1]/app-branch-dropdown[1]/app-base-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${apellido_paterno}  Hernandez
${apellido_paterno}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[2]/dxi-item[1]/div[1]/app-subscriber-search-fullname-form[1]/form[1]/div[1]/div[2]/div[1]/dx-text-box[1]/div[1]/div[1]/input[1]
${apellido_materno}  Domiguez
${apellido_materno}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[2]/dxi-item[1]/div[1]/app-subscriber-search-fullname-form[1]/form[1]/div[1]/div[2]/div[2]/dx-text-box[1]/div[1]/div[1]/input[1]
${nombre}  Diana Lissette
${nombre}  xpath=//html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[2]/dxi-item[1]/div[1]/app-subscriber-search-fullname-form[1]/form[1]/div[1]/div[2]/div[3]/dx-text-box[1]/div[1]/div[1]/input[1]
${BotonConsultar}  Xpath: //div[@class='add-subscriber-buttons']



*** Test Cases ***
Consulta de Suscriptor
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Navegar a busqueda por nombre y apellido
    Sleep   15s
    Seleccionar menu

Ingresar los datos del suscriptor
    Seleccionar Sucursal    12
    Sleep   5s
    Ingresar Apellido Paterno    ApellidoPaterno
    Sleep   5s
    Ingresar Apellido Materno    ApellidoMaterno
    Sleep   5s
    Ingresar Nombre    Nombre
    Sleep   5s
    Presionar Boton Consultar

Seleccionar contrato de suscriptor
    Sleep   5s
    Doble Click en Nombre en Tabla

*** Keywords ***
Seleccionar Sucursal
    [Arguments]    ${sucursal_numero}
    Select From List by Value    id=sucursal-list    ${sucursal_numero}

Ingresar Apellido Paterno
    [Arguments]    ${apellido_paterno}
    Input Text    id=apellidoPaterno    ${apellido_paterno}

Ingresar Apellido Materno
    [Arguments]    ${apellido_materno}
    Input Text    id=apellidoMaterno    ${apellido_materno}

Ingresar Nombre
    [Arguments]    ${nombre}
    Input Text    id=nombre    ${nombre}

Presionar Boton Consultar
    Click Button    ${BotonConsultar}

Doble Click en Nombre en Tabla
    Double Click Element    xpath=//table[@id='suscriptoresTable']//td[contains(text(),'${nombre}')]
