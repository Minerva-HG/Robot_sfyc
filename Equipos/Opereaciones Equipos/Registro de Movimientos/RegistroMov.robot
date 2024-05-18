*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows

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
${Bottonregistrodemovimientos}    xpath=//span[contains(.,'Registro de Movimientos')]
${Cajadetextoserie}    xpath=(//input[@autocomplete='off'])[2]
${Serie}    0008B92BE198                       
${Iconobuscar}    xpath=//i[contains(@class,'dx-icon dx-icon-search')]
${Serieinvalida}    06H7GR2V1997    
${Closenotificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Pestañaubicaciones}    xpath=//span[@class='dx-tab-text'][contains(.,'Ubicaciones')]
${Iconoagregar}    xpath=(//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')])[1]
${Desplegarubicaciones}    xpath=(//div[@class='dx-dropdowneditor-icon'])[3]
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
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla registro de movimientos
    Seleccionar menu
    Seleccionar operaciones equipos
    Seleccionar registro de movimientos

#Buscar equipo
    #Ingresando serie ha buscar
    #Buscar serie

Serie invalida
    #Ingresando serie que no existe
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
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}
    Click Element If Visible   name:button

Seleccionar menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Seleccionar operaciones equipos
    Click element  ${Bottonoperacionesequipos}

Seleccionar registro de movimientos
    Click Element When Visible    ${Bottonregistrodemovimientos}

Ingresando serie ha buscar
    Sleep    10s
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serie}

Buscar serie
    Click Element When Visible    ${Iconobuscar}

Ingresando serie que no existe
    Clear Element Text    ${Cajadetextoserie}
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serieinvalida}

Cerrar notificacion
    Sleep    5s
    Click Element When Visible    ${Closenotificacion}

Ubicaciones
    Click Element When Visible    ${Pestañaubicaciones}

Icono agregar
    Sleep    5s
    Click Element When Visible    ${Iconoagregar}

Ubicacion
    Click Element When Visible    ${Desplegarubicaciones}
    Click Element When Visible    ${Ubicacion}

Guardar
    Click Element When Visible    ${Iconoguardar}

Cerrar notificacion proceso terminado con exito
    Sleep    5s
    Click Element When Visible    ${Notificacionprocesoterminadoconexito}

Ingresando serie tipo 4
    Sleep    5s
    Click Element When Visible    ${Cajadetextoserie}
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serietipo4}

Grid bitacora
    Click Element When Visible    ${Gridbitacora}

Boton movimientos
    Sleep    5s
    Click Element When Visible    ${Botonmovimientos}

Boton cancelar
    Click Element When Visible    ${Botoncancelar}

Ingresando serie con ubicacion cli
    Click Element When Visible    ${Cajadetextoserie}
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serieconubicacioncli}

Cerrar notificacion cancele antes el contrato
    Sleep    5s
    Click Element When Visible    ${Notificacioncanceleanteselcontrato}

Sucursal puebla
    Click Element When Visible    ${Sucursales}
    Sleep    5s
    Input Text When Element Is Visible    ${Campoidentificador}    ${Numerosucursalpuebla}
    Click Element When Visible    ${Sucursalpuebla}

Cerrar notificacion no existe el equipo
    Sleep    5s    
    Click Element When Visible    ${Notificacionnoexisteelequipo}

Ingresando serie sin mac adress
    Sleep    5s
    Click Element When Visible    ${Cajadetextoseriesucursalpuebla}
    Input Text When Element Is Visible    ${Cajadetextoseriesucursalpuebla}    ${Seriesinmacadress}

Ubicacion CIS 11 SUR
    Click Element When Visible    ${Desplegarubicaciones}
    Click Element When Visible    ${Ubicacioncis11sur}

Cerrar notificacion el equipo no cuenta con mac
    Sleep    5s
    Click Element When Visible    ${Notificacionelequiponocuentaconmac}

Ubicacion CNR
    Click Element When Visible    ${Desplegarubicaciones}
    Sleep    4s
    Input Text When Element Is Visible    ${Cajadetextodescripcion}    ${Textocnr}
    
Cerrando sesion
    Sleep    5s
    Click Element When Visible    ${Iconocerrarsesion}
    Click Element When Visible    ${Cerrandosesion}

Ingresando usuario tipo 39
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuariotipo39}
    Input Text When Element Is Visible    name:Password   ${Passtipo39}
    Click Element If Visible   name:button

Guardando nueva ubicacion cnr
    Click Element When Visible    ${Ubicacioncnr}
    Click Element When Visible    ${Desplegarmotivosbajas}
    Click Element When Visible    ${Baja}
    Click Element When Visible    ${Iconoguardar}

Ingresando serie que tiene mas de 8 años registrado
    Sleep    5s
    Click Element When Visible    ${Cajadetextoserie}    
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serieconmasde8años}

Ingresando serie tipo equipo 4 que no pueda migrar
    Sleep    5s
    Click Element When Visible    ${Cajadetextoserie}    
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serietipoequipo4}

Ingresando serie tipo equipo 19
    Sleep    5s
    Click Element When Visible    ${Cajadetextoserie}    
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serietipoequipo19}

Ubicacion laboratorio
    Click Element When Visible    ${Desplegarubicaciones}
    Sleep    5s
    Input Text When Element Is Visible    ${Cajadetextodescripcion}    ${Textolaboratorio}

Grid estados
    Sleep    5s
    Click Element When Visible    ${Desplegarubicaciones}
    Click Element When Visible    ${Gridestados}

Agregando estado
    Click Element When Visible    ${Desplegarestados}
    Click Element When Visible    ${Estado}

Grid ubicaciones
    Click Element When Visible    ${Gridubicaciones}

Boton enviar
    Click Element When Visible    ${Botonenviar}

Icono quemar
    Click Element When Visible    ${Iconoquemar}

Ingresando serie tipo equipo 4 con ubicacion ALM
    Sleep    5s
    Click Element When Visible    ${Cajadetextoserie}    
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serietipo4ubialm}

Ingresando serie con modelo DIR-600
    Clear Element Text    ${Cajadetextoserie}
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serieconmodelodir-600}

Ubicacion Cua o CIS
    Click Element When Visible    ${Desplegarubicaciones}
    Input Text When Element Is Visible    ${Cajadetextodescripcion}    ${Textocis}
    Sleep    5s
    Input Text When Element Is Visible    ${Cajadetextodescripcion}    ${Textocua}
    
Ingresando serie con ubicacion obsoleta
    Sleep    5s
    Click Element When Visible    ${Cajadetextoserie}    
    Input Text When Element Is Visible    ${Cajadetextoserie}    ${Serieconubicacionobsoleta}

Cerrar combo ubicaciones
    Sleep    5s
    Click Element When Visible    ${Desplegarubicaciones}
