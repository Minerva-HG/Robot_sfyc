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
${Nombrereporte}    Surtido CIS max y min
${Reporte}    xpath=//td[normalize-space()='Surtido CIS max y min']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${CheckboxtodoslosCIS}    xpath=//span[contains(@class,'dx-checkbox-icon')]
${Bottonaceptar}    xpath=//span[contains(.,'Aceptar')]
${BottonparadesplegartodoslosCIS}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${CIS}    xpath=//td[contains(.,'CENTRAL')]
${Checkboxtodos}    xpath=//span[contains(@class,'dx-checkbox-icon')]
${CampovacioCIS}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
${Bottonlimpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
${Bottoncancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de reporte Surtido cis-maximos y minimos
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Surtido CIS Maximos y Minimos
    Seleccionar checkbox todos los CIS
    Seleccionar botton para desplegar todos los CIS
    Seleccionar CIS
    Seleccionar botton aceptar

Surtido CIS Maximos y Minimos Todos
    Seleccionar checkbox todos
    Seleccionar botton aceptar

Campos vacios
    Seleccionar checkbox todos los CIS
    Seleccionar botton para desplegar todos los CIS
    Seleccionar CIS
    Campo vacio CIS

Boton limpiar
    Sleep    5s
    Seleccionar botton limpiar

Boton cancelar
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

Seleccionar checkbox todos los CIS
    Click Element When Visible    ${CheckboxtodoslosCIS}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Seleccionar botton para desplegar todos los CIS
    Click Element When Visible    ${BottonparadesplegartodoslosCIS}

Seleccionar CIS
    Click Element When Visible    ${CIS}

Seleccionar checkbox todos
    Click Element When Visible    ${Checkboxtodos}

Campo vacio CIS
    Click Element When Visible    ${CampovacioCIS}

Seleccionar botton limpiar
    Click Element When Visible    ${Bottonlimpiar}
    
Seleccionar botton cancelar
    Click Element When Visible    ${Bottoncancelar}