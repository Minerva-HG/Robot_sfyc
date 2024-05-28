*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  dhernandezd
${Pass}  Mega12345
${Contrato}  0120025329
${btn_contrato}  xpath=//input[@name='subscriber']
${input_contrato}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/app-subscriber-search-contract-form[1]/form[1]/div[1]/dx-text-box[1]/div[1]/div[1]/input[1]
${btnConsulta}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/app-subscriber-search-container[1]/div[1]/div[2]/div[1]/div[1]/dx-button[2]/div[1]/span[1]
${btnCerrarNoti}  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]
${btninfoTarjeta}  xpath=//div[@class='dx-button-content'][span[text()='Información de Tarjeta']]
${btnHistoricoMov}  xpath=/html/body/div[2]/div/div[2]/app-client-data-card/div/div[3]/dx-button/div/span
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
    Consulta tarjeta
    Sleep   2s
    Cerrar navegador


*** Keywords ***
Cerrar navegador
    Sleep   3s
    close browser

Consulta tarjeta
    Click Element    ${btninfoTarjeta}
    Sleep   2s
    Click Element    ${btnHistoricoMov}
    Sleep   2s

Cerrar notificaciones
    Click Element    ${btnCerrarNoti}
    Sleep   2s

Ingresar contrato
    Click Element    ${input_contrato}
    Sleep   2s
    Input text    ${input_contrato}    ${Contrato}
    Sleep   3s
    Click Element    ${btnConsulta}
    Sleep   5s

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