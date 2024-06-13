*** Settings ***
Documentation    Opciones de Click
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    SeleniumLibrary
Library    XML
Library    RPA.Windows

*** Variables ***
##########################Pantalla registro de movimientos####################################################################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.dev-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui 
${Usuario}  softteck01                                          
${Pass}  123456c                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
#########################################################################################################################################################################################
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/div[1]
${Bottonregistrodemovimientos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[3]/div/div/span
${Cajadetextoserie}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Serie}    0008B92BE198                       
${Iconobuscar}    xpath=//i[contains(@class,'dx-icon dx-icon-search')]
${Serieinvalida}    06H7GR2V1997    
${Closenotificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Pestañaubicaciones}    xpath=//span[@class='dx-tab-text'][contains(.,'Ubicaciones')]
${Iconoagregar}    xpath=(//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')])[1]
${Desplegarubicaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-register-movements-equipment-container/div/div[3]/dx-tab-panel/div[2]/div/div/div[2]/div/div/app-mov-location-equipment-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[2]/div/div/app-location-equipment-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Ubicacion}    xpath=//td[normalize-space()='INGRESOS AUD ALT/CAM']
${Iconoguardar}    xpath=//a[contains(@class,'dx-link dx-link-save dx-icon-save dx-link-icon')]
${Notificacionprocesoterminadoconexito}    xpath=//body/div/div/div/div/div[3]/div/div/div/div/i
${Serietipo4}    125001820                          
${Gridbitacora}    xpath=//span[@class='dx-tab-text'][contains(.,'Bitácora')]
${Botonmovimientos}    xpath=//span[@class='dx-button-text'][contains(.,'Movimientos')]
${Botoncancelar}    xpath=//span[@class='dx-button-text'][contains(.,'Cancelar')]
${Serieconubicacioncli}    605027972    
${Notificacioncanceleanteselcontrato}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Sucursales}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[1]
${Campoidentificador}    xpath=//input[contains(@min,'0')]
${Numerosucursalpuebla}    27
${Sucursalpuebla}    xpath=//td[contains(.,'Puebla')]
${Notificacionnoexisteelequipo}    xpath=(//i[@class='dx-icon dx-icon-close'])[2]
${Seriesinmacadress}    00159A39EC68
${Cajadetextoseriesucursalpuebla}    xpath=(//input[@autocomplete='off'])[4]
${Ubicacioncis11sur}    xpath=//td[contains(.,'CIS 11 SUR')]
${Notificacionelequiponocuentaconmac}    xpath=(//i[@class='dx-icon dx-icon-close'])[2]
${Cajadetextodescripcion}    xpath=//input[contains(@maxlength,'7094')]
${Textocnr}    CONTRATO NO RECUPERA
${Iconocerrarsesion}    xpath=//i[contains(@class,'dx-icon dx-icon-chevrondown')]
${Cerrandosesion}    xpath=//div[@class='a2'][contains(.,'Cerrar sesión')]
${Usuariotipo39}    CORTIZV
${Passtipo39}    Omega.2019
${Ubicacioncnr}    xpath=//td[@aria-describedby='dx-col-18'][contains(.,'CONTRATO NO RECUPERA')]
${Iconoguardarubicacioncnr}    xpath=//a[contains(@class,'dx-link dx-link-save dx-icon-save dx-link-icon')]
${Desplegarmotivosbajas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Baja}    xpath=//td[@aria-describedby='dx-col-20'][contains(.,'Irrecuperable')]
${Serieconmasde8años}    930465210763
${Serietipoequipo4}    167178859
${Serietipoequipo19}    8952050900000047609F
${Textolaboratorio}    Laboratorio
${Gridestados}    xpath=//span[contains(.,'Estados')]    
${Iconoagregarestado}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Desplegarestados}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3] 
${Estado}    xpath=//td[contains(.,'ENVIADOS DE SISTEMAS')]
${Gridubicaciones}    xpath=//span[contains(.,'Ubicaciones')]
${Botonenviar}    xpath=//span[contains(.,'Enviar')]
${Iconoquemar}    xpath=//div[@class='dx-radiobutton-icon']
${Serietipo4ubialm}    167198403
${Serieconmodelodir-600}    PV6A3B4025781
${Textocua}    CUADRILLA    
${Textocis}    CIS
${Serieconubicacionobsoleta}    0001AAF014CD    


*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla registro de movimientos
    Seleccionar menu
    Seleccionar operaciones equipos
    Seleccionar registro de movimientos

Buscar equipo
    Ingresando serie ha buscar
    Buscar serie

Serie invalida
    Ingresando serie que no existe
    Buscar serie 
    Cerrar notificacion
    
Pestaña ubicaciones
    Ingresando serie ha buscar
    Buscar serie
    Ubicaciones

Agregar nueva ubicacion
    Icono agregar
    Ubicacion
    Guardar
    Cerrar notificacion proceso terminado con exito

Agregar ubicacion tipo 4
    Ingresando serie tipo 4
    Buscar serie
    Grid bitacora
    Boton movimientos
    Boton cancelar

Ubicacion Cli
    Ingresando serie con ubicacion cli
    Buscar serie
    Ubicaciones
    Icono agregar
    Ubicacion
    Guardar

Sin MAC
    Cerrar notificacion cancele antes el contrato
    Sucursal puebla
    Cerrar notificacion no existe el equipo
    Ingresando serie sin mac adress
    Buscar serie
    Ubicaciones
    Icono agregar
    Ubicacion CIS 11 SUR
    Guardar

Ubicacion es CNR
    Cerrar notificacion el equipo no cuenta con mac
    Icono agregar
    Ubicacion CNR
    Cerrando sesion
    Close All Browsers
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresando usuario tipo 39
    Seleccionar menu
    Seleccionar operaciones equipos
    Seleccionar registro de movimientos
    Ingresando serie ha buscar
    Buscar serie
    Ubicaciones
    Icono agregar
    Ubicacion CNR
    Guardando nueva ubicacion cnr
    Cerrar notificacion

Equipos cable modems o Acces point
    Ingresando serie que tiene mas de 8 años registrado
    Buscar serie
    Icono agregar
    Ubicacion
    Guardar

Ubicación modelo PDS2140 
    Cerrar notificacion
    Ingresando serie tipo equipo 4 que no pueda migrar
    Buscar serie
    Icono agregar
    Ubicacion
    Guardar

Validacion de tipos de equipos 19
    Cerrar notificacion
    Ingresando serie tipo equipo 19
    Buscar serie
    Icono agregar
    Ubicacion laboratorio

Grid estado
    Grid estados

Agregar estado
    Ingresando serie tipo 4
    Buscar serie
    Icono agregar
    Agregando estado
    Guardar
    Cerrar notificacion

Equipos tipo 4 bitacora
    Grid bitacora

Ubicacion, movimiento y bitacora
    Ingresando serie tipo equipo 4 con ubicacion ALM
    Buscar serie
    Grid ubicaciones
    Icono agregar
    Ubicacion
    Guardar
    Cerrar notificacion
    Boton movimientos
    Boton enviar
    Cerrar notificacion
    Boton movimientos
    Icono quemar
    Boton enviar
    Cerrar notificacion
    Grid bitacora
    
Bloqueo a modelos
    Ingresando serie con modelo DIR-600
    Buscar serie
    Grid ubicaciones
    Icono agregar
    Ubicacion Cua o CIS

Validar la obsolencia
    Cerrar combo ubicaciones
    Ingresando serie con ubicacion obsoleta
    Buscar serie
    Grid ubicaciones
    Icono agregar
    Ubicacion
    Guardar
    Cerrar notificacion

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element    ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC}
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text    name:Username   ${Usuario}
    Input Text    name:Password   ${Pass}
    Click Element    name:button

Seleccionar menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Seleccionar operaciones equipos
    Wait Until Element Is Visible    ${Bottonoperacionesequipos}
    Click Element  ${Bottonoperacionesequipos}

Seleccionar registro de movimientos
    Wait Until Element Is Visible    ${Bottonregistrodemovimientos}
    Click Element    ${Bottonregistrodemovimientos}

Ingresando serie ha buscar
    Sleep    10s
    Input Text    ${Cajadetextoserie}    ${Serie}

Buscar serie
    Wait Until Element Is Visible    ${Iconobuscar}
    Click Element    ${Iconobuscar}

Ingresando serie que no existe
    Clear Element Text    ${Cajadetextoserie}
    Sleep    5s
    Input Text    ${Cajadetextoserie}    ${Serieinvalida}

Cerrar notificacion
    Sleep    5s
    Click Element    ${Closenotificacion}

Ubicaciones
    Wait Until Element Is Visible    ${Pestañaubicaciones}
    Click Element    ${Pestañaubicaciones}

Icono agregar
    Sleep    5s
    Click Element    ${Iconoagregar}

Ubicacion
    Wait Until Element Is Visible    ${Desplegarubicaciones}
    Click Element    ${Desplegarubicaciones}
    Wait Until Element Is Visible    ${Ubicacion}    
    Click Element    ${Ubicacion}

Guardar
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Cerrar notificacion proceso terminado con exito
    Sleep    5s
    Click Element    ${Notificacionprocesoterminadoconexito}

Ingresando serie tipo 4
    Sleep    5s
    Click Element    ${Cajadetextoserie}
    Sleep    5s
    Input Text    ${Cajadetextoserie}    ${Serietipo4}

Grid bitacora
    Wait Until Element Is Visible    ${Gridbitacora}
    Click Element    ${Gridbitacora}

Boton movimientos
    Sleep    5s
    Click Element    ${Botonmovimientos}

Boton cancelar
    Wait Until Element Is Visible    ${Botoncancelar}
    Click Element    ${Botoncancelar}

Ingresando serie con ubicacion cli
    Wait Until Element Is Visible    ${Cajadetextoserie}
    Click Element    ${Cajadetextoserie}
    Sleep    5s
    Input Text    ${Cajadetextoserie}    ${Serieconubicacioncli}

Cerrar notificacion cancele antes el contrato
    Sleep    5s
    Click Element    ${Notificacioncanceleanteselcontrato}

Sucursal puebla
    Wait Until Element Is Visible    ${Sucursales}
    Click Element    ${Sucursales}
    Sleep    5s
    Input Text    ${Campoidentificador}    ${Numerosucursalpuebla}
    Wait Until Element Is Visible    ${Sucursalpuebla}
    Click Element    ${Sucursalpuebla}

Cerrar notificacion no existe el equipo
    Sleep    5s    
    Click Element    ${Notificacionnoexisteelequipo}

Ingresando serie sin mac adress
    Sleep    5s
    Click Element    ${Cajadetextoseriesucursalpuebla}
    Sleep    5s
    Input Text    ${Cajadetextoseriesucursalpuebla}    ${Seriesinmacadress}

Ubicacion CIS 11 SUR
    Wait Until Element Is Visible    ${Desplegarubicaciones}
    Click Element    ${Desplegarubicaciones}
    Wait Until Element Is Visible    ${Ubicacioncis11sur}
    Click Element    ${Ubicacioncis11sur}

Cerrar notificacion el equipo no cuenta con mac
    Sleep    5s
    Click Element    ${Notificacionelequiponocuentaconmac}

Ubicacion CNR
    Wait Until Element Is Visible    ${Desplegarubicaciones}
    Click Element    ${Desplegarubicaciones}
    Sleep    4s
    Input Text    ${Cajadetextodescripcion}    ${Textocnr}
    
Cerrando sesion
    Sleep    5s
    Click Element    ${Iconocerrarsesion}
    Wait Until Element Is Visible    ${Cerrandosesion}
    Click Element    ${Cerrandosesion}

Ingresando usuario tipo 39
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element    ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC}
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text    name:Username   ${Usuariotipo39}
    Input Text    name:Password   ${Passtipo39}
    Click Element    name:button

Guardando nueva ubicacion cnr
    Wait Until Element Is Visible    ${Ubicacioncnr}
    Click Element    ${Ubicacioncnr}
    Wait Until Element Is Visible    ${Desplegarmotivosbajas}
    Click Element    ${Desplegarmotivosbajas}
    Wait Until Element Is Visible    ${Baja}
    Click Element    ${Baja}
    Wait Until Element Is Visible    ${Iconoguardar}    
    Click Element    ${Iconoguardar}

Ingresando serie que tiene mas de 8 años registrado
    Sleep    5s
    Click Element    ${Cajadetextoserie}    
    Input Text    ${Cajadetextoserie}    ${Serieconmasde8años}

Ingresando serie tipo equipo 4 que no pueda migrar
    Sleep    5s
    Click Element    ${Cajadetextoserie}    
    Input Text    ${Cajadetextoserie}    ${Serietipoequipo4}

Ingresando serie tipo equipo 19
    Sleep    5s
    Click Element    ${Cajadetextoserie}    
    Input Text    ${Cajadetextoserie}    ${Serietipoequipo19}

Ubicacion laboratorio
    Wait Until Element Is Visible    ${Desplegarubicaciones}
    Click Element    ${Desplegarubicaciones}
    Sleep    5s
    Input Text    ${Cajadetextodescripcion}    ${Textolaboratorio}

Grid estados
    Sleep    5s
    Click Element    ${Desplegarubicaciones}
    Wait Until Element Is Visible    ${Gridestados}    
    Click Element    ${Gridestados}

Agregando estado
    Wait Until Element Is Visible    ${Desplegarestados}
    Click Element    ${Desplegarestados}
    Wait Until Element Is Visible    ${Estado}
    Click Element    ${Estado}

Grid ubicaciones
    Wait Until Element Is Visible    ${Gridubicaciones}
    Click Element    ${Gridubicaciones}

Boton enviar
    Wait Until Element Is Visible    ${Botonenviar}
    Click Element    ${Botonenviar}

Icono quemar
    Wait Until Element Is Visible    ${Iconoquemar}
    Click Element    ${Iconoquemar}

Ingresando serie tipo equipo 4 con ubicacion ALM
    Sleep    5s
    Click Element    ${Cajadetextoserie}    
    Input Text    ${Cajadetextoserie}    ${Serietipo4ubialm}

Ingresando serie con modelo DIR-600
    Clear Element Text    ${Cajadetextoserie}
    Sleep    5s
    Input Text    ${Cajadetextoserie}    ${Serieconmodelodir-600}

Ubicacion Cua o CIS
    Wait Until Element Is Visible    ${Desplegarubicaciones}
    Click Element    ${Desplegarubicaciones}
    Sleep    5s
    Input Text    ${Cajadetextodescripcion}    ${Textocis}
    Sleep    5s
    Input Text    ${Cajadetextodescripcion}    ${Textocua}
    
Ingresando serie con ubicacion obsoleta
    Sleep    5s
    Click Element   ${Cajadetextoserie}
    Sleep    5s    
    Input Text    ${Cajadetextoserie}    ${Serieconubicacionobsoleta}

Cerrar combo ubicaciones
    Sleep    5s
    Click Element    ${Desplegarubicaciones}
