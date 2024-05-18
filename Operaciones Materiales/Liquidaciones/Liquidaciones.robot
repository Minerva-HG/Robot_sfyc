*** Settings ***
Library    String
Library    SeleniumLibrary
Library    OperatingSystem
Library    RPA.Email.ImapSmtp
Library    RPA.Windows

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://global.dev-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
#menu
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Bottonoperacionesmateriales}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[2]
${Liquidaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[2]/ul/li[4]
#Iconos
${consulta}    xpath=(//i[contains(@class,'dx-icon dx-icon-search')])[1]
${Eliminar}    xpaht=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-liquidation-material-main-container/div/div[2]/dx-button-group/div/div[2]
${Imprimir}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-liquidation-material-main-container/div/div[2]/dx-button-group/div/div[3]/div/i
#Screendropsprincipal
${Tipo_cuadrilla1}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Tipo_cuadrillainput}    xpath=//input[contains(@maxlength,'7094')]
${input1}    Externo Migracion    
${selectinput}    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]
${Cuadrilla}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-liquidation-material-main-container/div/div[3]/div[2]/app-liquidation-material-form/form/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div/div/div[2]/div/div/div
${Cuadrilla_input}    xpath=//input[contains(@min,'0')] 
${input2}       ${counter}
${Selectinput2}    xpath=//td[contains(.,'0001')]
#calendario
${Calendario}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[3]
${back}    xpath=//i[@class='dx-icon dx-icon-chevronleft']
${Fecha}    xpath=(//span[contains(.,'3')])[3]
#underbottons
${Aceptar}    xpath=//span[contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
#warnings
${Notificacionverde}    xpaht=/html/body/div[2]/div/div[2]/div/div/p/strong
${Cerrar_notificacion_verde}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${avisoAmarillo}    xpath=/html/body/div/div/div[1]/div/div[1]/div/div/div
${close1}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${close2}    xpath=//i[@class='dx-icon dx-icon-close']
${close3}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div
#Mostrar reporte
${inputIMG}    Q
${selectinputIMG}    xpath=(//td[contains(@aria-describedby,'dx-col-67')])[2]
${input157}    144    
${Selectinput157}    xpath=(//td[contains(@aria-describedby,'dx-col-68')])[2]
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
${counter} =   1
${Seg}    2
${Seg2}     5
#Consultarporcuadrilla
${Tipos_cuadrillas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${TipocuadrillaA}    xpath=/html/body/div[2]/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td
${Cuadrillas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Cuadrilla0001}    xpath=//td[contains(.,'0001')]
${Botonaceptar}    xpath=(//span[contains(.,'Aceptar')])[2]
#Consultarporfolio
${Folio}    1030041
${Iconoporfolio}    xpath=//div[@class='dx-button-content'][contains(.,'Folio')]
${Inputtextfolio}    xpath=//div[2]/div/app-shared-material-folio-parameter/div/dx-number-box/div/div/input
#Grids
${Gridauxiliar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-liquidation-material-main-container/div/div[3]/div[1]/dx-tab-panel/div[1]/div/div/div[2]/div[1]/span
${Griddevoluciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-liquidation-material-main-container/div/div[3]/div[1]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-tab-panel/div[1]/div/div/div[2]/div[1]/span
${Gridrequerimiento}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-liquidation-material-main-container/div/div[3]/div[1]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-tab-panel/div[1]/div/div/div[3]/div[1]/span
${Gridconsumos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-liquidation-material-main-container/div/div[3]/div[1]/dx-tab-panel/div[2]/div/div/div[2]/div/dx-tab-panel/div[1]/div/div/div[4]/div[1]/span
#Boton limpiar
${Botonlimpiar}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]
#Boton cancelar
${Botoncancelar}    xpath=//span[@class='dx-button-text'][contains(.,'Cancelar')]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Liquidacion de materiales
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test pantalla liquidacion materiales
    [Documentation]    Liquidacion de materiales
    [Tags]    Validacion de pantalla
    Sleep   15s
    Menu
    Operaciones materiales
 
Test ingresar
    [Documentation]    Liquidacion de materiales
    [Tags]    Ingresar
    Tipo cuadrilla
    Cuadrilla
    Calendarios

Test calendario
    [Documentation]    Liquidacion de materiales
    [Tags]    Ruta 1 Si conocemos que cuadrillas
    Botón Aceptar
    Mostrar aviso

Test cerrar aviso
    [Documentation]    Liquidacion de materiales
    [Tags]    Ruta 1 Si conocemos que cuadrillas
    Run Keyword If    "${avisoAmarillo}" == "${avisoAmarillo}" 
    ...    Cerrar avisos 1
    ...  ELSE
    ...    Cerrar avisos 2

Test reporte materiales
    [Documentation]    Liquidacion de materiales
    [Tags]    Ruta 1 Si conocemos que cuadrillas
    Mostrar reporte
    Cerrar avisos 1

Icono Imprimir
    [Documentation]    Liquidacion de materiales
    [Tags]    Imprimir reporte
    Icono imprimir

Grid auxiliar
    [Documentation]    Liquidacion de materiales
    [Tags]    Grid auxiliar
    Grid auxiliar
    
Icono Eliminar
    [Documentation]    Liquidacion de materiales
    [Tags]    Eliminar liquidacion
    Icono eliminar

Boton limpiar
    [Documentation]    Liquidacion de materiales
    [Tags]    Boton limpiar
    Tipo cuadrilla
    Cuadrilla
    Calendarios
    Boton limpiar

Icono consultar por cuadrilla
    [Documentation]    Liquidacion de materiales
    [Tags]    Consultar por cuadrilla
    Consultar por cuadrilla

Icono por Folio
    [Documentation]    Liquidacion de materiales
    [Tags]    Consultar por folio
    Consultar por folio

Boton cancelar
    [Documentation]    Liquidacion de materiales
    [Tags]    Boton cancelar
    Boton cancelar



*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    #Click Element    ${Botondominio}
    #Click Element    ${SFyC}
    Click Element    name:button


Menu
    Wait Until Element Is Visible    ${Bottonmenu}    
    Click element  ${Bottonmenu}

Operaciones materiales
    Sleep    5s
    Click element  ${Bottonoperacionesmateriales}
    Sleep    5s
    Scroll Element Into View    ${Liquidaciones}
    Wait Until Element Is Visible    ${Liquidaciones}
    Click element    ${Liquidaciones}

#Seleccionar cuadrillas si ya conocemos cual tiene liquidaciones
Tipo cuadrilla
    Sleep    5s         
    Click Element    ${Tipo_cuadrilla1}
    Wait Until Element Is Visible    ${Tipo_cuadrillainput}
    Click Element    ${Tipo_cuadrillainput}
    Wait Until Element Is Visible    ${Tipo_cuadrillainput}
    #Input Text    ${Tipo_cuadrillainput}    ${input1}
    Sleep    5s
    Click Element     ${selectinput}
    [Timeout]    1 minute

Cuadrilla
    Wait Until Element Is Visible    ${Cuadrilla}
    Click Element   ${Cuadrilla} 
    Wait Until Element Is Visible    ${Cuadrilla_input}
    Click Element    ${Cuadrilla_input}
    Input Password    ${Cuadrilla_input}    ${input2}
    Wait Until Element Is Visible    ${Selectinput2}    
    Click Element    ${Selectinput2}
    
Calendarios
    Wait Until Element Is Visible    ${Calendario}
    Click Element    ${Calendario} 
    #Wait Until Element Is Visible    ${back}
    #Click Element   ${back}
    #Wait Until Element Is Visible    ${Fecha}
    #Click Element    ${Fecha}
    Sleep    5s
    Click Element    ${Calendario}
    
Botón Aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}
   
#avisos
Mostrar aviso
    Wait Until Page Contains Element    ${avisoAmarillo}

Cerrar avisos 1
    Wait Until Element Is Visible    ${close1}
    Click Element    ${close1} 
Cerrar avisos 2
    Wait Until Element Is Visible    ${close2}
    Click Element    ${close2} 
Cerrar avisos 3
    Wait Until Element Is Visible    ${close3}
    Click Element    ${close3} 

#botones
Seleccionar boton Eliminar
    Wait Until Element Is Visible    ${Eliminar}
    Click Element    ${Eliminar}

Mostrar reporte
    Sleep    5s         
    Click Element    ${Tipo_cuadrilla1}
    Wait Until Element Is Visible    ${Tipo_cuadrillainput}
    Click Element    ${Tipo_cuadrillainput}
    Wait Until Element Is Visible    ${Tipo_cuadrillainput}
    Input Text    ${Tipo_cuadrillainput}    ${inputIMG}
    Sleep    5s
    Click Element     ${selectinputIMG}
    Sleep    5s
    Click Element   ${Cuadrilla} 
    Sleep    5S
    Click Element    ${Cuadrilla_input}
    Input Text   ${Cuadrilla_input}    ${input157}
    Sleep    5s    
    Click Element    ${Selectinput157}
    Sleep    5s
    Click Element    ${Calendario} 
    #Wait Until Element Is Visible    ${back}
    #Click Element   ${back}
    Sleep    5s
    Click Element    ${Fecha}
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}


Buscar si no hay datos
    Wait Until Element Is Visible    ${consulta}
    Click Element   ${consulta}

Icono imprimir
    Sleep    5s
    ${Banderaiconoimprimir}=  Run Keyword And Return Status    Click Element    ${Imprimir}
    WHILE    '${Banderaiconoimprimir}' == 'False'
        Mostrar reporte
        Cerrar avisos 1
        Icono imprimir
    END

Cerrar notificacion verde
    Wait Until Element Is Visible    ${Notificacionverde}
    Click Element    ${Cerrar_notificacion_verde}

Icono eliminar
    Sleep    7s    
    ${Banderaiconoeliminar}=  Run Keyword And Return Status    Click Element    ${Eliminar}
    WHILE    '${Banderaiconoeliminar}' == 'False'
        Mostrar reporte
        Cerrar avisos 1
        Icono imprimir
        Icono eliminar
    END
    IF    '${Banderaiconoeliminar}' == 'True'
        Cerrar notificacion verde
    END

Consultar por cuadrilla
    Sleep    5s
    Click Element    ${consulta}
    Wait Until Element Is Visible    ${Tipos_cuadrillas}
    Click Element    ${Tipos_cuadrillas}
    Wait Until Element Is Visible    ${TipocuadrillaA} 
    Click Element    ${TipocuadrillaA}
    Wait Until Element Is Visible    ${Cuadrillas}
    Click Element    ${Cuadrillas}
    Wait Until Element Is Visible    ${Cuadrilla0001}
    Click Element    ${Cuadrilla0001}
    Sleep    5s
    Click Element    ${Botonaceptar}

Consultar por folio
    Sleep    7s
    Click Element    ${Iconoporfolio}
    Sleep    5s
    #Wait Until Element Is Visible    ${Inputtextfolio}
    Input Text    ${Inputtextfolio}    ${Folio}
    Sleep    5s
    Click Element    ${Botonaceptar}

Grid auxiliar
    Sleep    5s
    Click Element    ${Gridauxiliar}
    Sleep    5s
    Click Element    ${Griddevoluciones}
    Sleep    5s
    Click Element    ${Gridrequerimiento}
    Sleep    5s
    Click Element    ${Gridconsumos}

Boton limpiar
    Sleep    5s 
    Click Element    ${Botonlimpiar}

Boton cancelar
    Sleep    5s
    Click Element    ${Botoncancelar}