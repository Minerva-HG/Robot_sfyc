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
${MenuPerfil}  Xpath: //html[1]/body[1]/app-root[1]/app-main-layout[1]/sa-header[1]/header[1]/div[4]/div[2]/div[1]/div[1]/div[1]
${MenuDashboard}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/div[1]/dx-button[5]/div[1]/span[1]
${MenuLlamadasVisitas}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[1]/div[1]/div[1]/div[2]/div[1]/span[1]
${CheckboxCIS}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[2]/dxi-item[1]/app-subscriber-visits-calls-chart-container[1]/div[1]/div[1]/div[1]/app-subscriber-visits-calls-chart-form[1]/div[1]/form[1]/div[1]/div[1]/dx-check-box[1]/div[1]/span[1]
${BoxTecnologias}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[2]/dxi-item[1]/app-subscriber-visits-calls-chart-container[1]/div[1]/div[1]/div[1]/app-subscriber-visits-calls-chart-form[1]/div[1]/form[1]/div[1]/div[2]/app-call-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${Tecnologias}  FACTURACION
${BoxTipoLlamada}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[2]/dxi-item[1]/app-subscriber-visits-calls-chart-container[1]/div[1]/div[1]/div[1]/app-subscriber-visits-calls-chart-form[1]/div[1]/form[1]/div[1]/div[3]/app-call-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${TipoLlamada}  FACTURACION ELECTRONICA
${BoxSintonia}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[2]/dxi-item[1]/app-subscriber-visits-calls-chart-container[1]/div[1]/div[1]/div[1]/app-subscriber-visits-calls-chart-form[1]/div[1]/form[1]/div[1]/div[4]/app-call-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${Sintonia}  CLIENTE ACTUAL
${BoxFecha}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[2]/dxi-item[1]/app-subscriber-visits-calls-chart-container[1]/div[1]/div[1]/div[1]/app-subscriber-visits-calls-chart-form[1]/div[1]/form[1]/div[1]/div[5]/dx-date-box[1]/div[1]/div[1]/div[1]/input[1]
${Fecha}  octubre
${BtnActualizar}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[2]/dxi-item[1]/app-subscriber-visits-calls-chart-container[1]/div[1]/div[1]/div[1]/app-subscriber-visits-calls-chart-form[1]/div[1]/form[1]/div[1]/div[6]/dx-button[1]/div[1]/span[1]
${BtnExportar}  Xpath: //html[1]/body[1]/div[3]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-dashboard-container[1]/dx-tab-panel[1]/div[2]/div[1]/div[1]/div[2]/dxi-item[1]/app-subscriber-visits-calls-chart-container[1]/div[1]/div[1]/div[1]/app-subscriber-visits-calls-chart-form[1]/div[1]/form[1]/div[1]/div[6]/dx-button[2]/div[1]/span[1]



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

Seleccionar botton MenuPerfil
    Sleep   15s
    Seleccionar menu

Seleccionar MenuDashboard
    Seleccionar MenuDashboard
    Sleep   15s

Seleccionar MenuLlamadasVisitas
    Seleccionar MenuLlamadasVisitas
    Sleep   15s

Seleccionar MenuLlamadasVisitas
    Seleccionar MenuLlamadasVisitas
    Sleep   15s

Seleccionar Tecnologia
    Seleccionar Opcion    Facturacion

Seleccionar TipoLlamada
    Seleccionar Opcion    FACTURACION ELECTRONICA

Seleccionar Sintonia
    Seleccionar Opcion    CLIENTE ACTUAL

Seleccionar Mes
    Seleccionar Opcion    octubre

Seleccionar boton BtnActualizar
    Seleccionar botton BtnActualizar

Seleccionar boton BtnExportar
    Seleccionar botton BtnExportar

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
    Click element    ${MenuPerfil}

Seleccionar menu
    Click element    ${MenuDashboard}

Seleccionar menu
    Click element    ${MenuLlamadasVisitas}

Seleccionar Tecnologia
    Select From List by Visible Text    ${BoxTecnologias}    ${Tecnologias}

Seleccionar Tecnologia
    Select From List by Visible Text    ${BoxTipoLlamada}    ${TipoLlamada}

Seleccionar Tecnologia
    Select From List by Visible Text    ${BoxSintonia}    ${Sintonia}

Seleccionar Tecnologia
    Select From List by Visible Text    ${BoxFecha}    ${Fecha}

Seleccionar botton BtnActualizar
    Click Button    ${BtnActualizar}

Seleccionar botton BtnExportar
    Click Button    ${BtnExportar}

Cerrar navegador
    Sleep   3s
    close browser