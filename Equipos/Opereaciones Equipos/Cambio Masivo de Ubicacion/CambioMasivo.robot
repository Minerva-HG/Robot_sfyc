*** Settings ***
Documentation    Cambio masivo de ubicacion
Library    SeleniumLibrary
Library    RPA.Desktop

*** Variables ***
${Verificararchivo}    xpath=//*[@id="fileuploader-container"]/dx-file-uploader/div/div/div/div[2]/div/div/div[1]/div[1]
${Archivoacargar}    C://Proyectos//Robot_sfyc//Inventarios//Operaciones Equipos//Cambio masivo de ubicacion//Pruebass.xlsx 
${CSV_FILE}    C:/Proyectos/Robot_sfyc/Inventarios/Operaciones Equipos/Cambio masivo de ubicacion/Pruebass.xlsx    
#######################################Variables de inicio de sesion tanto para dev como para QA######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RIGONZALEZL    AJMARELLANOA    NHERNANDEZB    OSILVAP    LSANTOSH    GRSOTOM    GFUENTES    GVALENZUELAG                                                         
@{passL}=    Create List    Megajos202    #Megacable2022    M1aYaretz1    Megacable2022    Megacable2022*    Mega2023    Mega2022    Cisco2019    Megacable2021                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
########################################Pantalla Cambio masivo de ubicación##############################################################################################################################
${Botonadministraciondeanis}    xpath=//span[contains(.,'Administración de Anis')]
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/div[1]
${Botoncambiomasivodeubicacion}    xpath=//span[contains(.,'Cambio Masivo de Ubicación')]
########################################Combos############################################################################################################
${Combo_Tipos_de_equipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Combo_Modelos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Combo_Ubicaciones_origen}    xpath=(//div[@class='dx-dropdowneditor-icon'])[4]
${Combo_Ubicaciones_destino}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Combo_Tipos_cuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Combo_Cuadrillas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Combo_Estados_origen}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Combo_Estados_destino}    xpath=(//div[@class='dx-dropdowneditor-icon'])[9]
#######################################Checkbox###############################################################
${Checkboxtodos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Checkboxcambiodeestado}    xpath=(//span[@class='dx-checkbox-icon'])[2]
${Checkbox_validacion_equipos_por_ubicacion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Checkbox_cambio_masivo_CNR}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Checkbox_cambiar_a_CNR_por_sucursal}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Checkbox_actualizar_transacciones}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
${Checkbox_mostrar_pendientes}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
######################################Registros################################################################
${Equipo}    xpath=//td[contains(.,'SET TOPS')]
${Equipo19}    xpath=//td[@aria-describedby='dx-col-76'][contains(.,'019')]
${Modelo}    xpath=//td[contains(.,'PDS2140')]
${ModeloUCW4046}    xpath=//td[contains(.,'UCW4046')]
${Modelogenerax}    PDS2140  
${Ubicacionorigen}    xpath=//td[contains(.,'ALMACEN')]
${UbicacionorigenA01}    xpath=//td[contains(.,'A01')]
${Ubicaciondestino_cuadrilla}    xpath=//td[contains(.,'CUA')]
${Ubicaciondestino}    xpath=//td[contains(.,'PRE UBI OBLATOS')]
${Ubicaciondestinobajas}    xpath=//td[contains(.,'BAJAS DE EQUIPOS')]
${Tipocuadrilla}    xpath=(//td[contains(@aria-describedby,'dx-col-9')])[2]
${Cuadrilla}    xpath=//td[contains(.,'0002')]
${CuadrillaDÑA}    xpath=//td[contains(.,'DAÑADOS')]
${Estadoorigen}    OK
${EstadoOK}    xpath=(//td[@aria-describedby='dx-col-11'][contains(.,'OK')])[2]
#####################################################Textos########################################################################
${Cnr}    CNR
${Eic}    EIC
${Cli}    Cli
${Cis}    Cis
${Textocua}    CUA
${Almacen}    ALM
${Bajas}    BAJ
${A01}    A01
${UCW4046}    UCW4046
${Lab}    Lab
####################################################Botones############################################################################
${Botonlimpiar}    xpath=(//div[@class='dx-button-content'][contains(.,'Limpiar')])[2]
${Botonseleccionarelarchivo}    xpath=//span[contains(.,'Seleccionar el archivo')]
${Botonaceptar}    xpath=(//span[@class='dx-button-text'])[3]
${Botonenviar}    xpath=//span[contains(.,'Enviar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
#################################################Filtros###############################################################################################
${Buscarcuadrillapornombre}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[5]/div/table/tbody/tr[2]/td[1]/div/div[2]/div/div/div[1]/input
${Buscarmodelo}    xpath=//*[@id="dx-c2c2be23-b1f4-2859-a94d-0955599a02b8"]/div/dx-data-grid/div/div[5]/div/table/tbody/tr[2]/td/div/div[2]/div/div/div[1]/input
####################################################Transacciones############################################################################
${Menu_principal}    xpath=//img[@src='assets/img/logo-side-menu-megacable.png']
${Ejecutar}    xpath=//span[contains(.,'Ejecutar')]
${Descargar_detalle_validaciones}    xpath=//span[contains(.,'Descargar detalle de validaciones')]  
${Notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Transacciones}    xpath=//span[contains(.,'Transacciones')]
${Regresarmenu}    xpath=//i[contains(@class,'dx-icon dx-icon-chevrondoubleleft')]
${Iconomostrarpendientes}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Transaccion}    xpath=//td[contains(.,'Cambio masivo de ubicación')]
${NotificacionFinalizoproceso}    xpath=//i[@class='dx-icon dx-icon-close']
${Campovacioorigen}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]

*** Test Cases ***
Usuarios con permisos a la pantalla 
    Validacion de usuarios

Seleccionar equipo
    Tipos de equipos
    Equipo

Cambiar ubicacion
    Checkbox todos
    Modelos
    Modelo
    Ubicaciones origen
    Ubicacion origen

Agregar la misma ubicación
    Misma ubicacion

Cambiar ubicación por cuadrilla
    Ubicaciones destino
    Tipos cuadrila

Seleccionar Cuadrilla
    Tipo cuadrilla
    Cuadrillas
    Cuadrilla

Considerar Cambio de Estado del Equipo.
    Estados de origen
    Estado de origen
    Estados destino
    Estado destion
    Cargar archivo
    Boton aceptar

Cambiar una o varias series en repetidas ocaciones a la misma ubicacion
    Cierre de notificacion

Validacion de drops
    Desplazar hacia arriba

Validar en la función Transacciones
    Regresar menu
    Transacciones
    Mostrar pendientes
    Transaccion

No existen equipos en la ubicación inicial
    Regresar menu
    Cambio masivo de ubicacion
    Tipos de equipos
    Equipo
    Checkbox todos
    Modelos
    Modelo
    Ubicaciones origen
    Ubicacion origen
    Ubicacion destino bajas
    Cargar archivo
    Boton aceptar
    Cierre de notificacion
    Regresar menu
    Transacciones
    Transaccion

Verificar que Ubicación Actual permita bajas
    Regresar menu
    Cambio masivo de ubicacion
    Tipos de equipos
    Equipo
    Checkbox todos
    Modelos
    Modelo UCW4046    
    Ubicaciones origen
    Ubicacion origen A01
    Ubicacion destino bajas
    Cargar archivo
    Boton aceptar
    Cierre de notificacion
    Regresar menu
    Transacciones
    Transaccion

Si la Ubicación Destino es CLI y CIS
    Regresar menu
    Cambio masivo de ubicacion
    Tipos de equipos
    Equipo
    Checkbox todos
    Modelos
    Modelo UCW4046 
    Ubicaciones origen   
    Ubicaciones origen cli y cis
    
Ubicaciones CNR y EIC
    Combo ubiacion destino  
    Ubicaciones origen cnr y eic

Ubicación LAB y REG
    Boton limpiar
    Tipos de equipos 
    Equipo 19
    Checkbox todos
    Modelos
    Modelo
    Ubicaciones origen
    Ubicacion origen
    Combo ubiacion destino
    Ubicaciones laboratorio
    Ubicaciones destino
    Tipos de equipos
    Equipo

Opcion Cargar desde archivo
    Cargar archivo
    Boton aceptar
    Cierre de notificacion
    Regresar menu
    Transacciones
    Transaccion

Campos Obligatorios
    Regresar menu
    Cambio masivo de ubicacion
    Campo vacio origen

Botón Limpiar
    Boton limpiar

Botón cancelar
    Boton cancelar
    

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
        Wait Until Element Is Visible    ${Botoncambiomasivodeubicacion}
        Click Element    ${Botoncambiomasivodeubicacion}   
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Desplazar hacia arriba
    Sleep    5s
    Scroll Element Into View    ${Combo_Tipos_de_equipos}
    Sleep    2s    

Tipos de equipos
    Wait Until Element Is Visible    ${Combo_Tipos_de_equipos}
    Click Element    ${Combo_Tipos_de_equipos}

Equipo
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Checkbox todos
    Wait Until Element Is Visible    ${Checkboxtodos}
    Click Element    ${Checkboxtodos}

Modelos
    Wait Until Element Is Visible    ${Combo_Modelos}
    Click Element    ${Combo_Modelos}
    Sleep    7s

Ubicaciones origen
    Wait Until Element Is Visible    ${Combo_Ubicaciones_origen}
    Click Element    ${Combo_Ubicaciones_origen}
    Sleep    7s

Ubicaciones destino
    Wait Until Element Is Visible    ${Combo_Ubicaciones_destino}
    Click Element    ${Combo_Ubicaciones_destino}
    Sleep    7s
    Click Element    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Textocua}
    Wait Until Element Is Visible    ${Ubicaciondestino_cuadrilla}
    Click Element    ${Ubicaciondestino_cuadrilla}
    
Tipos cuadrila
    Wait Until Element Is Visible   ${Combo_Tipos_cuadrilla}
    Click Element    ${Combo_Tipos_cuadrilla}
    Sleep    7s

Cuadrillas
    Wait Until Element Is Visible    ${Combo_Cuadrillas}
    Click Element    ${Combo_Cuadrillas}
    Sleep    7s

Estados de origen
    Wait Until Element Is Visible    ${Checkboxcambiodeestado}
    Click Element    ${Checkboxcambiodeestado}
    Wait Until Element Is Visible    ${Combo_Estados_origen}
    Click Element    ${Combo_Estados_origen}
    Sleep    7s

Estados destino
    Wait Until Element Is Visible    ${Combo_Estados_destino}
    Click Element    ${Combo_Estados_destino}
    Sleep    7s

Boton limpiar
    Wait Until Element Is Visible    ${Botonlimpiar}
    Click Element    ${Botonlimpiar}
    Sleep    3s

Modelo
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Modelogenerax}
    Wait Until Element Is Visible    ${Modelo} 
    Click Element    ${Modelo}    

Ubicacion origen
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Almacen}
    Wait Until Element Is Visible    ${Ubicacionorigen}
    Click Element    ${Ubicacionorigen}

Tipo cuadrilla
    Wait Until Element Is Visible    ${Tipocuadrilla}
    Click Element   ${Tipocuadrilla}

Cuadrilla
    Wait Until Element Is Visible    ${Cuadrilla}
    Click Element    ${Cuadrilla}

Estado de origen
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Click Element    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Estadoorigen}
    Wait Until Element Is Visible    ${EstadoOK}
    Click Element    ${EstadoOK}

Estado destion
    Wait Until Element Is Visible    ${CuadrillaDÑA}
    Click Element    ${CuadrillaDÑA}

Cargar archivo
    #Choose File      ${Botonseleccionarelarchivo}    ${CURDIR}${/}${Archivoacargar}    
    #Wait Until Element Is Visible    ${Verificararchivo}
    Wait Until Element Is Visible    ${Botonseleccionarelarchivo}
    Click Element    ${Botonseleccionarelarchivo}

Boton aceptar
    Sleep    3s
    ${Bandera_boton_aceptar_activo}=    Run Keyword And Return Status    Click Element    ${Botonaceptar}
    IF    '${Bandera_boton_aceptar_activo}' == 'True'
        Sleep    1s
    ELSE
        Boton aceptar
    END
    
Cierre de notificacion
    Sleep    3s
    ${Bandera_notificacion_finalizo_proceso_validacion}=    Run Keyword And Return Status    Click Element    ${Notificacion}
    IF    '${Bandera_notificacion_finalizo_proceso_validacion}' == 'True'
        Sleep    1s
    ELSE
        Cierre de notificacion
    END

Regresar menu
    Wait Until Element Is Visible    ${Regresarmenu}
    Click Element    ${Regresarmenu}

Transacciones
    Wait Until Element Is Visible    ${Menu_principal}
    Click Element    ${Menu_principal}
    Sleep    4s    
    Click Element    ${Regresarmenu}
    Wait Until Element Is Visible    ${Botonequipos}
    Click Element    ${Botonequipos}
    Wait Until Element Is Visible    ${Transacciones}
    Click Element    ${Transacciones}

Transaccion
    Sleep    5s
    Click Element    ${Checkbox_actualizar_transacciones}
    Sleep    5s
    Click Element    ${Transaccion}
    Sleep    5s
    ${Bandera_boton_ejecutar}=    Run Keyword And Return Status    Click Element    ${Ejecutar}
    ${Bandera_descargar_detalle_validaciones}=    Run Keyword And Return Status    Click Element    ${Descargar_detalle_validaciones}
   IF    '${Bandera_boton_ejecutar}' == 'True' and '${Bandera_descargar_detalle_validaciones}' == 'True'
        Sleep    3s
        Click Element    ${Botonenviar}
        Wait Until Element Is Visible    ${Notificacion}
        Click Element    ${Notificacion}
        Sleep    20s
        Wait Until Element Is Visible    ${Notificacion}
        Click Element    ${Notificacion}
   END
   IF    '${Bandera_boton_ejecutar}' == 'False' and '${Bandera_descargar_detalle_validaciones}' == 'True'    
        Sleep    3s
   END
   IF    '${Bandera_boton_ejecutar}' == 'True' and '${Bandera_descargar_detalle_validaciones}' == 'False' 
        Sleep    3s
        Click Element    ${Botonenviar}
        Wait Until Element Is Visible    ${Notificacion}
        Click Element    ${Notificacion}
        Sleep    20s
        Wait Until Element Is Visible    ${Notificacion}
        Click Element    ${Notificacion}
   END
   IF    '${Bandera_boton_ejecutar}' == 'False' and '${Bandera_descargar_detalle_validaciones}' == 'False'    
        Sleep    3s
   END

Ubicacion destino bajas
    Wait Until Element Is Visible    ${Combo_Ubicaciones_destino}
    Click Element    ${Combo_Ubicaciones_destino}
    Sleep    7s
    Clear Element Text    ${Buscarcuadrillapornombre}
    Click Element    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Bajas}
    Wait Until Element Is Visible    ${Ubicaciondestinobajas}
    Click Element    ${Ubicaciondestinobajas}

Ubicacion origen A01
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${A01}
    Wait Until Element Is Visible    ${UbicacionorigenA01}
    Click Element    ${UbicacionorigenA01}

Modelo UCW4046
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}    
    Input Text    ${Buscarcuadrillapornombre}    ${UCW4046}
    Wait Until Element Is Visible    ${ModeloUCW4046}
    Click Element    ${ModeloUCW4046} 

Ubicacion destino A01
    Wait Until Element Is Visible    ${Combo_Ubicaciones_destino} 
    Click Element    ${Combo_Ubicaciones_destino} 
    Sleep    7s
    Click Element    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${A01}
    Sleep    5s
    Click Element    ${Combo_Ubicaciones_destino}

Campo vacio origen
    Wait Until Element Is Visible    ${Campovacioorigen}
    Click Element    ${Campovacioorigen}

Cambio masivo de ubicacion
    #Sleep    5s
    #Click Element    ${Menu_principal}
    #Wait Until Element Is Visible    ${Regresarmenu}
    #Click Element    ${Regresarmenu}
    Sleep    5s
    Click Element    ${Botonequipos}
    Wait Until Element Is Visible    ${Botonoperacionesequipos}
    Click Element    ${Botonoperacionesequipos}
    Sleep    5s
    Scroll Element Into View    ${Botonadministraciondeanis}
    Wait Until Element Is Visible    ${Botoncambiomasivodeubicacion}
    Click Element    ${Botoncambiomasivodeubicacion} 
    Sleep    3s  

Cargar archivo con ubicacion diferente a la seleccionada
    #Choose File      ${Botonseleccionarelarchivo}    ${CURDIR}${/}${Archivoacargar}    
    #Wait Until Element Is Visible    ${Verificararchivo}
    Wait Until Element Is Visible    ${Botonseleccionarelarchivo}
    Click Element    ${Botonseleccionarelarchivo}

Misma ubicacion
    Wait Until Element Is Visible    ${Combo_Ubicaciones_destino}
    Click Element    ${Combo_Ubicaciones_destino}
    Sleep    7s
    Click Element    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Almacen}
    Sleep    5s
    Clear Element Text    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Combo_Ubicaciones_destino}
    Click Element    ${Combo_Ubicaciones_destino}

Mostrar pendientes
    Wait Until Element Is Visible    ${Checkbox_mostrar_pendientes}
    Click Element    ${Checkbox_mostrar_pendientes}

Ubicaciones origen cli y cis
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Cli}
    Sleep    5s
    Input Text    ${Buscarcuadrillapornombre}    ${Cis}
    Sleep    5s
    Clear Element Text    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Combo_Ubicaciones_origen}
    Click Element    ${Combo_Ubicaciones_origen}

Ubicaciones origen cnr y eic
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Cnr}
    Sleep    5s
    Input Text    ${Buscarcuadrillapornombre}    ${Eic}
    Sleep    5s
    Clear Element Text    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Combo_Ubicaciones_origen}
    Click Element    ${Combo_Ubicaciones_origen}

Combo ubiacion destino
    Wait Until Element Is Visible    ${Combo_Ubicaciones_destino}
    Click Element    ${Combo_Ubicaciones_destino}
    Sleep    7s

Equipo 19
    Sleep    3s
    Scroll Element Into View    ${Equipo19}
    Sleep    3s
    Click Element    ${Equipo19}

Ubicaciones laboratorio
    Wait Until Element Is Visible    ${Buscarcuadrillapornombre}
    Input Text    ${Buscarcuadrillapornombre}    ${Lab}
    Sleep    5s
    Clear Element Text    ${Buscarcuadrillapornombre}
    Wait Until Element Is Visible    ${Combo_Ubicaciones_origen}
    Click Element    ${Combo_Ubicaciones_origen}

Boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
