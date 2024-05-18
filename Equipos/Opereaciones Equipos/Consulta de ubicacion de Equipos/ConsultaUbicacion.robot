*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Excel.Files
Library    RPA.Desktop
Library    RPA.Windows

*** Variables ***
${Rutaserietxt}    C:/Proyectos/Robot_sfyc/Inventarios/Operaciones Equipos/Consulta ubicacion de equipos/Fac yREP.csv
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottonconsultaubicaciondeequipos}    xpath=//span[contains(.,'Consulta Ubicación de Equipos')]
${Pestañaparaverfiltros}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Porserie}    xpath=//td[contains(.,'Serie')]
${Botonseleccionarelarchivo}    xpath=//span[@class='dx-button-text'][contains(.,'Seleccionar el archivo')]
${Botonlimpiararchivo}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar archivo')]
${Botonaceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
${Datosfacturacionyreparacion}    xpath=//span[contains(.,'Datos Facturación y Reparación')]
${Bottonregresarmenu}    xpath=(//i[contains(@class,'dx-icon dx-icon-menu')])[1]
${Iconocargarporarchivo}    xpath=//i[contains(@class,'dx-icon dx-icon-folder')]
${Pestañatipoequipo}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Equipo}    xpath=//td[contains(.,'ACCESS POINT')]
${Closenotificacion}    xpath=//i[@class='dx-icon dx-icon-close']
${Checkboxexportarparaprocesos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Exportarexcel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
${Checkboxagrupar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Botonlimpiar}    xpath=(//div[@class='dx-button-content'][contains(.,'Limpiar')])[2]
${Filtroserie}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[1]
${Registro}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Botonaceptarfiltro}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[2]
${Filtromodelo}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[3]
${Modelo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Filtroactivo}    xpath=//span[@class='dx-header-filter']
${Filtrogruposucursal}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[4]
${Gruposucursal}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Filtrodescipcion}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[5]
${Descripcion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Filtrosucursal}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[6]
${Sucursal}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Filtrodescripcion2}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[7]
${Descripcion2}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Filtroubicacion}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[8]
${Ubicacion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Filtroubicaciongrupo}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[9]
${Ubicaciongrupo}    xpath=(//span[@class='dx-checkbox-icon'])[6]
${Barradebusqueda}    xpath=//input[@aria-label='Buscar en la tabla de datos']
${Serie}    EC9BU5KAF191501
${Botoncancelar}    xpath=//span[contains(.,'Cancelar')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla de consulta ubicacion de equipos
    Seleccionar menu
    Seleccionar operaciones equipos
    Seleccionar consulta ubicacion de equipos

Validacion de campos cua
    Filtrar por serie
    #Boton seleccionar el archivo
    #Archivo por serie txt
    #Boton limpiar archivo

Cargar archivo
    #Boton seleccionar el archivo
    Archivo por serie txt
    #Sleep    7s
    #Boton aceptar

#Archivo de facturacion y reparacion
    #Menu
    #Seleccionar operaciones equipos
    #Seleccionar datos facturacion y reparacion
    #icono cargar por archivo

#Cargar mas de 2 mil equipos
    #Tipo de equipo
    #Boton seleccionar el archivo
    #Boton aceptar

#Exportar para procesos
    #Quitar notificacion
    #Menu
    #Seleccionar operaciones equipos
    #Seleccionar consulta ubicacion de equipos
    #Filtrar por serie
    #Boton seleccionar el archivo
    #Archivo por serie txt
    #Boton aceptar
    #Checkbox exportar para procesos
    #Exportar excel

#Filtros
    #Filtro por serie
    #Filtro modelo
    #Filtro grupo sucursal
    #Filtro descripcion
    #Filtro sucursal
    #Filtro descripcion2
    #Filtro ubicacion
    #Filtro ubicacion grupo
    #Filtro Buscar

#Agrupar
    #Boton limpiar
    #Filtrar por serie
    #Boton seleccionar el archivo
    #Archivo por serie txt
    #Sleep    7s
    #Checkbox exportar para procesos
    #Checkbox agrupar
    #Boton aceptar

#Boton limpiar
    #Boton limpiar

#Boton cancelar
    #Boton cancelar

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

Seleccionar consulta ubicacion de equipos
    Click Element When Visible    ${Bottonconsultaubicaciondeequipos}

Filtrar por serie
    Sleep    5s
    Click Element When Visible    ${Pestañaparaverfiltros}
    Click Element When Visible    ${Porserie}

Boton seleccionar el archivo
    Click Element When Visible    ${Botonseleccionarelarchivo}

Archivo por serie txt
    Sleep    5s
    #Click Element When Visible    ${Botonseleccionarelarchivo}
    Choose File    ${Botonseleccionarelarchivo}    ${Rutaserietxt}
    #Open File    ${Rutaserietxt}

Boton limpiar archivo
    Sleep    17s
    Click Element When Visible    ${Botonlimpiararchivo}

Boton aceptar
    Sleep    17s
    Click Element When Visible    ${Botonaceptar}

Seleccionar datos facturacion y reparacion
    Click Element When Visible    ${Datosfacturacionyreparacion}

Menu
    Sleep    5s
    Click Element When Visible    ${Bottonregresarmenu}

icono cargar por archivo
    Click Element When Visible    ${Iconocargarporarchivo}

Tipo de equipo
    Click Element When Visible    ${Pestañatipoequipo}
    Click Element When Visible    ${Equipo}

Quitar notificacion
    Click Element When Visible    ${Closenotificacion}

Checkbox exportar para procesos
    Sleep    4s
    Click Element When Visible    ${Checkboxexportarparaprocesos}

Exportar excel
    Click Element When Visible    ${Exportarexcel}

Checkbox agrupar
    Click Element When Visible    ${Checkboxagrupar}

Boton limpiar
    Sleep    3s
    Click Element When Visible    ${Botonlimpiar}

Filtro por serie
    Click Element When Visible    ${Filtroserie}
    Click Element When Visible    ${Registro}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    7s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Registro}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro modelo
    Click Element When Visible    ${Filtromodelo}
    Click Element When Visible    ${Modelo}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Modelo}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro grupo sucursal
    Click Element When Visible    ${Filtrogruposucursal}
    Click Element When Visible    ${Gruposucursal}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Gruposucursal}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro descripcion
    Click Element When Visible    ${Filtrodescipcion}
    Click Element When Visible    ${Descripcion}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Descripcion}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro sucursal
    Click Element When Visible    ${Filtrosucursal}
    Click Element When Visible    ${Sucursal}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Sucursal}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro descripcion2
    Click Element When Visible    ${Filtrodescripcion2}
    Click Element When Visible    ${Descripcion2}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Descripcion2}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro ubicacion
    Click Element When Visible    ${Filtroubicacion}
    Click Element When Visible    ${Ubicacion}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Ubicacion}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro ubicacion grupo
    Click Element When Visible    ${Filtroubicaciongrupo}
    Click Element When Visible    ${Ubicaciongrupo}
    Click Element When Visible    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element When Visible    ${Filtroactivo}
    Click Element When Visible    ${Ubicaciongrupo}
    Click Element When Visible    ${Botonaceptarfiltro}

Filtro Buscar
    Click Element When Visible    ${Barradebusqueda}
    Input Text When Element Is Visible    ${Barradebusqueda}    ${Serie}
    Sleep    7s
    Clear Element Text    ${Barradebusqueda}

Boton cancelar
    Click Element When Visible    ${Botoncancelar}
