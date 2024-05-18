*** Settings ***
Documentation    Carga de imagenes
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
#Library    RPA.Robocloud.Items
Library    RPA.Excel.Files
Library    RPA.Dialogs
#Library    SeleniumLibrary

*** Variables ***
${Verificararchivo}    xpath=//*[@id="fileuploader-container"]/dx-file-uploader/div/div/div/div[2]/div/div/div[1]/div[1]
${Archivoacargar}    C://Proyectos//Robot_sfyc//Inventarios//Operaciones Equipos//Cambio masivo de ubicacion//Pruebass.xlsx 
${CSV_FILE}    C:/Proyectos/Robot_sfyc/Inventarios/Operaciones Equipos/Cambio masivo de ubicacion/Pruebass.xlsx    
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottoncambiomasivodeubicacion}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Cambio Masivo de Ubicación')]
${Tiposdeequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Equipo}    xpath=//td[contains(.,'SET TOPS')]
${Checkboxtodos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Modelos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Ubicacionesorigen}    xpath=(//div[@class='dx-dropdowneditor-icon'])[4]
${Ubicacionesdestino}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Ubicaciondestino}    xpath=//td[contains(.,'CUADRILLA')]
${Buscarcuadrillapornombre}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[5]/div/table/tbody/tr[2]/td[1]/div/div[2]/div/div/div[1]/input
${Textocua}    CUA
${Tiposcuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Cuadrillas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Checkboxcambiodeestado}    xpath=(//span[@class='dx-checkbox-icon'])[2]
${Estadosorigen}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Estadosdestino}    xpath=(//div[@class='dx-dropdowneditor-icon'])[9]
${Botonlimpiar}    xpath=(//div[@class='dx-button-content'][contains(.,'Limpiar')])[2]
${Buscarmodelo}    xpath=//*[@id="dx-c2c2be23-b1f4-2859-a94d-0955599a02b8"]/div/dx-data-grid/div/div[5]/div/table/tbody/tr[2]/td/div/div[2]/div/div/div[1]/input
${Modelogenerax}    PDS2140    
${Modelo}    xpath=//td[contains(.,'PDS2140')]
${Almacen}    ALM
${Ubicacionorigen}    xpath=//td[contains(.,'ALMACEN')]
${Ubicaciondestino}    xpath=//td[contains(.,'PRE UBI OBLATOS')]
${Tipocuadrilla}    xpath=(//td[contains(@aria-describedby,'dx-col-9')])[2]
${Cuadrilla}    xpath=//td[contains(.,'0002')]
${Estadoorigen}    OK
${EstadoOK}    xpath=(//td[@aria-describedby='dx-col-11'][contains(.,'OK')])[2]
${CuadrillaDÑA}    xpath=//td[contains(.,'DAÑADOS')]
${Botonseleccionarelarchivo}    xpath=//span[contains(.,'Seleccionar el archivo')]
${Botonaceptar}    xpath=(//span[@class='dx-button-text'])[3]
${Notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Transacciones}    xpath=//span[contains(.,'Transacciones')]
${Regresarmenu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Iconomostrarpendientes}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Transaccion}    xpath=//td[contains(.,'Cambio masivo de ubicación')]
${Ejecutar}    xpath=//span[contains(.,'Ejecutar')]
${Bottonenviar}    xpath=//span[contains(.,'Enviar')]
${NotificacionFinalizoproceso}    xpath=//i[@class='dx-icon dx-icon-close']
${Bajas}    BAJ
${Ubicaciondestinobajas}    xpath=//td[contains(.,'BAJAS DE EQUIPOS')]
${A01}    A01
${UbicacionorigenA01}    xpath=//td[contains(.,'A01')]
${UCW4046}    UCW4046
${ModeloUCW4046}    xpath=//td[contains(.,'UCW4046')]
${Campovacioorigen}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla solicitud traspaso
    Menu
    Operaciones equipos
    Cambio masivo de ubicacion

#Seleccionar equipo
    #Tipos de equipos
    #Equipo

#Validacion de drops
    #Checkbox todos
    #Modelos
    #Ubicaciones origen
    #Ubicaciones destino
    #Tipos cuadrila
    #Cuadrillas
    #Estados de origen
    #Estados destino

#Cambiar ubicacion
    #Boton limpiar
    #Tipos de equipos
    #Equipo
    #Checkbox todos
    #Modelos
    #Modelo
    #Ubicaciones origen
    #Ubicacion origen
    #Ubicaciones destino
    #Tipos cuadrila
    #Tipo cuadrilla
    #Cuadrillas
    #Cuadrilla
    #Estados de origen
    #Estado de origen
    #Estados destino
    #Estado destion
    #Cargar archivo
    #Boton aceptar
    #Cierre de notificacion

Transacciones
    Regresar menu
    Transacciones
    #Ejecutar transaccion
    
#Verificar que ubicacion actual permite bajas
    #Regresar menu
    #Operaciones equipos
    #Cambio masivo de ubicacion
    #Tipos de equipos
    #Equipo
    #Checkbox todos
    #Modelos
    #Modelo UCW4046    
    #Ubicaciones origen
    #Ubicacion origen A01
    #Ubicacion destino bajas
    #Cargar archivo
    #Boton aceptar
    #Cierre de notificacion
    #Regresar menu
    #Transacciones
    #Ejecutar transaccion

Agregar la misma ubicacion
    Regresar menu
    Operaciones equipos
    Cambio masivo de ubicacion
    Tipos de equipos
    Equipo
    Checkbox todos
    Modelos
    Modelo UCW4046    
    Ubicaciones origen
    Ubicacion origen A01
    Ubicacion destino A01
    
Campos obligatorios
    Campo vacio origen
    

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

Cambio masivo de ubicacion
    Click Element When Visible    ${Bottoncambiomasivodeubicacion}

Tipos de equipos
    Click Element When Visible    ${Tiposdeequipos}

Equipo
    Click Element When Visible    ${Equipo}

Checkbox todos
    Click Element When Visible    ${Checkboxtodos}

Modelos
    Click Element When Visible    ${Modelos}
    Sleep    7s

Ubicaciones origen
    Click Element When Visible    ${Ubicacionesorigen}
    Sleep    7s

Ubicaciones destino
    Click Element When Visible    ${Ubicacionesdestino}
    Sleep    7s
    Click Element When Visible    ${Buscarcuadrillapornombre}
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${Textocua}
    Click Element When Visible    ${Ubicaciondestino}
    
Tipos cuadrila
    Click Element When Visible    ${Tiposcuadrilla}
    Sleep    7s

Cuadrillas
    Click Element When Visible    ${Cuadrillas}
    Sleep    7s

Estados de origen
    Click Element When Visible    ${Checkboxcambiodeestado}
    Click Element When Visible    ${Estadosorigen}
    Sleep    7s

Estados destino
    Click Element When Visible    ${Estadosdestino}
    Sleep    7s

Boton limpiar
    Click Element When Visible    ${Botonlimpiar}

Modelo
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${Modelogenerax}
    Click Element When Visible    ${Modelo}    

Ubicacion origen
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${Almacen}
    Click Element When Visible    ${Ubicacionorigen}

Tipo cuadrilla
    Click Element When Visible    ${Tipocuadrilla}

Cuadrilla
    Click Element When Visible    ${Cuadrilla}

Estado de origen
    Click Element When Visible    ${Buscarcuadrillapornombre}
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${Estadoorigen}
    Click Element When Visible    ${EstadoOK}

Estado destion
    Click Element When Visible    ${CuadrillaDÑA}

Cargar archivo
    #Choose File      ${Botonseleccionarelarchivo}    ${CURDIR}${/}${Archivoacargar}    
    #Wait Until Element Is Visible    ${Verificararchivo}
    Click Element When Visible    ${Botonseleccionarelarchivo}
    Sleep    12s

Boton aceptar
    Click Element If Visible   ${Botonaceptar}

Cierre de notificacion
    Sleep    15s
    Click Element    ${Notificacion}

Regresar menu
    Click Element When Visible    ${Regresarmenu}

Transacciones
    Click Element When Visible    ${Transacciones}

Ejecutar transaccion
    Sleep    5s
    Click Element    ${Iconomostrarpendientes}
    Click Element When Visible    ${Transaccion}
    Click Element When Visible    ${Ejecutar}
    Sleep    3s
    Click Element When Visible    ${Bottonenviar}
    Sleep    3s
    Click Element When Visible    ${Notificacion}
    Sleep    12s
    #Wait Until Page Contains Element    ${Notificacion}
    #PendienteClick Element    ${NotificacionFinalizoproceso}

Ubicacion destino bajas
    Click Element When Visible    ${Ubicacionesdestino}
    Sleep    7s
    Click Element When Visible    ${Buscarcuadrillapornombre}
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${Bajas}
    Click Element When Visible    ${Ubicaciondestinobajas}

Ubicacion origen A01
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${A01}
    Click Element When Visible    ${UbicacionorigenA01}

Modelo UCW4046    
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${UCW4046}
    Click Element When Visible    ${ModeloUCW4046} 

Ubicacion destino A01
    Click Element When Visible    ${Ubicacionesdestino}
    Sleep    7s
    Click Element When Visible    ${Buscarcuadrillapornombre}
    Input Text When Element Is Visible    ${Buscarcuadrillapornombre}    ${A01}
    Sleep    5s
    Click Element When Visible    ${Ubicacionesdestino}

Campo vacio origen
    Click Element When Visible    ${Campovacioorigen}