*** Settings ***
Documentation    Identificacion de flujo de equipos    
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    SeleniumLibrary

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #VMAGALLANESI    DGONZALEZR    LUHERNANDEZHE    RCAMINOS    joriospe                                                                                  
@{passL}=    Create List    Mega12345    #Megacable2023    Megacable.2023    Mega2023    metro1234    Mega12345                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#################Pantalla Identificacion de flujo de equipos########################   
${Botonadministraciondeanis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[9]
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${BotonIdentificaciondeflujoequipos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[8]
#################Campo tipo de equipos, Campo tipo equipo vacio########################    
${Tiposdeequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Tipoequipovacio}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
#################Ingresando serie########################
${Campoagregarserie}    xpath=//input[@maxlength='35']
${274351357}    274351357
${Serietipo2}    4857544308F92EAA                   
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
#########################Checkbox daño fisico############################################
${Checkbox_daño_fisico}    xpath=//span[contains(@class,'dx-checkbox-icon')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios
    Sleep    30s

Campo Tipo Equipo
    Drop equipo

Campo Tipo Equipo vacio
    Campo tipo equipo vacio

Ingresar Serie
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

Tipo de equipo sin MAC ADDRESS
    Sucursal
    Drop equipo
    Serie sin mac adress
    Cerrar notificacion

Ubicacion CLI
    Serie con ubicacion CLI
    Cerrar notificacion

Equipos en Garantía
    Tipo equipo 04
    Serie con garantia  
    Cerrar notificacion

Equipos en la lista de reparacion
    Serie en ubicacion reparacion
    Cerrar notificacion

Equipos en obsoleto
    Drop equipo
    Serie con modelo obsoleto
    Cerrar notificacion

Check daño fisico
    Checkbox daño fisico
    Serie
    Cerrar notificacion

Reingresar serie a OBS
    Checkbox daño fisico
    Serie
    Cerrar notificacion

Botón cancelar
    Cancelar

*** Keyword ***
Validacion de usuarios
      #FOR    ${counter}    IN RANGE    1     9 
    FOR    ${counter}    IN RANGE    1     2
        Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")    
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text    name:Password     ${passL}[${counter}]
        Wait Until Element Is Visible    ${Botondominio}
        Click Element    ${Botondominio}
        Wait Until Element Is Visible    ${SFyC}
        Click Element    ${SFyC}
        Wait Until Element Is Visible    name:button
        Click Element    name:button
        Sleep    10s
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botonoperacionesequipos}
        Click Element    ${Botonoperacionesequipos}
        Sleep    5s
        Scroll Element Into View    ${Botonadministraciondeanis}
        Wait Until Element Is Visible    ${BotonIdentificaciondeflujoequipos}
        Click Element    ${BotonIdentificaciondeflujoequipos} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END
    
Drop equipo
    Wait Until Element Is Visible    ${Tiposdeequipos}    
    Click Element    ${Tiposdeequipos}
    #Execute Javascript    window.scrollTo(0,1000)
    #Sleep    15s 
    Wait Until Element Is Visible    ${Equipo}       
    Click Element    ${Equipo}

Campo tipo equipo vacio
    Sleep    5s
    Click Element    ${Tipoequipovacio}

Serie 274351357
    Wait Until Element Is Visible    ${Campoagregarserie}
    Click Element    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${274351357}
    Press Keys    ${Campoagregarserie}    ENTER

Serie
    Wait Until Element Is Visible    ${Campoagregarserie}
    Click Element    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${Serietipo2}
    Press Keys    ${Campoagregarserie}    ENTER

Cerrar notificacion
    #Wait Until Page Contains    ${Notificacion}
    Sleep    10s
    Click Element  ${Notificacion}

Limpiar
    Wait Until Element Is Visible    ${Botonlimpiar}
    Click Element    ${Botonlimpiar}

Caracteres no validos
    Wait Until Element Is Visible    ${Campoagregarserie}
    Click Element    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${Caracteresnovalidos}
    Press Keys    ${Campoagregarserie}    ENTER

Serie no existente
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${Serienoexistente}
    Press Keys    ${Campoagregarserie}    ENTER

Serie de otra sucursal
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${Seriedeotrasucursal}
    Press Keys    ${Campoagregarserie}    ENTER

Sucursal 
    Sleep    5s
    Wait Until Element Is Visible    ${Desplegarsucursales}
    Click Element    ${Desplegarsucursales}
    Sleep    5s
    Click Element    ${Campodetextoid}
    Wait Until Element Is Visible    ${Campodetextoid}
    Input Text    ${Campodetextoid}    ${Sucursal27}
    Wait Until Element Is Visible    ${Sucursalpuebla}
    Click Element    ${Sucursalpuebla}

Serie sin mac adress
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${Seriesinmacadress}
    Press Keys    ${Campoagregarserie}    ENTER

Serie con ubicacion CLI
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Click Element    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${SerieconubicacionCLI}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Press Keys    ${Campoagregarserie}    ENTER

Serie con garantia
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Click Element    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${SerieconGAR}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Press Keys    ${Campoagregarserie}    ENTER

Tipo equipo 04
    Wait Until Element Is Visible    ${Tiposdeequipos}
    Click Element    ${Tiposdeequipos}
    Wait Until Element Is Visible    ${Tipoequipo4}  
    Click Element    ${Tipoequipo4}

Serie en ubicacion reparacion
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Click Element    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${SerieREP}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Press Keys    ${Campoagregarserie}    ENTER

Serie con modelo obsoleto
    Sleep    5s
    Clear Element Text    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}    
    Click Element    ${Campoagregarserie}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Input Text    ${Campoagregarserie}    ${SerieOBS}
    Wait Until Element Is Visible    ${Campoagregarserie}
    Press Keys    ${Campoagregarserie}    ENTER

Cancelar
    Wait Until Element Is Visible    ${Botoncancelar}
    Click Element    ${Botoncancelar}

Checkbox daño fisico
    Wait Until Element Is Visible    ${Checkbox_daño_fisico}
    Click Element    ${Checkbox_daño_fisico}
