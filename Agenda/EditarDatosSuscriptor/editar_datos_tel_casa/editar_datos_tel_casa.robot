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
${Tel_Casa}  3112124192
${Input_tel}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-subscriber-data-form[1]/form[1]/div[1]/div[1]/dx-text-box[1]/div[1]/div[1]/input[1]
${BtnActualizar}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-subscriber-data-form[1]/form[1]/div[4]/div[1]/dx-button[1]/div[1]/span[1]



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

Ingresar nuevo Input_tel
    Ingresar telefono
    Sleep   15s

Seleccionar boton BtnActualizar
    Seleccionar botton BtnActualizar

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

Ingresar correo Input_tel
    Input text    ${Input_tel}   ${Tel_Casa}

Seleccionar botton BtnActualizar
    Click Button    ${BtnActualizar}

Cerrar navegador
    Sleep   3s
    close browser