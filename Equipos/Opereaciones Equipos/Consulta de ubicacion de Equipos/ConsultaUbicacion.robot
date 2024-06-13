*** Settings ***
Documentation    Consulta de ubicacion de equipos
Library    SeleniumLibrary
Library    XML
#Library    RPA.Excel.Files


*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List     VVELASCO    YZGALINDO    AADRIANOB    VIMORALESA    AJMARELLANOA    RGALLARDOR    AGROBERTO    joriospe                                           
@{passL}=    Create List     Megacable2022*    CamilaPolett1112    Megacable.2023    Megacable2023    M1aYaretz1    Omega.2019    Megacable2021*    Mega12345                                                                                                                                                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla consulta ubicación de equipos#################################################################################
${Equipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/div[1]
${Bottonconsultaubicaciondeequipos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[2]/div/div/span
##############################Rutas archivos csv o txt############################################################################
${Rutaserietxt}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Reportes-QA\Consulta Ubicación de Equipos\Serie.txt
${Rutaseriecsv}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Reportes-QA\Consulta Ubicación de Equipos\Serie.csv
${Archivoconmasde1columnacsv}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Reportes-QA\Consulta Ubicación de Equipos\Equipos.csv
${Archivoconseriesdeotrasucursalcsv}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Reportes-QA\Consulta Ubicación de Equipos\Seriesdeotrasucursal.csv    
###############################Cierre de notificación######################################################################
${Notificacion_no_se_permite_mas_de_1_columna}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
###############################Icono actualizar#####################################################################################
${Icono_actualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
##############################################################################################
${Pestañaparaverfiltros}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Porserie}    xpath=//td[contains(.,'Serie')]
${Botonseleccionarelarchivo}    xpath=//span[@class='dx-button-text'][contains(.,'Seleccionar el archivo')]
${Botonlimpiararchivo}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar archivo')]
${Botonaceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
${Datosfacturacionyreparacion}    xpath=//span[contains(.,'Datos Facturación y Reparación')]
${Bottonregresarmenu}    xpath=//i[contains(@class,'dx-icon dx-icon-chevrondoubleleft')]
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
${Gruposucursal}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Filtrodescipcion}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[5]
${Descripcion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Filtrosucursal}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[6]
${Sucursal}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Filtrodescripcion2}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[7] 
${Descripcion2}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Filtroubicacion}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[8]
${Ubicacion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Filtroubicaciongrupo}    xpath=(//span[contains(@class,'dx-header-filter dx-header-filter-empty')])[9]
${Ubicaciongrupo}    xpath=(//span[@class='dx-checkbox-icon'])[6]
${Barradebusqueda}    xpath=//input[@aria-label='Buscar en la tabla de datos']
${Serie}    EC9BU5KAF191501
${Botoncancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
###########################Boton expandir todos################################################################
${Boton_expandir_todos}    xpath=//span[contains(.,'Expandir todos')]


*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Validacion de campos cua
    Filtrar por serie
    Boton seleccionar el archivo
    #Archivo por serie txt
    Boton limpiar archivo

Series de otra sucursal
    Boton seleccionar el archivo
    #Archivo con series de otra sucursal
    Boton aceptar

Archivo .CSV o TXT mas de una columna
    Boton limpiar
    Filtrar por serie
    Boton seleccionar el archivo
    #Archivo con mas de 1 columna
    Boton aceptar
    Cerrar notificacion

Campo CSV o TXT
    Boton seleccionar el archivo
    #Archivo por serie txt
    #Archivo por serie csv

Cargar archivo
    Boton aceptar

Exportar para procesos
    Checkbox exportar para procesos
    Exportar excel

Filtros
    Filtro por serie
    Filtro modelo
    Filtro grupo sucursal
    Filtro descripcion
    Filtro sucursal
    Filtro descripcion2
    Filtro ubicacion
    #Filtro ubicacion grupo

Campo buscar
    Filtro Buscar

Agrupar
    Checkbox agrupar
    Boton expandir todos

Boton limpiar
    Boton limpiar

Icono actualizar
    Icono actualizar

Boton cancelar
    Boton cancelar

*** Keyword ***
Validacion de usuarios
    FOR    ${counter}    IN RANGE    1     9 
    #FOR    ${counter}    IN RANGE    1     2
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
        Click Element    ${Equipos}
        Wait Until Element Is Visible    ${Bottonoperacionesequipos}
        Click Element    ${Bottonoperacionesequipos}
        Wait Until Element Is Visible    ${Bottonconsultaubicaciondeequipos}
        Click Element    ${Bottonconsultaubicaciondeequipos} 
    IF    ${counter} <= ${7}
        #Sleep    10s
        Close Browser
    END
   END

Filtrar por serie
    Sleep    5s
    Click Element    ${Pestañaparaverfiltros}
    Wait Until Element Is Visible    ${Porserie}
    Click Element    ${Porserie}

Boton seleccionar el archivo
    Wait Until Element Is Visible    ${Botonseleccionarelarchivo}
    Click Element    ${Botonseleccionarelarchivo}

Cerrar notificacion
    Wait Until Element Is Visible    ${Notificacion_no_se_permite_mas_de_1_columna}
    Click Element    ${Notificacion_no_se_permite_mas_de_1_columna}

Archivo por serie txt
    Sleep    5s
    #Click Element When Visible    ${Botonseleccionarelarchivo}
    Choose File    ${Botonseleccionarelarchivo}    ${Rutaserietxt}
    Sleep    5s
    Click Element    ${Botonaceptar}
    #Open File    ${Rutaserietxt}

Archivo por serie csv
    Choose File    ${Botonseleccionarelarchivo}    ${Rutaseriecsv}

Archivo con mas de 1 columna
    Choose File    ${Botonseleccionarelarchivo}    ${Archivoconmasde1columnacsv}

Archivo con series de otra sucursal
    Choose File    ${Botonseleccionarelarchivo}    ${Archivoconseriesdeotrasucursalcsv}

Boton limpiar archivo
    Sleep    17s
    Click Element    ${Botonlimpiararchivo}

Boton aceptar
    Sleep    5s
    ${Bandera_boton_aceptar_activo}=    Run Keyword And Return Status    Click Element    ${Botonaceptar}
    IF    '${Bandera_boton_aceptar_activo}' == 'True'
        Sleep    3s
    ELSE
        Boton aceptar
    END


Checkbox exportar para procesos
    Sleep    5s
    ${Bandera_checkbox_exportar_procesos_activo}=    Run Keyword And Return Status    Click Element    ${Checkboxexportarparaprocesos}
    IF    '${Bandera_checkbox_exportar_procesos_activo}' == 'True'
        Sleep    1s
    ELSE
        Checkbox exportar para procesos
    END

Exportar excel
    Wait Until Element Is Visible    ${Exportarexcel}
    Click Element    ${Exportarexcel}

Checkbox agrupar
    Wait Until Element Is Visible    ${Checkboxagrupar}
    Click Element    ${Checkboxagrupar}

Boton limpiar
    Sleep    3s
    Click Element    ${Botonlimpiar}

Icono actualizar
    Wait Until Element Is Visible    ${Icono_actualizar}
    Click Element    ${Icono_actualizar}

Filtro por serie
    Wait Until Element Is Visible    ${Filtroserie}
    Click Element    ${Filtroserie}
    Sleep    5s
    Click Element    ${Registro}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    7s
    Click Element    ${Filtroactivo}
    Wait Until Element Is Visible    ${Registro}
    Click Element    ${Registro}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro modelo
    Wait Until Element Is Visible    ${Filtromodelo}
    Click Element    ${Filtromodelo}
    Sleep    5s
    Click Element    ${Modelo}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtroactivo}
    Wait Until Element Is Visible    ${Modelo}
    Click Element    ${Modelo}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro grupo sucursal
    Wait Until Element Is Visible    ${Filtrogruposucursal}
    Click Element    ${Filtrogruposucursal}
    Sleep    5s
    Click Element    ${Gruposucursal}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtrogruposucursal}
    Wait Until Element Is Visible    ${Gruposucursal}
    Click Element    ${Gruposucursal}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro descripcion
    Wait Until Element Is Visible    ${Filtrodescipcion}
    Click Element    ${Filtrodescipcion}
    Sleep    5s
    Click Element    ${Descripcion}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtrodescipcion}
    Wait Until Element Is Visible    ${Descripcion}
    Click Element    ${Descripcion}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro sucursal
    Wait Until Element Is Visible    ${Filtrosucursal}
    Click Element    ${Filtrosucursal}
    Sleep    5s
    Click Element    ${Sucursal}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtrosucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro descripcion2
    Wait Until Element Is Visible    ${Filtrodescripcion2}
    Click Element    ${Filtrodescripcion2}
    Sleep    5s
    Click Element    ${Descripcion2}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtrodescripcion2}
    Wait Until Element Is Visible    ${Descripcion2}
    Click Element    ${Descripcion2}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro ubicacion
    Wait Until Element Is Visible    ${Filtroubicacion}
    Click Element    ${Filtroubicacion}
    Sleep    5s
    Wait Until Element Is Visible    ${Ubicacion}
    Click Element    ${Ubicacion}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtroactivo}
    Wait Until Element Is Visible    ${Ubicacion}
    Click Element    ${Ubicacion}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro Buscar
    Wait Until Element Is Visible    ${Barradebusqueda}
    Click Element    ${Barradebusqueda}
    Wait Until Element Is Visible    ${Barradebusqueda}
    Input Text    ${Barradebusqueda}    ${Serie}
    Sleep    7s
    Clear Element Text    ${Barradebusqueda}

Boton cancelar
    Sleep    5s
    #Scroll Element Into View    ${Botoncancelar}
    #Sleep    5s
    Click Element    ${Botoncancelar}

Boton expandir todos
    Wait Until Element Is Visible    ${Boton_expandir_todos}
    Click Element    ${Boton_expandir_todos}
