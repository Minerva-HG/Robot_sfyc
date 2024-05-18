*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
#Library    RPA.Robocloud.Items
Library    RPA.Excel.Files
Library    RPA.Dialogs

*** Variables ***
#################Pantalla Identificacion de flujo de equipos########################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${BottonIdentificaciondeflujoequipos}    xpath=//span[contains(.,'Identificación de Flujo')]
#################Campo tipo de equipos, Campo tipo equipo vacio########################    
${Tiposdeequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Tipoequipovacio}    xpath=//span[@class='dx-icon dx-icon-clear']
#################Ingresando serie########################
${Campoagregarserie}    xpath=//input[@maxlength='35']
${274351357}    274351357
################Notificaciones##########################################
${Notificacion}    xpath=//div[3]/div/div/div/div/i                    
###################Boton limpiar#####################################
${Botonlimpiar}    xpath=//span[contains(.,'Limpiar')]
#################Caracteres no validos###############################
${Caracteresnovalidos}    $%&/""@
#################Series que no existen###############################
${Serienoexistente}    10011109D1997
###################Series de otra sucursal#############################
${Seriedeotrasucursal}    33BP102061039F4    
###################Tipo de equipo sin mac adress##########################
${Desplegarsucursales}    xpath=(//div[@class='dx-dropdowneditor-icon'])[1]
${Campodetextoid}    xpath=//input[contains(@max,'32767')] 
${Sucursal27}    27
${Sucursalpuebla}    xpath=//td[contains(.,'Puebla')]
${Seriesinmacadress}    00159A39EC68    
########################Ubicacion CLI#####################################
${SerieconubicacionCLI}    00909549300011   
########################Serie con garantia################################
${Tipoequipo4}    xpath=(//td[contains(.,'SET TOPS')])[1]
${SerieconGAR}    Z47021060553977    
#######################Serie ubicacion reparacion#####################################
${SerieREP}    CTBBBBRKS 
#########################Serie con modelo obsoleto###############################
${SerieOBS}    00320233300754   
#########################Boton cancelar#########################################
${Botoncancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla Identificacion de flujo equipos
    Menu
    Operaciones equipos
    Identificacion de flujo equipos

Campo tipo de equipos
    Drop equipo

Campo tipo equipo vacio
    Campo tipo equipo vacio

Ingresar serie
    Drop equipo
    Serie 274351357
    
Boton limpiar
    Cerrar notificacion    
    Limpiar

Campo serie caracteres no validos
    Drop equipo
    Caracteres no validos

Serie no existente
    Serie no existente 
    Cerrar notificacion

Serie de otra sucursal
    Serie de otra sucursal
    Cerrar notificacion

Tipo de equipo sin mac adress
    Sucursal 27
    Drop equipo
    Serie sin mac adress
    Cerrar notificacion

Ubicacion CLI
    Serie con ubicacion CLI
    Cerrar notificacion

Equipos en garantia
    Tipo equipo 04
    Serie con garantia  
    Cerrar notificacion

Equipos en ubicacion reparacion
    Serie en ubicacion reparacion
    Cerrar notificacion

Equipo modelo obsoleto
    Drop equipo
    Serie con modelo obsoleto
    Cerrar notificacion

Boton cancelar
    Cancelar

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

Identificacion de flujo equipos
    Click Element When Visible    ${BottonIdentificaciondeflujoequipos}

Drop equipo
    Click Element When Visible    ${Tiposdeequipos}
    #Execute Javascript    window.scrollTo(0,1000)
    Sleep    15s    
    Click Element When Visible    ${Equipo}

Campo tipo equipo vacio
    Click Element When Visible    ${Tipoequipovacio}

Serie 274351357
    Click Element When Visible    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${274351357}
    Press Keys    ${Campoagregarserie}    ENTER

Cerrar notificacion
    #Wait Until Page Contains    ${Notificacion}
    Sleep    10s
    Click Element  ${Notificacion}

Limpiar
    Click Element When Visible    ${Botonlimpiar}

Caracteres no validos
    Click Element When Visible    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${Caracteresnovalidos}
    Press Keys    ${Campoagregarserie}    ENTER

Serie no existente
    Clear Element Text    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${Serienoexistente}
    Press Keys    ${Campoagregarserie}    ENTER

Serie de otra sucursal
    Clear Element Text    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${Seriedeotrasucursal}
    Press Keys    ${Campoagregarserie}    ENTER

Sucursal 27
    Click Element When Visible    ${Desplegarsucursales}
    Sleep    5s
    Click Element When Visible    ${Campodetextoid}
    Input Text When Element Is Visible    ${Campodetextoid}    ${Sucursal27}
    Click Element When Visible    ${Sucursalpuebla}

Serie sin mac adress
    Clear Element Text    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${Seriesinmacadress}
    Press Keys    ${Campoagregarserie}    ENTER

Serie con ubicacion CLI
    Clear Element Text    ${Campoagregarserie}
    Click Element When Visible    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${SerieconubicacionCLI}
    Press Keys    ${Campoagregarserie}    ENTER

Serie con garantia
    Clear Element Text    ${Campoagregarserie}
    Click Element When Visible    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${SerieconGAR}
    Press Keys    ${Campoagregarserie}    ENTER

Tipo equipo 04
    Click Element When Visible    ${Tiposdeequipos}  
    Click Element When Visible    ${Tipoequipo4}

Serie en ubicacion reparacion
    Clear Element Text    ${Campoagregarserie}
    Click Element When Visible    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${SerieREP}
    Press Keys    ${Campoagregarserie}    ENTER

Serie con modelo obsoleto
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Click Element When Visible    ${Campoagregarserie}
    Input Text When Element Is Visible    ${Campoagregarserie}    ${SerieOBS}
    Press Keys    ${Campoagregarserie}    ENTER

Cancelar
    Click Element When Visible    ${Botoncancelar}