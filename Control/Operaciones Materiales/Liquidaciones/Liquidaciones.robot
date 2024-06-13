*** Settings ***
#Library  SeleniumLibrary
Library  String    
Library    RPA.Browser.Selenium   auto_close=${FALSE}

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
#menu
${Bottonmenu}  xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Bottonoperacionesmateriales}  xpath=//span[contains(.,'Operaciones Materiales')]
${Liquidaciones}    xpath=(//div[contains(.,'Liquidaciones')])[15]
#Screenbottonsprincipal
${consulta}    xpath=//i[contains(@class,'dx-icon dx-icon-search')]
${Cerrarconsulta}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Eliminar}    xpaht=//i[contains(@class,'dx-icon dx-icon-trash')]
${Imprimir}    xpath=//i[contains(@class,'dx-icon dx-icon-print')]
#Screendropsprincipal
${Tipo_cuadrilla1}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Tipo_cuadrillainput}    xpath=(//input[contains(@autocomplete,'off')])[15]
${input1}    Externo Migracion
${selectinput}    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]
${Cuadrilla}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Cuadrilla_input}    xpath=(//input[contains(@autocomplete,'off')])[16]
${input2}       0083
${Selectinput2}    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]
#calendario
${Calendario}    xpath=(//input[contains(@autocomplete,'off')])[16]
${atras}    xpath=//i[contains(@class,'dx-icon dx-icon-chevronleft')]
${Fecha}    xpath=(//span[contains(.,'1')])[2]
#underbottons
${Aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Cancelar}    xpath=(//span[@class='dx-button-text'][contains(.,'Cancelar')])[1]
${Limpiar}    xpath=(//span[@class='dx-button-text'][contains(.,'Limpiar')])[1]
#warnings
${avisoAmarillo}    xpath=//div[@class='dx-toolbar-before'][contains(.,'¡Aviso del sistema!')]
${close1}    xpath=(//i[@class='dx-icon dx-icon-close'])[2]

#bottonsfound
${buscarcuadrilla}    xpath=//span[@class='dx-button-text'][contains(.,'Cuadrilla')]
${buscarfolio}    xpath=//span[@class='dx-button-text'][contains(.,'Folio')]
${SelectFol}    xpath=(//input[contains(@autocomplete,'off')])[36]
${inputfolio}        123456
#dropsfound
${Btipocuadrilla}    xpaht=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${BtipocuadrillaInput}     xpath=(//input[contains(@autocomplete,'off')])[39]
${Binput}    Quejas 
${SeleBinput}    xpath=//td[@aria-describedby='dx-col-67'][contains(.,'Q   Quejas')]
${Bcuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Bcuadrillainput}    xpath=//input[contains(@aria-valuenow,'48')]
${Binputc}    0089
${SelectBinput}    xpath=//td[@aria-describedby='dx-col-67'][contains(.,'Q   Quejas')]
#bottons2found
${Aceptar2}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[3]
${Cancelar2}    xpath=(//span[@class='dx-button-text'][contains(.,'Cancelar')])[3]
${Limpiar3}    xpaht=(//span[@class='dx-button-text'][contains(.,'Limpiar')])[2]
#PrincipalGRID
${liquidacion}    xpath=//span[@class='dx-tab-text'][contains(.,'Liquidación')]
${auxiliar}    xpath=//span[@class='dx-tab-text'][contains(.,'Auxiliar')]





*** Test Cases ***
        
Ingresar usuario
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla de devolucion de materiales
    [Tags]    ingresar a Lquidaciones
    Sleep   15s
    Seleccionar menu
    Sleep   3s
    Seleccionar operaciones materiales
    Sleep   5s
 ##Seleccionar cuadrillas si ya conocemos cual tiene liquidaciones
Seleccionar Drops
    [Tags]    Ruta 1 Si conocemos que cuadrillas
    Sleep   5s
    Seleccionar tipo cuadrilla
    Sleep   5s
    Seleccionar cuadrilla
    Sleep   5s
Calendario
    Seleccionar calendarios
    Sleep   5s
aceptar
    Seleccionar Botón Aceptar
    Sleep    5s
Cerrar avisos
    Seleccionar avisos warnings
    
      


*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button


Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar operaciones materiales
    Wait Until Page Contains Element     ${Bottonoperacionesmateriales}
    Click element  ${Bottonoperacionesmateriales}
    Sleep    5s
    Click element    ${Liquidaciones}

#Seleccionar cuadrillas si ya conocemos cual tiene liquidaciones
Seleccionar tipo cuadrilla
    Click Element If Visible    ${Tipo_cuadrilla1}
    Click Element If Visible    ${Tipo_cuadrillainput}
    Sleep    10s
    Input Text    ${Tipo_cuadrillainput}    ${input1}
    Sleep    3s
    Click Element     ${selectinput}
    [Timeout]    1 minute
Seleccionar cuadrilla
    Click Element If Visible   ${Cuadrilla} 
    Sleep    5s
    Click Element If Visible    ${Cuadrilla_input}
    Input Password    ${Cuadrilla_input}    0083
    Click Element When Visible    ${Selectinput2}
Seleccionar calendarios
    Click Element When Visible    ${Calendario} 
    Sleep    5s
    Click Element If Visible    ${atras}
    Sleep    5s
    Click Element When Visible    ${Fecha}
Seleccionar Botón Aceptar
    Sleep    5s
    Click Element When Visible     ${Aceptar}
Seleccionar avisos warnings
    Wait And Click Button    ${close1}

Seleccionar boton Eliminar
    Click Element When Visible    ${Eliminar}

