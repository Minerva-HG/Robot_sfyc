** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonreportes}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[8]
${Bottonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Campodescripcion}  xpath=//input[@role='textbox']
${Nombrereporte}    Entrega y recolección equipos en CIS
${Reporte}    xpath=//td[normalize-space()='Entrega y recolección equipos en CIS']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Checkboxtodoslosmovimientos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Bottonparadesplegartiposdemovimientos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Tipodemovimiento}    xpath=//td[contains(.,'Descarga')]
${CheckboxtodoslosCIS}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${BottonparadesplegartodoslostiposdeCIS}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${CIS}    xpath=//td[contains(.,'CENTRAL')]
${Bottonparadesplegarfechadesde}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Fechadesde}    xpath=(//span[contains(.,'29')])[1]
${Bottonparadesplegarfechahasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Fechahasta}    xpath=(//span[contains(.,'3')])[22]
${Checkboxresumen}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Bottonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Campovaciomovimiento}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
${Bottonlimpiar}    xpath=//span[contains(.,'Limpiar')]
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de Entrega y Recoleccion de Equipos en CIS
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Entrega y recoleccion de equipos en CIS
    Seleccionar checkbox todos los tipos de movimientos
    Seleccionar botton para desplegar todos los tipos de movimientos
    Seleccionar tipo de movimiento
    Seleccionar botton para desplegar todos los tipos de movimientos
    Seleccionar checkbox todos los CIS
    Seleccionar botton para desplegar todos los tipos de CIS
    Seleccionar CIS
    Selecccionar botton para desplegar fecha desde
    Seleccionar fecha desde
    Seleccionar botton para desplegar fecha hasta
    Seleccionar fecha hasta
    Seleccionar checkbox resumen
    Seleccionar botton aceptar

Campos vacios
    Tipo de movimiento vacio

Boton aceptar
    Sleep    5s
    Seleccionar botton para desplegar todos los tipos de movimientos
    Seleccionar tipo de movimiento
    Seleccionar botton aceptar

Boton limpiar
    Sleep    3s
    Seleccionar botton limpiar
    Seleccionar botton aceptar

Boton cancelar
    Sleep    3s
    Seleccionar botton cancelar


*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element If Visible   name:button

Seleccionar menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Seleccionar reportes
    Wait Until Element Is Visible    ${Bottonreportes}
    Click Element    ${Bottonreportes}

Seleccionar botton para desplegar reportes
    Wait Until Element Is Visible    ${Bottonparadesplegarreportes}
    Click Element    ${Bottonparadesplegarreportes}

Seleccionar campo descripcion
    Wait Until Element Is Visible    ${Campodescripcion}   
    Click Element    ${Campodescripcion}

Teclear nombre de reporte
    Input Text When Element Is Visible    ${Campodescripcion}   ${Nombrereporte}

Seleccionar reporte
    Wait Until Element Is Visible    ${Reporte}   
    Click Element    ${Reporte}

Seleccionar checkbox todos los tipos de movimientos
    Click Element When Visible    ${Checkboxtodoslosmovimientos}

Seleccionar botton para desplegar todos los tipos de movimientos
    Click Element When Visible    ${Bottonparadesplegartiposdemovimientos}

Seleccionar tipo de movimiento
    Click Element When Visible    ${Tipodemovimiento}

Seleccionar checkbox todos los CIS
    Click Element When Visible    ${CheckboxtodoslosCIS}

Seleccionar botton para desplegar todos los tipos de CIS
    Click Element When Visible    ${BottonparadesplegartodoslostiposdeCIS}

Seleccionar CIS
    Click Element When Visible    ${CIS}

Selecccionar botton para desplegar fecha desde    
    Click Element When Visible    ${Bottonparadesplegarfechadesde}

Seleccionar fecha desde
    Click Element When Visible    ${Fechadesde}

Seleccionar botton para desplegar fecha hasta
    Click Element When Visible    ${Bottonparadesplegarfechahasta}

Seleccionar fecha hasta
    Click Element When Visible    ${Fechahasta}

Seleccionar checkbox resumen
    Click Element When Visible    ${Checkboxresumen}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Tipo de movimiento vacio
    Click Element When Visible    ${Campovaciomovimiento}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}