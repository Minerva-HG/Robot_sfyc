*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonreportes}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[8]
${Bottonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Campodescripcionreporte}  xpath=//input[@role='textbox'] 
${Textoreporte}  Listado de equipos por ubicación
${Reporte}  xpath=//td[normalize-space()='Listado de equipos por ubicación']
${Gridclasificacion}  xpath=//span[normalize-space()='Clasificación']
${Identificador}  xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Serie}  xpath=(//div[contains(@class,'dx-radiobutton-icon')])[1]
${Gridseleccion}  xpath=//span[normalize-space()='Selección']
${Checkboxtodostiposdeequipos}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Listadesplegabletiposdeequipos}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Equipo}  xpath=(//td[contains(.,'SET TOPS')])[1]
${Listadesplegablemodelos}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Modelo}  xpath=//td[contains(.,'B866V2F')]
${Checkboxtodoslosmodelos}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Bottonenviar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Checkboxtodaslasubicaciones}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Listadesplegableubicaciondesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Ubicaciondesde}  xpath=//td[normalize-space()='CIS TONALA  ALT/CAM']
${Listadesplegableubicacionhasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Ubicacionhasta}  xpath=//td[@aria-describedby='dx-col-9'][contains(.,'TERRANOVA ALTAS/CAM')]
${Gridmasopciones}  xpath=(//span[@class='dx-tab-text'][contains(.,'Más opciones')])[1]
${Checkboxtodosestados}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Listadesplegableestadosdesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Estadodesde}  xpath=//td[contains(.,'NO INICIALIZA')]
${Listadesplegableestadoshasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Checkboxtodostipocuadrilla}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Listadesplegabletipodecuadrilladesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[9]
${Tipodecuadrilladesde}  xpath=//td[normalize-space()='ALM Almacen']
${Listadesplegablecuadrilladesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[10]
${Listadesplegabletipodecuadrillahasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[11]
${Cuadrillahasta}  xpath=//td[contains(.,'ALM Almacen')]
${Listadesplegablecuadrillahasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[12]
${Gridmasopciones2}  xpath=(//span[@class='dx-tab-text'][contains(.,'Más opciones')])[2]
${Checkboxserie}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Campotextoserie}  xpath=//input[@name='serieId']
${Textoserie}  @$%/!_*
${Checkboxtodoslossuscriptores}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Listadesplegablesuscriptores}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[13]
${Suscriptor}  xpath=//td[normalize-space()='MA.DEL CARMEN RAMELLA OSUNA']
${Radiobuttonresidenciales}  xpath=(//div[contains(@class,'dx-radiobutton-icon')])[7]
${Radiobuttonempresariales}  xpath=(//div[contains(@class,'dx-radiobutton-icon')])[9]
${Radiobuttonambos}  xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]


*** Test Cases ***
Ingresar usuario
    
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    #Set Selenium Timeout    50s
    Sleep   5s
    Ingresar usuario contrasena

Pantalla resumen de equipos por ubicacion
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar reportes
    Sleep   8s    
    Seleccionar botton para desplegar reportes
    Sleep   5s
    Seleccionar campo descripcion reporte
    Sleep   5s
    Teclear nombre del reporte
    Sleep   5s
    Seleccionar reporte

Pestaña clasificacion
    Sleep   5s
    Seleccionar grid clasificación

Identificador
    Sleep   5s
    Seleccionar radio button indentificador

Serie
    Sleep   5s    
    Seleccionar radio button serie

Pestaña Seleccion
    Sleep    5s
    Seleccionar grid seleccion

Tipos de equipo
    Sleep    5s
    Seleccionar checkbox todos de tipos de equipos
    Sleep    5s
    Seleccionar lista desplegable tipos de equipo
    Sleep    5s
    Seleccionar equipo

Modelo
    Sleep    5s
    Seleccionar checkbox todos los modelos
    Sleep    5s
    Seleccionar lista desplegable modelos
    Sleep    5s
    Seleccionar modelo

Todas las ubicaciones
    Sleep    5s
    Seleccionar botton enviar

Ubicaciones por rango
    Sleep    15s
    Seleccionar checkbox todas las ubicaciones
    Sleep    5s
    Seleccionar botton lista desplegable ubicaciones
    Sleep    5s
    Seleccionar ubicacion
    Sleep    5s
    Seleccionar botton lista desplegable ubicaciones hasta
    Sleep    5s
    Seleccionar ubicacion hasta
    Sleep    5s

Mas opciones
    Sleep    5s
    Seleccionar grid mas opciones

Validar estados
    Sleep    5s
    Seleccionar checkbox todos estados
    Sleep    5s
    Seleccionar lista desplegable estados desde
    Sleep    5s
    Seleccionar estado desde
    Sleep    5s
    Seleccionar lista desplegable estados hasta
    Sleep    10s
    Seleccionar lista desplegable estados hasta

Validar tipo cuadrillas
    Sleep   5s
    Seleccionar checkbox todos tipo de cuadrilla
    Sleep   5s    
    Seleccionar lista desplegable tipo de cuadrilla desde
    Sleep   5s
    Seleccionar tipo de cuadrilla desde
    Sleep   5s
    Seleccionar lista desplegable cuadrilla desde
    Sleep   10s
    Seleccionar lista desplegable cuadrilla desde
    
#Validar cuadrillas
    #Sleep    5s
    #Seleccionar lista desplegable tipo de cuadrilla hasta
    #Sleep    5s
    #Seleccionar cuadrilla hasta
    #Sleep    5s
    #Seleccionar lista desplegable cuadrilla hasta

Mas opciones 2
    Sleep    5s
    Seleccionar grid mas opciones 2

Validar serie que no permita caracteres no validos
    Sleep    5s
    Seleccionar checbox todas las series
    Sleep    5s
    Seleccionar campo de texto serie
    Sleep    5s
    Teclear serie
    
Validar suscriptores
    Sleep    5s
    Seleccionar checkbox todos los suscriptores
    Sleep    5s
    Seleccionar lista desplegable suscriptores
    Sleep    8s
    Seleccionar suscriptor

Validar tipo suscriptores
    Sleep    5s
    Seleccionar residenciales
    Sleep    10s
    Seleccionar empresariales    
    Sleep    5s
    Seleccionar ambos

Campos vacios
    Sleep    5s
    Limpiar campo texto serie
    

*** Keyword ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar reportes
    Click element  ${Bottonreportes}

Seleccionar botton para desplegar reportes
    Click Element    ${Bottonparadesplegarreportes}

Seleccionar campo descripcion reporte
    Click Element    ${Campodescripcionreporte}

Teclear nombre del reporte
    Input Text    ${Campodescripcionreporte}    ${Textoreporte}

Seleccionar reporte
    Click Element    ${Reporte}

Seleccionar grid clasificación
    Click Element    ${Gridclasificacion}

Seleccionar radio button indentificador
    Click Element    ${Identificador}    

Seleccionar radio button serie
    Click Element    ${Serie}

Seleccionar grid seleccion
    Click Element    ${Gridseleccion}

Seleccionar checkbox todos de tipos de equipos
    Click Element    ${Checkboxtodostiposdeequipos}

Seleccionar lista desplegable tipos de equipo
    Click Element    ${Listadesplegabletiposdeequipos}

Seleccionar equipo
    Click Element    ${Equipo}

Seleccionar lista desplegable modelos
    Click Element    ${Listadesplegablemodelos}

Seleccionar modelo
    Click Element    ${Modelo}

Seleccionar checkbox todos los modelos
    Click Element    ${Checkboxtodoslosmodelos}

Seleccionar botton enviar
    Click Element    ${Bottonenviar}

Seleccionar checkbox todas las ubicaciones
    Click Element    ${Checkboxtodaslasubicaciones}

Seleccionar botton lista desplegable ubicaciones
    Click Element    ${Listadesplegableubicaciondesde}

Seleccionar ubicacion
    Click Element    ${Ubicaciondesde}

Seleccionar botton lista desplegable ubicaciones hasta
    Click Element    ${Listadesplegableubicacionhasta}

Seleccionar ubicacion hasta
    Click Element    ${Ubicacionhasta}

Seleccionar grid mas opciones
    Click Element    ${Gridmasopciones}

Seleccionar checkbox todos estados
    Click Element    ${Checkboxtodosestados}

Seleccionar lista desplegable estados desde
    Click Element    ${Listadesplegableestadosdesde}

Seleccionar estado desde
    Click Element    ${Estadodesde}

Seleccionar lista desplegable estados hasta
    Click Element    ${Listadesplegableestadoshasta}

Seleccionar checkbox todos tipo de cuadrilla
    Click Element    ${Checkboxtodostipocuadrilla}

Seleccionar lista desplegable tipo de cuadrilla desde
    Click Element    ${Listadesplegabletipodecuadrilladesde}

Seleccionar tipo de cuadrilla desde
    Click Element    ${Tipodecuadrilladesde}

Seleccionar lista desplegable cuadrilla desde
    Click Element    ${Listadesplegablecuadrilladesde}

Seleccionar lista desplegable tipo de cuadrilla hasta
    Click Element    ${Listadesplegabletipodecuadrillahasta}

Seleccionar cuadrilla hasta
    Click Element    ${Cuadrillahasta}

Seleccionar lista desplegable cuadrilla hasta
    Click Element    ${Listadesplegablecuadrillahasta}

Seleccionar grid mas opciones 2
    Click Element    ${Gridmasopciones2}

Seleccionar checbox todas las series
    Click Element    ${Checkboxserie}

Seleccionar campo de texto serie
    Click Element    ${Campotextoserie}

Teclear serie
    Input Text    ${Campotextoserie}    ${Textoserie}

Seleccionar checkbox todos los suscriptores
    Click Element    ${Checkboxtodoslossuscriptores}

Seleccionar lista desplegable suscriptores
    Click Element    ${Listadesplegablesuscriptores}

Seleccionar suscriptor
    Click Element    ${Suscriptor}

Seleccionar residenciales
    Click Element    ${Radiobuttonresidenciales}

Seleccionar empresariales
    Click Element    ${Radiobuttonempresariales}

Seleccionar ambos
    Click Element    ${Radiobuttonambos}

Limpiar campo texto serie
    Clear Element Text    ${Campotextoserie}