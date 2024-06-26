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
${btnFacturacion}  xpath=//*[contains(text(), "Facturación")]
${btnConsultaSaldo}  xpath=/html/body/app-root/app-agenda360/dx-tab-panel/div[2]/div/div/div[1]/div/div/app-agenda360-main-tab-panel/dx-tab-panel/div[2]/div/div/div[4]/div/app-billing-container/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-balance-expense-container/div/div[1]/div[2]/dx-button/div
${btnMenuUser}  xpath=/html/body/app-root/app-agenda360/sa-header/header/div[3]/span[2]/div[1]
${btnMenuCerrar}  xpath=//*[contains(text(), "Cerrar sesión")]
${btnMenuCerrarSi}  xpath=//dx-button[contains(@class, "logout-accept-button")]/div

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
    Consulta saldo
    Sleep   2s
    Cerrar sesion


*** Keywords ***
Cerrar sesion
    Click Element    ${btnMenuUser}
    Sleep   3s
    Click Element    ${btnMenuCerrar}
    Sleep   3s
    Click Element    ${btnMenuCerrarSi}
    Sleep   3s
    close browser

Consulta saldo
    Click Element    ${btnFacturacion}
    Sleep   5s
    Click Element    ${btnConsultaSaldo}
    Sleep   20s

# Cerrar notificaciones
#     Click Element    ${btnCerrarNoti}
#     Sleep   2s

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