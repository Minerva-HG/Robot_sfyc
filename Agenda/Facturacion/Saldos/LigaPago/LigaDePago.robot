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
${btnMenuUser}  xpath=/html/body/app-root/app-agenda360/sa-header/header/div[3]/span[2]/div[1]
${btnMenuCerrar}  xpath=//*[contains(text(), "Cerrar sesión")]
${btnMenuCerrarSi}  xpath=//dx-button[contains(@class, "logout-accept-button")]/div
${btnFacturacion}  xpath=//*[contains(text(), "Facturación")]
${btnConsultaSaldo}  xpath=/html/body/app-root/app-agenda360/dx-tab-panel/div[2]/div/div/div[1]/div/div/app-agenda360-main-tab-panel/dx-tab-panel/div[2]/div/div/div[4]/div/app-billing-container/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/app-balance-expense-container/div/div[1]/div[2]/dx-button/div
${btnLiga}  xpath=//span[normalize-space()='Liga de pago']
${btnNumeroPago}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/span[1]/app-subscriber-phone-number-dropdown[1]/dx-select-box[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]
${btnNumeroParticular}  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]
${btnNumeroAceptar}  xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[2]/dx-button[1]/div[1]/span[1]
${btnCerrarVentana}  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]
${btnCerrarVentana2}  xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]


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
    Sleep   15s
    Click Element    ${btnLiga}
    Sleep   10s
    Click Element    ${btnNumeroPago}
    Sleep   5s
    Click Element    ${btnNumeroParticular}
    Sleep   5s
    Click Element    ${btnNumeroAceptar}
    Sleep   8s
    Click Element    ${btnCerrarVentana}
    Sleep   3s
    Click Element    ${btnCerrarVentana2}
    Sleep   3s


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