*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  dhernandezd
${Pass}  Mega12345
${Contrato}  0120063814
${btnNombreApellido}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/dx-tab-panel[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/span[1]
${btnConsultar}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/div[1]/div[1]/dx-button[2]/div[1]/span[1]
${Lista_sucursal}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/app-subscriber-search-fullname-form[1]/form[1]/div[1]/div[1]/div[1]/app-branch-dropdown[1]/app-base-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${Campo_sucursal}  xpath=//div[contains(@class, "dx-state-focused")]/div/div[1]/input
${Sucursal}  12
${Seleccion_sucursal}  xpath=//td[normalize-space()='Tepic']
${Input_Apellido_Paterno}  xpath=//input[@name="fatherLastName"]
${ApellidoPaterno}  hernandez
${Input_Apellido_Materno}  xpath=//input[@name="motherLastName"]
${ApellidoMaterno}  dominguez
${Input_Nombre}  xpath=//input[@name="name"]
${Nombre}  diana
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
    Click Element    ${btnNombreApellido}
    Sleep   2s
    Click Element    ${Lista_sucursal}
    Sleep   8s
    Input Text    ${Campo_sucursal}   ${Sucursal} 
    Sleep    3s
    Click Element    ${Seleccion_sucursal}
    Sleep   2s
    Input Text    ${Input_Apellido_Paterno}   ${ApellidoPaterno}
    Sleep   2s
    Input Text    ${Input_Apellido_Materno}   ${ApellidoMaterno}
    Sleep   2s
    Input Text    ${Input_Nombre}   ${Nombre}
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