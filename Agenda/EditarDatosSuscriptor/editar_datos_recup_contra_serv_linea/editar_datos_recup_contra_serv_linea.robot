*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${Navegador}  Chrome
${Pagina}  https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Contrato}  0120063814
${Input_contrato}  xpath=//input[@name='subscriber']
${BotonConsultar}  Xpath: //div[@class='add-subscriber-buttons']
${BtnEditarDatos}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/div[1]/dx-button[1]/div[1]/span[1]
${BtnRecuperarServicios}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-subscriber-data-form[1]/form[1]/div[4]/app-subscriber-data-password-recover[1]/dx-button[1]/div[1]/span[1]
${BtnConfirmar}  Xpath: //html[1]/body[1]/div[4]/div[1]/div[2]/app-general-yes-no-question[1]/div[1]/div[2]/dx-button[1]/div[1]
${BtnCancelar}  Xpath: //html[1]/body[1]/div[4]/div[1]/div[2]/app-general-yes-no-question[1]/div[1]/div[2]/dx-button[2]/div[1]


*** Test Cases ***
Ingresar usuario
    Abrir navegador
    Maximize Browser Window
    Sleep   5s
    Seleccionar dominio
    Sleep   5s
    Ingresar usuario contrasena
    Sleep   10s
    Ingresar suscriptor por contrato
    Sleep   10s
    Seleccionar boton consultar
    Sleep   10s
    Cerrar navegador

Ingresar a la opcion de Editar
    Sleep   15s
    Seleccionar menu


Seleccionar boton BtnRecuperarServicios
    Seleccionar botton BtnRecuperarServicios

Seleccionar botton BtnConfirmar
    Seleccionar botton BtnConfirmar

*** Keyword ***

Abrir navegador
    Open browser    ${Pagina}   ${Navegador}
    title should be  Atención a Clientes Web

Seleccionar dominio
    Select From List By Index     name:Domain   0

Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   3s
    Click Button    name:button

Ingresar suscriptor por contrato
    Input text    ${Input_contrato}   ${Contrato}

Seleccionar boton consultar
    Click Button    ${BotonConsultar}

Seleccionar menu
    Click element    ${BtnEditarDatos}


Seleccionar botton BtnRecuperarServicios
    Click Button    ${BtnRecuperarServicios}

Seleccionar botton BtnConfirmar
    Click Button    ${BtnConfirmar}

Cerrar navegador
    Sleep   3s
    close browser