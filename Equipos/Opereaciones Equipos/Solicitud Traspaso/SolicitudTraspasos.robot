*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
#Library    RPA.Robocloud.Items
Library    RPA.Excel.Files
Library    RPA.Dialogs

*** Variables ***
${CSV_FILE}    C:/Proyectos/Robot_sfyc/Inventarios/Operaciones Equipos/Solicitud de traspaso/Equipos.csv    
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  CSENCION
${Pass}  Megacable2021
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottonsolicituddetraspaso}    xpath=//span[contains(.,'Solicitud de Traspaso')]
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
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla solicitud traspaso
    Menu
    Operaciones equipos
    Solicitud de traspaso

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

Presolicitud
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
    
Alta transportista
    Aceptar origen
    Transportista
    Guia de envio
    Observaciones transportista
    Boton aprobar

Agregar equipos por archivo
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

Solicitud de traspaso
    Click Element When Visible    ${Bottonsolicituddetraspaso}

Agregar solicitud nueva
    Click Element When Visible    ${Iconoagregar}

Sucursal usuario destino
    Click Element When Visible    ${Sucursales}
    Click Element When Visible    ${Sucursal}

Sucursal plaza destino
    Click Element When Visible    ${Desplegarplazas}
    Click Element When Visible    ${Plazadestino}

Tipo equipo
    Sleep    5s
    Click Element When Visible    ${Desplegartipoequipos}
    Click Element When Visible    ${Equipo}

Observaciones
    Click Element When Visible    ${Cajadetextoobservaciones}
    Input Text When Element Is Visible    ${Cajadetextoobservaciones}    ${Observacion}

Boton aprobar
    Click Element When Visible    ${Botonaprobar}

Cerrar sesion
    Sleep    7s
    Click Element When Visible    ${Desplegarcierredesesion}
    Click Element When Visible    ${Cerrarsesion}

Ingresar usuario contrasena con usuario tipo 88
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${UsuarioMAGONZALEZ}
    Input Text When Element Is Visible    name:Password   ${PassMagcbegs1}
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}
    Click Element If Visible   name:button

Aceptar origen
    Sleep    5s
    Click Element When Visible    ${Registro}
    Click Element When Visible    ${Botonaceptarorigen}

Sucursal origen
    Sleep    5s
    Click Element When Visible    ${Desplegarsucursales}
    Sleep    5s
    Input Text When Element Is Visible    ${Cajadetextoubicacion}    ${Origen}
    Click Element When Visible    ${OrigenGDL}

Observaciones origen
    Input Text When Element Is Visible    ${Cajadetextoobservaciones}    ${Observacionorigen}

Ingresar usuario contrasena con usuario tipo 07
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${UsuarioAOROCIO}
    Input Text When Element Is Visible    name:Password   ${PassAOROCIO}
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}
    Click Element If Visible   name:button

Cerrar notificacion
    Sleep    7s
    Wait Until Element Is Visible    ${Cerrarnotificacion}
    Click Element    ${Cerrarnotificacion}

Observaciones pesos
    Sleep    5s
    Click Element When Visible    ${Cajadetextoobservaciones}
    Input Text When Element Is Visible    ${Cajadetextoobservaciones}    ${Observacionpesos}

Transportista
    Sleep    5s
    Click Element When Visible    ${Transportistas}
    Click Element When Visible    ${Transportista}

Guia de envio
    Input Text When Element Is Visible    ${Campoguiadeenvio}    ${Idguiadeenvio}

Observaciones transportista
    Input Text When Element Is Visible    ${Cajadetextoobservaciones}    ${Observaciontransportista}

Observaciones enviar equipos
    Sleep    5s
    Click Element When Visible    ${Cajadetextoobservaciones}
    Input Text When Element Is Visible    ${Cajadetextoobservaciones}    ${Observacionesenviarequipos}

Icono carga de equipos por archivo
    Sleep    5s
    Click Element When Visible    ${Iconocargadeequiposporarchivo}
    Click Element When Visible    ${Botonseleccionarelarchivo}
    Sleep    15s
    #Open Workbook    ${CSV_FILE}
    #Choose File    ${Botonseleccionarelarchivo}    ${excel_file_path}

Transacciones
    Click Element When Visible    ${Transacciones}

Actualizar
    Click Element When Visible    ${Iconoactualizar}

Transaccion
    Sleep    5s
    Click Element When Visible    ${Transaccion}
    Sleep    5s
    Click Element When Visible    ${Botonejecutar} 
    #Click Element If Visible    ${Descargardetalledevalidaciones}
    #IF    ${Botonejecutar} != ${Localizadorpagina}
        #Click Element    ${Botonejecutar}
    #ELSE
        #Click Element    ${Descargardetalledevalidaciones}
    #END
    
Regresar menu
    Sleep    7s
    Click Element When Visible    ${Regresarmenu}

Cerrar notificacion con folio de transaccion
    Sleep    5s
    Click Element When Visible    ${Notificacionconfoliodetransaccion}

Aceptar destino
    Sleep    5s
    Click Element When Visible    ${Registro}
    Click Element When Visible    ${Botonaceptardestino}

Campo vacio tipo equipo
    Click Element When Visible    ${Quitartipoequipo}

Eliminar solicitud
    Click Element When Visible    ${Iconoeliminar}
    Click Element When Visible    ${Botonenviar}
    Sleep    7s
    #Wait Until Element Is Visible    ${Cerrargrid}
    Click Element    ${Cerrargrid}

Icono detalle
    Click Element When Visible    ${Iconodetalle}

Icono detalle aprobaciones
    Sleep    5s
    Click Element When Visible    ${Iconodetalleaprobaciones}

Icono exportar todo
    Sleep    5s
    Click Element When Visible    ${Iconoexportartodo}

Cerrar grid
    #Sleep    7s
    Click Element When Visible    ${Cerrargrid}

Filtro folio
    Sleep    3s
    Input Text When Element Is Visible    ${Campofolio}    ${Folio}
    Sleep    5s
    Clear Element Text    ${Campofolio}

Filtro Origen
    Sleep    3s
    Input Text When Element Is Visible    ${Campoorigen}    ${Origen}
    Sleep    5s
    Clear Element Text    ${Campoorigen}

Filtro destino
    Sleep    3s
    Input Text When Element Is Visible    ${Campodestino}    ${Destino}
    Sleep    5s
    Clear Element Text    ${Campodestino}

Filtro estatus origen
    Sleep    3s
    Click Element When Visible    ${Filtroestatusorigen}
    Sleep    5s
    Click Element When Visible    ${Aceptada}
    Sleep    5s
    Click Element When Visible    ${Botonaceptar}
    Sleep    5s
    Click Element When Visible    ${Filtroestatusorigen}
    Sleep    5s
    Click Element When Visible    ${Aceptada}
    Sleep    5s
    Click Element When Visible    ${Botonaceptar}

Filtro fecha origen
    Sleep    3s
    Input Text When Element Is Visible    ${Campofechaorigen}    ${Fecha}
    Sleep    5s
    Press Keys    ${Campofechaorigen}    ENTER
    Sleep    5s
    Clear Element Text    ${Campofechaorigen}
    Press Keys    ${Campofechaorigen}    ENTER

Filtro estatus destino
    Sleep    3s
    Click Element When Visible    ${Filtroestatusdestino}
    Sleep    3s
    Click Element When Visible    ${Aceptada}
    Sleep    3s
    Click Element When Visible    ${Botonaceptar}
    Sleep    3s
    Click Element When Visible    ${Filtroestatusdestino}
    Sleep    3s
    Click Element When Visible    ${Aceptada}
    Sleep    3s
    Click Element When Visible    ${Botonaceptar}

Filtro fecha destino
    Sleep    3s
    Input Text When Element Is Visible    ${Campofechadestino}    ${Fecha}
    Sleep    5s
    Press Keys    ${Campofechadestino}    ENTER
    Sleep    5s
    Clear Element Text    ${Campofechadestino}
    Press Keys    ${Campofechadestino}    ENTER

Filtro tipo equipo
    Sleep    3s
    Input Text When Element Is Visible    ${Campotipoequipo}    ${Tipoequipo}
    Sleep    5s
    Clear Element Text    ${Campotipoequipo}

Filtro transportista
    #Sleep    3s
    #Click Element When Visible    ${Barraespaciadora}
    Sleep    5s
    Input Text When Element Is Visible    ${Campotransportista}    ${Transportistafiltro}
    Sleep    5s
    Clear Element Text    ${Campotransportista}

Filtro cantidad
    Sleep    7s
    Input Text When Element Is Visible    ${Campocantidad}    ${Cantidad}
    Sleep    5s
    Clear Element Text    ${Campocantidad}

Filtro Fecha
    Sleep    3s
    Input Text When Element Is Visible    ${Campofecha}    ${Fecha}
    Sleep    5s
    Press Keys    ${Campofecha}    ENTER
    Sleep    5s
    Clear Element Text    ${Campofecha}
    Press Keys    ${Campofecha}    ENTER

Filtro usuario
    Sleep    5s
    Input Text When Element Is Visible    ${Campousuario}    ${Usuario}
    Sleep    5s
    Clear Element Text    ${Campousuario}

Filtro observaciones
    Sleep    5s
    Input Text When Element Is Visible    ${Campoobservaciones}    ${Observacion}
    Sleep    5s
    Clear Element Text    ${Campoobservaciones}

Filtro guia de envio
    Sleep    5s
    Input Text When Element Is Visible    ${Filtrocampoguiadeenvio}    ${Guiadeenvio}
    Sleep    5s
    Clear Element Text    ${Filtrocampoguiadeenvio}

Checkbox mostrar pendientes
     Click Element When Visible    ${Checkboxmostrarpendientes}


