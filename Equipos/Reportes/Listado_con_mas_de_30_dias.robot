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
${Nombrereporte}    Listado con más de 30 días
${Reporte}    xpath=//td[normalize-space()='Listado con más de 30 días']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Bottonaceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Campovacioreporte}    xpath=//span[contains(@class,'dx-icon dx-icon-clear')]
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]
${Bottonlimpiar}    xpath=//span[contains(.,'Limpiar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de Listado con más de 30 días
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Botton aceptar
    Seleccionar botton aceptar

Campos vacios
    Sleep    5s
    Seleccionar campo vacio reporte

Botton limpiar
    Sleep    5s
    Seleccionar botton limpiar

Botton cancelar
    Sleep    5s 
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

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Seleccionar campo vacio reporte
    Click Element When Visible    ${Campovacioreporte}

Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}