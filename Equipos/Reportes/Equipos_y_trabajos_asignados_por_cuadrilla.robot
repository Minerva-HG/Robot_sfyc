*** Settings ***
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
${Reporte}  xpath=//td[normalize-space()='Equipos y trabajos asignado por cuadrilla']
${Checkboxtodostipocuadrilla}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Checkboxtodostiposdecuadrilla}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Listadesplegabletiposdecuadrilla}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Cuadrilla}  xpath=//td[contains(.,'ALM Almacen')]
${Listadesplegabledesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Cuadrilladesde}  xpath=//td[contains(.,'0006')]   
${Listadesplegablehasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Cuadrillahasta}  xpath=//td[contains(.,'0011')]
${Gridtrabajos}  xpath=//span[contains(.,'Trabajos')]
${Checkboxcontrabajoasignado}  xpath=(//span[@class='dx-checkbox-icon'])[2]
${Gridequipos}    xpath=//span[contains(.,'Equipos')]
${Listadesplegableequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Equipo1}    xpath=//td[normalize-space()='CONVERTIDORES']
${Equipo2}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Equipo4}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Equipo5}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Equipo6}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Equipo7}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[9]
${Gridcuadrillas}    xpath=//span[contains(.,'Cuadrillas')]
${Quitarcuadrilla}    xpath=(//span[@class='dx-icon dx-icon-clear'])[2]
${Bottonlistadesplegablecuadrilla}    xpath=(//div[@class='dx-dropdowneditor-icon'])[3]
${Bottonenviar}    xpath=//span[contains(.,'Aceptar')]
${Registrocuadrilladesde}    xpath=//td[@aria-describedby='dx-col-4'][contains(.,'0001')]   
${Bottonlimpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
${Bottonimprimir}    xpath=//*[@id="DocumentViewer"]/div/div[1]/div[1]/div[1]/div/div[1]/div[2]/div/div[13]/div/div[1]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    

Pantalla de equipos y trabajos asignados por cuadrilla
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar reporte

Validar cuadrillas
    Seleccionar checkbox todos tipo de cuadrilla
    Seleccionar checkbox todos tipo de cuadrilla

Validar tipo cuadrilla
    Seleccionar checkbox todos los tipos de cuadrilla
    Seleccionar lista desplegable tipos de cuadrilla
    Seleccionar cuadrilla    
    Seleccionar lista desplegable desde
    Seleccionar cuadrilla desde
    Seleccionar lista desplegable hasta
    Seleccionar cuadrilla hasta
    
Validar trabajos
    Seleccionar grid trabajos
    Seleccionar check box con trabajo asignado
    Seleccionar check box con trabajo asignado
    
Validar equipos
    Seleccionar grid equipos 

Validar combo equipos
    Seleccionar lista desplegable equipos

Selecciona un equipo
    Seleccionar un equipo

Selecciona varios equipos
    Sleep    5s
    Seleccionar lista desplegable equipos
    Seleccionar lista desplegable equipos
    Seleccionar varios equipos
    
Campos vacios
    Sleep    5s
    Seleccionar lista desplegable equipos
    Seleccionar grid cuadrillas
    Quitar cuadrilla
    Sleep    7s

Boton enviar
    Seleccionar botton limpiar
    Seleccionar checkbox todos los tipos de cuadrilla
    Seleccionar lista desplegable tipos de cuadrilla
    Seleccionar cuadrilla    
    Seleccionar lista desplegable desde
    Seleccionar cuadrilla desde
    Seleccionar lista desplegable hasta
    Seleccionar cuadrilla hasta

Imprimir
    Seleccionar botton enviar

Validar que genere reporte agregando masde 6 equipos
    Sleep    7s
    Seleccionar grid equipos
    Seleccionar lista desplegable equipos
    Seleccionar un equipo
    Seleccionar varios equipos
    Seleccionar botton enviar

*** Keyword ***
Ingresar usuario contrasena
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

Seleccionar reporte
    Wait Until Element Is Visible    ${Reporte}   
    Click Element    ${Reporte}

Seleccionar checkbox todos tipo de cuadrilla
    Wait Until Element Is Visible    ${Checkboxtodostipocuadrilla}
    Click Element    ${Checkboxtodostipocuadrilla}

Seleccionar checkbox todos los tipos de cuadrilla
    Wait Until Element Is Visible    ${Checkboxtodostiposdecuadrilla}
    Click Element    ${Checkboxtodostiposdecuadrilla}

Seleccionar lista desplegable tipos de cuadrilla
    Wait Until Element Is Visible    ${Listadesplegabletiposdecuadrilla}
    Click Element    ${Listadesplegabletiposdecuadrilla}

Seleccionar cuadrilla
    Wait Until Element Is Visible    ${Cuadrilla}
    Click Element    ${Cuadrilla}

Seleccionar lista desplegable desde
    Wait Until Element Is Visible    ${Listadesplegabledesde}
    Click Element    ${Listadesplegabledesde}

Seleccionar cuadrilla desde
    Wait Until Element Is Visible    ${Cuadrilladesde}
    Click Element    ${Cuadrilladesde}

Seleccionar lista desplegable hasta
    Wait Until Element Is Visible    ${Listadesplegablehasta}
    Click Element    ${Listadesplegablehasta}

Seleccionar cuadrilla hasta
    Wait Until Element Is Visible    ${Cuadrillahasta}
    Click Element    ${Cuadrillahasta}

Seleccionar grid trabajos
    Wait Until Element Is Visible    ${Gridtrabajos}
    Click Element    ${Gridtrabajos}

Seleccionar check box con trabajo asignado
    Wait Until Element Is Visible    ${Checkboxcontrabajoasignado}
    Click Element    ${Checkboxcontrabajoasignado}

Seleccionar grid equipos
    Wait Until Element Is Visible    ${Gridequipos}
    Click Element    ${Gridequipos}

Seleccionar lista desplegable equipos
    Wait Until Element Is Visible    ${Listadesplegableequipos}
    Click Element    ${Listadesplegableequipos}

Seleccionar un equipo
    Wait Until Element Is Visible    ${Equipo1}
    Click Element    ${Equipo1}

Seleccionar varios equipos
    Wait Until Element Is Visible    ${Equipo2}
    Click Element    ${Equipo2}
    Wait Until Element Is Visible    ${Equipo4}
    Click Element    ${Equipo4}
    Wait Until Element Is Visible    ${Equipo5}
    Click Element    ${Equipo5}
    Wait Until Element Is Visible    ${Equipo6}
    Click Element    ${Equipo6}
    Wait Until Element Is Visible    ${Equipo7}
    Click Element    ${Equipo7}
    
Seleccionar grid cuadrillas
    Wait Until Element Is Visible    ${Gridcuadrillas}
    Click Element    ${Gridcuadrillas}

Quitar cuadrilla
    Wait Until Element Is Visible    ${Quitarcuadrilla}
    Click Element    ${Quitarcuadrilla}

Seleccionar botton enviar
    Wait Until Element Is Visible    ${Bottonenviar}
    Click Element    ${Bottonenviar}

Seleccionar registro cuadrilla desde
    Wait Until Element Is Visible    ${Registrocuadrilladesde}
    Click Element    ${Registrocuadrilladesde}

Seleccionar botton limpiar
    Wait Until Element Is Visible    ${Bottonlimpiar}
    Click Element    ${Bottonlimpiar}

