*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
#Library    RPA.Robocloud.Items
Library    RPA.Excel.Files
Library    RPA.Dialogs


*** Variables ***
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottonconfiguracionsettops}    xpath=//span[contains(.,'Configuración Settops')]
${Campobuscarserie}    xpath=//input[contains(@maxlength,'35')]
${Serietipoequipo2}    06CWX15F6JW3                           
${Cerrarnotificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Serietipoequipo4}    125008979                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
${Checkboxrefrescar}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Botonaceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Notificacionfinalizoelprocesodevalidacion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${SerieconubicacionCLI}    125000445                          
${Nuevaserietipoequipo4}    125008983                                 
${IconoDCX3400}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]
${Seriehaquemar}    125008995    

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla configuracion de Settops
    Menu
    Operaciones equipos
    Configuracion de settops

Configuracion equipo tipo 4
    Equipo tipo 2
    Cerrar notificacion
    Equipo tipo 4

Serie ya agregada
    Equipo tipo 4
    Cerrar notificacion

Configurar
    Checkbox refrescar
    Boton aceptar
    Cerrar notificacion finalizo el proceso de validacion

Ubicacion CLI
    Equipo con ubicacion CLI
    Cerrar notificacion finalizo el proceso de validacion

Validar DCX3400
    Nueva serie tipo equipo 4
    Icono validar DCX3400 y DCX3510m
    Boton aceptar
    Cerrar notificacion finalizo el proceso de validacion

Quemar
    Serie ha quemar
    Boton aceptar
    Cerrar notificacion finalizo el proceso de validacion

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}
    Click Element If Visible   name:button

Menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Operaciones equipos
    Click element  ${Bottonoperacionesequipos}

Configuracion de settops
    Click Element When Visible    ${Bottonconfiguracionsettops}   

Equipo tipo 2
    Input Text When Element Is Visible    ${Campobuscarserie}    ${Serietipoequipo2} 
    Press Keys    ${Campobuscarserie}    ENTER

Cerrar notificacion
    Sleep    5s
    Click Element When Visible    ${Cerrarnotificacion}

Equipo tipo 4
    Sleep    3s
    Input Text When Element Is Visible    ${Campobuscarserie}    ${Serietipoequipo4}
    Press Keys    ${Campobuscarserie}    ENTER

Checkbox refrescar
    Click Element When Visible   ${Checkboxrefrescar}

Boton aceptar
    Sleep    3s
    Click Element When Visible    ${Botonaceptar}

Cerrar notificacion finalizo el proceso de validacion
    Sleep    10s
    Click Element    ${Notificacionfinalizoelprocesodevalidacion}

Equipo con ubicacion CLI
    Sleep    5s
    Input Text When Element Is Visible    ${Campobuscarserie}    ${SerieconubicacionCLI}
    Press Keys    ${Campobuscarserie}    ENTER    

Nueva serie tipo equipo 4
    Input Text When Element Is Visible    ${Campobuscarserie}    ${Nuevaserietipoequipo4}
    Press Keys    ${Campobuscarserie}    ENTER

Icono validar DCX3400 y DCX3510m
    Click Element When Visible    ${IconoDCX3400}

Serie ha quemar
    Input Text When Element Is Visible    ${Campobuscarserie}    ${Seriehaquemar}
    Press Keys    ${Campobuscarserie}    ENTER


