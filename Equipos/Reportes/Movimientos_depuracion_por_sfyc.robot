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
${Nombrereporte}    Depuración de equipos por SfyC
${Reporte}    xpath=//td[normalize-space()='Depuración de equipos por SfyC']
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Checkboxtodoslostiposdeequipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Bottonparadesplegartiposdeequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Equipo}    xpath=//td[contains(.,'MAXCOM eMTA')]
${Checkboxtodoslosequipos}    xpath=(//span[@class='dx-checkbox-icon'])[2]
${Bottonparadesplegarmodelos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Modelo}    xpath=//td[contains(.,'SB5101M')]
${Bottonparadesplegarfechadesde}    xpath=(//div[@class='dx-dropdowneditor-icon'])[5]
${Fechadesde}    xpath=(//span[contains(.,'28')])[1]
${Bottonparadesplegarfechahasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Fechahasta}    xpath=(//span[contains(.,'1')])[45]
${Checkboxubiaciondestino}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Bottonparadesplegarubicaciondestino}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Ubicaciondestino}    xpath=//td[contains(.,'Aguascalientes')]
${Bottonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Checkboxresumen}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Ubicaciondestinovacio}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[4]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de reporte depuracion de equipos por SFYC
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Depuracion de equipos por SFyC sin resumen
    Seleccionar checkbox todos los tipos de equipos
    Seleccionar botton para desplegar tipos de equipos
    Seleccionar equipo
    Seleccionar checkbox todos los modelos de equipos
    Seleccionar botton para desplegar modelos
    Seleccionar modelo
    Seleccionar botton para desplegar fecha desde
    Seleccionar fecha desde
    Seleccionar botton para desplegar fecha hasta
    Seleccionar fecha hasta
    Seleccionar checkbox ubicacion destino
    Seleccionar botton para desplegar la ubicacion destino
    Seleccionar ubicacion destino
    Seleccionar botton aceptar

Depuracion de equipos por SFyC con resumen
    Seleccionar checkbox resumen
    Seleccionar botton aceptar

Campos vacios
    Campo vacio ubicacion destino

Combos
    Seleccionar botton para desplegar tipos de equipos
    Sleep    5s
    Seleccionar botton para desplegar tipos de equipos
    Seleccionar botton para desplegar modelos
    Sleep    5s
    Seleccionar botton para desplegar modelos
    Seleccionar botton para desplegar fecha desde
    Sleep    5s
    Seleccionar botton para desplegar fecha desde
    Seleccionar botton para desplegar fecha hasta    
    Sleep    5s
    Seleccionar botton para desplegar fecha hasta
    Seleccionar botton para desplegar la ubicacion destino
    Sleep    5s
    Seleccionar botton para desplegar la ubicacion destino


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

Seleccionar checkbox todos los tipos de equipos
    Click Element When Visible    ${Checkboxtodoslostiposdeequipos}

Seleccionar botton para desplegar tipos de equipos
    Click Element When Visible    ${Bottonparadesplegartiposdeequipos}

Seleccionar equipo
    Click Element When Visible    ${Equipo}

Seleccionar checkbox todos los modelos de equipos
    Click Element When Visible    ${Checkboxtodoslosequipos}

Seleccionar botton para desplegar modelos
    Click Element When Visible    ${Bottonparadesplegarmodelos}

Seleccionar modelo
    Click Element When Visible    ${Modelo}

Seleccionar botton para desplegar fecha desde
    Click Element When Visible    ${Bottonparadesplegarfechadesde}

Seleccionar fecha desde
    Click Element When Visible    ${Fechadesde}

Seleccionar botton para desplegar fecha hasta
    Click Element When Visible    ${Bottonparadesplegarfechahasta}

Seleccionar fecha hasta
    Click Element When Visible    ${Fechahasta}

Seleccionar checkbox ubicacion destino
    Click Element When Visible    ${Checkboxubiaciondestino}

Seleccionar botton para desplegar la ubicacion destino
    Click Element When Visible    ${Bottonparadesplegarubicaciondestino}

Seleccionar ubicacion destino
    Click Element When Visible    ${Ubicaciondestino}

Seleccionar botton aceptar
    Click Element When Visible    ${Bottonaceptar}

Seleccionar checkbox resumen
    Click Element When Visible    ${Checkboxresumen}

Campo vacio ubicacion destino
    Click Element When Visible    ${Ubicaciondestinovacio}