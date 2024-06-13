*** Settings ***
Documentation    Opciones de Click
Library    SeleniumLibrary



*** Variables ***
#######################################Variables de inicio de sesion tanto para dev como para QA######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List     joriospe    #AHERNANDEZSI    SGONZALEZG    ALARIOSG    VBECERRAE    EIBARRAC    RCORTESA    LSANTOSH    joriospe                                                                                                             
@{passL}=    Create List     Mega12345    #Megacable2022*    Omega1012    Mega2022    Omega.2019    Mega1234    rcortesa    Mega2023    Mega12345                                                                                                                                                                                                                                                                                                                                                                                                                           
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
##################Pantalla Solicitud de traspa#####################################################################################################################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Botonsolicituddetraspaso}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[5]
######################################
${Usuario}    joriospe
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-add')]
${Sucursales}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[1]
${Sucursal}    xpath=//td[contains(.,'Los Mochis')]
${Desplegarplazas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Plazadestino}    xpath=//td[contains(.,'LOS MOCHIS')]
${Desplegartipoequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Cajadetextoobservaciones}    xpath=//textarea[contains(@class,'dx-texteditor-input')]
${Observacion}    Se envian 4 equipos en buenas condiciones.
${Botonaprobar}    xpath=//span[@class='dx-button-text'][contains(.,'Aprobar')]
${Desplegarcierredesesion}    xpath=//i[contains(@class,'dx-icon dx-icon-chevrondown')]
${Cerrarsesion}    xpath=//div[@class='a2'][contains(.,'Cerrar sesión')]
${UsuarioMAGONZALEZ}    MAGONZALEZ     
${PassMagcbegs1}    Magcbegs1
${Registro}    xpath=(//p[contains(.,'Espera')])[1]
${Botonaceptarorigen}    xpath=//span[contains(.,'Aceptar origen')]
${Desplegarsucursales}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Cajadetextoubicacion}    xpath=(//input[contains(@autocomplete,'off')])[10]    
${Origen}    GDL
${OrigenGDL}    xpath=//td[contains(.,'GUADALAJARA')]
${Observacionorigen}    Recibido.
${UsuarioAOROCIO}    AOROCIO    
${PassAOROCIO}    Megacable2022    
${Cerrarnotificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Observacionpesos}    6kg y 6cm de largo por 8cm de ancho
${Transportistas}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Transportista}    xpath=//td[contains(.,'GALEX')]
${Campoguiadeenvio}    xpath=//input[contains(@aria-invalid,'true')]
${Idguiadeenvio}    21829238613100239
${Observaciontransportista}    En proceso de envio
${Observacionesenviarequipos}    Autorizado.
${Iconocargadeequiposporarchivo}    xpath=//i[contains(@class,'dx-icon dx-icon-export')]
${Botonseleccionarelarchivo}    xpath=//span[contains(.,'Seleccionar el archivo')]
${Transacciones}    xpath=//span[contains(.,'Transacciones')]
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
${Transaccion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]
${Botonejecutar}    xpath=//div[@class='dx-button-content'][contains(.,'Ejecutar')]
${Regresarmenu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Descargardetalledevalidaciones}    xpath=//span[contains(.,'Descargar detalle de validaciones')]
${Notificacionconfoliodetransaccion}    xpath=//i[@class='dx-icon dx-icon-close']
${Botonaceptardestino}    xpath=//span[contains(.,'Aceptar destino')]
${Quitartipoequipo}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
${Iconoeliminar}    xpath=(//a[@href='#'])[28]
${Botonenviar}    xpath=//span[@class='dx-button-text'][contains(.,'Enviar')]
${Iconodetalle}    xpath=(//a[@href='#'])[27]
${Cerrargrid}    xpath=//body/div/div/div/div/div[3]/div/div/div/div/i  
${Iconodetalleaprobaciones}    xpath=(//a[@href='#'])[30]
${Iconoexportartodo}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')] 
${Campofolio}    xpath=(//input[contains(@autocomplete,'off')])[2]
${Folio}    1070
${Campoorigen}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Campodestino}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Destino}    TOL    
${Filtroestatusorigen}    xpath=//td[@id='dx-col-20']/div/span[2]
${Aceptada}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Botonaceptar}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[3]
${Campofechaorigen}    xpath=//input[contains(@aria-describedby,'dx-col-21')]
${Fecha}    18/1/2023
${Filtroestatusdestino}    xpath=//td[@id='dx-col-22']/div/span[2]
${Campofechadestino}    xpath=//input[contains(@aria-describedby,'dx-col-23')]
${Campotipoequipo}    xpath=//input[contains(@max,'255')]
${Tipoequipo}    4    
${Campotransportista}    xpath=//input[contains(@maxlength,'65')]
${Transportistafiltro}    Galex
${Barraespaciadora}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-transfer-request-main-container/app-transfer-request-grid/div/dx-data-grid/div/div[6]/div[1]/div
${Campocantidad}    xpath=//input[contains(@max,'200000')]
${Cantidad}    3
${Campofecha}    xpath=//input[contains(@aria-describedby,'dx-col-27')]
${Campousuario}    xpath=//input[contains(@maxlength,'15')]
${Campoobservaciones}    xpath=//input[contains(@maxlength,'250')]
${Filtrocampoguiadeenvio}    xpath=//input[contains(@maxlength,'40')]
${Guiadeenvio}    97777777769
${Checkboxmostrarpendientes}    xpath=(//span[@class='dx-checkbox-icon'])[1]

*** Test Cases ***
Usuarios con permisos a la pantalla
   Validacion de usuarios

Filtros
    Filtro folio
    Filtro Origen
    Filtro destino
    Filtro estatus origen
    Filtro fecha origen
    Filtro estatus destino
    Filtro fecha destino
    Filtro tipo equipo
    Filtro transportista
    Filtro cantidad
    Filtro Fecha
    Filtro usuario
    Filtro observaciones
    Filtro guia de envio

Pre solicitud
    Agregar solicitud nueva
    Sucursal usuario destino
    Sucursal plaza destino
    Tipo equipo
    Observaciones

Campos vacios
    Campo vacio tipo equipo
    Tipo equipo
    Boton aprobar
    
Revision planner
    Cerrar sesion
    Close Browser
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena con usuario tipo 88
    Menu
    Operaciones equipos
    Solicitud de traspaso
    Sucursal usuario destino
    Aceptar origen
    Sucursal origen
    Observaciones origen
    Boton aprobar

Asignar pesos y medidas
    Cerrar notificacion
    Close Browser
    Open Browser    ${Pagina}    ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena con usuario tipo 07
    Menu
    Operaciones equipos
    Solicitud de traspaso
    Sucursal usuario destino
    Aceptar origen
    Observaciones pesos
    Boton aprobar
    
Asignar Transportista
    Aceptar origen
    Transportista
    Guia de envio
    Observaciones transportista
    Boton aprobar

Enviar los equipos(Serie, Pallet, Archivo)
    Cerrar sesion
    Close Browser
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena con usuario tipo 88
    Menu
    Operaciones equipos
    Solicitud de traspaso
    Aceptar origen
    Observaciones enviar equipos
    Icono carga de equipos por archivo
    Boton aprobar
    Cerrar notificacion

Transacciones
    Regresar menu
    Transacciones
    Actualizar
    Transaccion

Aceptar destino
    Sleep    3s
    Cerrar grid
    Sleep   15s
    Cerrar grid
    Regresar menu
    Operaciones equipos
    Solicitud de traspaso
    Sucursal usuario destino
    Actualizar
    Aceptar destino
    Sleep    3s
    Cerrar grid
    Sleep    5s
    Cerrar grid
    Regresar menu
    Transacciones
    Actualizar
    Checkbox mostrar pendientes
    Transaccion
    Sleep    3s
    Cerrar grid
    Sleep    10s
    Cerrar grid
    Regresar menu
    Operaciones equipos
    Solicitud de traspaso
    
Detalle equipos
    Icono detalle

Eliminar
    Cerrar notificacion
    Eliminar solicitud

Detalle usuarios
    Icono detalle aprobaciones
    Cerrar grid

Descargar excel
    Icono exportar todo
    

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
        Wait Until Element Is Visible    ${Botonsolicituddetraspaso}
        Click Element    ${Botonsolicituddetraspaso} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Menu    
    Sleep    5s
    Click Element    ${Botonequipos}

Operaciones equipos
    Wait Until Element Is Visible    ${Botonoperacionesequipos}
    Click Element  ${Botonoperacionesequipos}

Solicitud de traspaso
    Scroll Element Into View    ${Botonsolicituddetraspaso}
    Sleep    10s
    Wait Until Element Is Visible    ${Botonsolicituddetraspaso}
    Click Element    ${Botonsolicituddetraspaso}

Agregar solicitud nueva
    Wait Until Element Is Visible    ${Iconoagregar}    
    Click Element    ${Iconoagregar}

Sucursal usuario destino
    Wait Until Element Is Visible    ${Sucursales}
    Click Element    ${Sucursales}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}

Sucursal plaza destino
    Wait Until Element Is Visible    ${Desplegarplazas}    
    Click Element    ${Desplegarplazas}
    Wait Until Element Is Visible    ${Plazadestino}
    Click Element    ${Plazadestino}

Tipo equipo
    Sleep    5s
    Click Element    ${Desplegartipoequipos}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Observaciones
    Wait Until Element Is Visible    ${Cajadetextoobservaciones}
    Click Element    ${Cajadetextoobservaciones}
    Input Text    ${Cajadetextoobservaciones}    ${Observacion}

Boton aprobar
    Wait Until Element Is Visible    ${Botonaprobar}
    Click Element    ${Botonaprobar}

Cerrar sesion
    Sleep    7s
    Click Element    ${Desplegarcierredesesion}
    Wait Until Element Is Visible    ${Cerrarsesion}
    Click Element    ${Cerrarsesion}

Ingresar usuario contrasena con usuario tipo 88
    Wait Until Page Contains Element    ${Localizadorpagina}
    Wait Until Element Is Visible    name:Username    
    Input Text    name:Username   ${UsuarioMAGONZALEZ}
    Wait Until Element Is Visible    name:Password
    Input Text    name:Password   ${PassMagcbegs1}
    Wait Until Element Is Visible    name:button
    Click Element   name:button

Aceptar origen
    Sleep    5s
    Click Element    ${Registro}
    Wait Until Element Is Visible    ${Botonaceptarorigen}
    Click Element    ${Botonaceptarorigen}

Sucursal origen
    Sleep    5s
    Click Element    ${Desplegarsucursales}
    Sleep    5s
    Input Text    ${Cajadetextoubicacion}    ${Origen}
    Wait Until Element Is Visible    ${OrigenGDL}    
    Click Element    ${OrigenGDL}

Observaciones origen
    Wait Until Element Is Visible    ${Cajadetextoobservaciones}
    Input Text    ${Cajadetextoobservaciones}    ${Observacionorigen}

Ingresar usuario contrasena con usuario tipo 07
    Wait Until Page Contains Element    ${Localizadorpagina}
    Wait Until Element Is Visible    name:Username
    Input Text    name:Username   ${UsuarioAOROCIO}
    Wait Until Element Is Visible    name:Password
    Input Text    name:Password   ${PassAOROCIO}
    Wait Until Element Is Visible    name:button
    Click Element   name:button

Cerrar notificacion
    Sleep    7s
    Click Element    ${Cerrarnotificacion}

Observaciones pesos
    Sleep    5s
    Click Element    ${Cajadetextoobservaciones}
    Wait Until Element Is Visible    ${Cajadetextoobservaciones}    
    Input Text    ${Cajadetextoobservaciones}    ${Observacionpesos}

Transportista
    Sleep    5s
    Click Element    ${Transportistas}
    Wait Until Element Is Visible    ${Transportista}
    Click Element    ${Transportista}

Guia de envio
    Wait Until Element Is Visible    ${Campoguiadeenvio}
    Input Text    ${Campoguiadeenvio}    ${Idguiadeenvio}

Observaciones transportista
    Wait Until Element Is Visible    ${Cajadetextoobservaciones}
    Input Text    ${Cajadetextoobservaciones}    ${Observaciontransportista}

Observaciones enviar equipos
    Sleep    5s
    Click Element    ${Cajadetextoobservaciones}
    Wait Until Element Is Visible    ${Cajadetextoobservaciones}
    Input Text    ${Cajadetextoobservaciones}    ${Observacionesenviarequipos}

Icono carga de equipos por archivo
    Sleep    5s
    Click Element    ${Iconocargadeequiposporarchivo}
    Wait Until Element Is Visible    ${Botonseleccionarelarchivo}
    Click Element    ${Botonseleccionarelarchivo}
    Sleep    15s
    #Open Workbook    ${CSV_FILE}
    #Choose File    ${Botonseleccionarelarchivo}    ${excel_file_path}

Transacciones
    Wait Until Element Is Visible    ${Transacciones}
    Click Element    ${Transacciones}

Actualizar
    Wait Until Element Is Visible    ${Iconoactualizar}
    Click Element    ${Iconoactualizar}

Transaccion
    Sleep    5s
    Click Element    ${Transaccion}
    Sleep    5s
    Click Element    ${Botonejecutar} 
    #Click Element If Visible    ${Descargardetalledevalidaciones}
    #IF    ${Botonejecutar} != ${Localizadorpagina}
        #Click Element    ${Botonejecutar}
    #ELSE
        #Click Element    ${Descargardetalledevalidaciones}
    #END
    
Regresar menu
    Sleep    7s
    Click Element    ${Regresarmenu}

Cerrar notificacion con folio de transaccion
    Sleep    5s
    Click Element    ${Notificacionconfoliodetransaccion}

Aceptar destino
    Sleep    5s
    Click Element    ${Registro}
    Wait Until Element Is Visible    ${Botonaceptardestino}
    Click Element    ${Botonaceptardestino}

Campo vacio tipo equipo
    Wait Until Element Is Visible    ${Quitartipoequipo}
    Click Element    ${Quitartipoequipo}

Eliminar solicitud
    Wait Until Element Is Visible    ${Iconoeliminar}
    Click Element    ${Iconoeliminar}
    Wait Until Element Is Visible    ${Botonenviar}
    Click Element    ${Botonenviar}
    Sleep    7s
    #Wait Until Element Is Visible    ${Cerrargrid}
    Click Element    ${Cerrargrid}

Icono detalle
    Wait Until Element Is Visible    ${Iconodetalle}
    Click Element    ${Iconodetalle}

Icono detalle aprobaciones
    Sleep    5s
    Click Element    ${Iconodetalleaprobaciones}

Icono exportar todo
    Sleep    5s
    Click Element    ${Iconoexportartodo}

Cerrar grid
    #Sleep    7s
    Wait Until Element Is Visible    ${Cerrargrid}
    Click Element    ${Cerrargrid}

Filtro folio
    Sleep    7s
    Input Text    ${Campofolio}    ${Folio}
    Sleep    5s
    Clear Element Text    ${Campofolio}

Filtro Origen
    Sleep    3s
    Input Text    ${Campoorigen}    ${Origen}
    Sleep    5s
    Clear Element Text    ${Campoorigen}

Filtro destino
    Sleep    3s
    Input Text    ${Campodestino}    ${Destino}
    Sleep    5s
    Clear Element Text    ${Campodestino}

Filtro estatus origen
    Sleep    3s
    Click Element    ${Filtroestatusorigen}
    Sleep    5s
    Click Element   ${Aceptada}
    Sleep    5s
    Click Element    ${Botonaceptar}
    Sleep    5s
    Click Element    ${Filtroestatusorigen}
    Sleep    5s
    Click Element    ${Aceptada}
    Sleep    5s
    Click Element    ${Botonaceptar}

Filtro fecha origen
    Sleep    3s
    Input Text    ${Campofechaorigen}    ${Fecha}
    Sleep    5s
    Press Keys    ${Campofechaorigen}    ENTER
    Sleep    5s
    Clear Element Text    ${Campofechaorigen}
    Press Keys    ${Campofechaorigen}    ENTER

Filtro estatus destino
    Sleep    3s
    Click Element    ${Filtroestatusdestino}
    Sleep    3s
    Click Element    ${Aceptada}
    Sleep    3s
    Click Element    ${Botonaceptar}
    Sleep    3s
    Click Element    ${Filtroestatusdestino}
    Sleep    3s
    Click Element    ${Aceptada}
    Sleep    3s
    Click Element    ${Botonaceptar}

Filtro fecha destino
    Sleep    3s
    Input Text    ${Campofechadestino}    ${Fecha}
    Sleep    5s
    Press Keys    ${Campofechadestino}    ENTER
    Sleep    5s
    Clear Element Text    ${Campofechadestino}
    Press Keys    ${Campofechadestino}    ENTER

Filtro tipo equipo
    Sleep    3s
    Input Text    ${Campotipoequipo}    ${Tipoequipo}
    Sleep    5s
    Clear Element Text    ${Campotipoequipo}

Filtro transportista
    #Sleep    3s
    #Click Element When Visible    ${Barraespaciadora}
    Sleep    5s
    Input Text    ${Campotransportista}    ${Transportistafiltro}
    Sleep    5s
    Clear Element Text    ${Campotransportista}

Filtro cantidad
    Sleep    7s
    Input Text    ${Campocantidad}    ${Cantidad}
    Sleep    5s
    Clear Element Text    ${Campocantidad}

Filtro Fecha
    Sleep    3s
    Input Text    ${Campofecha}    ${Fecha}
    Sleep    5s
    Press Keys    ${Campofecha}    ENTER
    Sleep    5s
    Clear Element Text    ${Campofecha}
    Press Keys    ${Campofecha}    ENTER

Filtro usuario
    Sleep    5s
    Input Text    ${Campousuario}    ${Usuario}
    Sleep    5s
    Clear Element Text    ${Campousuario}

Filtro observaciones
    Sleep    5s
    Input Text    ${Campoobservaciones}    ${Observacion}
    Sleep    5s
    Clear Element Text    ${Campoobservaciones}

Filtro guia de envio
    Sleep    5s
    Input Text    ${Filtrocampoguiadeenvio}    ${Guiadeenvio}
    Sleep    5s
    Clear Element Text    ${Filtrocampoguiadeenvio}

Checkbox mostrar pendientes
    Wait Until Element Is Visible    ${Checkboxmostrarpendientes}
    Click Element    ${Checkboxmostrarpendientes}
