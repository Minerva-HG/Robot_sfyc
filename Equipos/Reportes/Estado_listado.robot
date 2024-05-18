*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonreportes}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[8]
${Bottonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Campodescripcion}  xpath=//input[@role='textbox']
${Nombrereporte}    Listado de equipos
${Reporte}    xpath=//td[normalize-space()='Listado de equipos']
${Gridclasificacion}    xpath=//span[@class='dx-tab-text'][contains(.,'Clasificación')]
${Bottonaceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Checkboxporidentificador}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Gridseleccion}    xpath=//span[@class='dx-tab-text'][contains(.,'Selección')]
${Checkboxtodoslosequipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Listadequipos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Equipo}    xpath=//td[contains(.,'MAXCOM eMTA')]
${Checkboxtodoslosmodelos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Listamodelos}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Modelo}    xpath=//td[contains(.,'ISA')]
${Checkboxubicacionesdesde}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Listaubicaciondesde}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Ubicaciondesde}    xpath=//td[contains(.,'CENTRAL ALTAS/CAMBIO')]
${Listaubicacionhasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Ubicacionhasta}    xpath=//td[@aria-describedby='dx-col-9'][contains(.,'CIS P DE SOL ALT/CAM')]
${Gridmasopciones}    xpath=(//span[@class='dx-tab-text'][contains(.,'Más opciones')])[1]
${Checkboxtodoslosestados}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Listaestadosdesde}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Estadodesde}    xpath=//td[contains(.,'DAÑADOS')]
${Listaestadohasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Estadohasta}    xpath=(//td[contains(.,'ERROR DE AUDIO')])[2]
${Checkboxtodostipodecuadrilla}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Campodescripcionubicacionhasta}    xpath=(//input[contains(@class,'dx-texteditor-input')])[22]
${Textoubicacionhasta}    CIS P DE SOL ALT/CAM
${Bottonlistatipodecuadrilladesde}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[9]
${Tipodecuadrilladesde}    xpath=//td[contains(.,'ALM Almacen')]
${Bottonlistacuadrilladesde}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[10]
${Cuadrilladesde}    xpath=//td[contains(.,'0005')]
#${Bottonlistatipodecuadrillahasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[11]
#${Tipodecuadrillahasta}    xpath=(//input[contains(@class,'dx-texteditor-input')])[22]
#${Bottonlistacuadrillahasta}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[12]
#${Cuadrillahasta}    xpath=//td[@aria-describedby='dx-col-13'][contains(.,'A   Auditoria')] 
${Checkboxtodoslostiposdecuadrilla}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6] 
${Bottoncancelar}    xpath=//span[@class='dx-button-text'][contains(.,'Cancelar')]
${Bottonlimpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
${Gridmasopciones2}    xpath=(//span[@class='dx-tab-text'][contains(.,'Más opciones')])[2]
${Checkboxtodaslasseries}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Checkboxtodoslossuscriptores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Bottonlistatodoslossuscriptores}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[13]
${Suscriptor}    xpath=//td[contains(.,'HECTOR VICENTE GONZALEZ LARA')]
${Checkboxresidenciales}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[7]
${Checkboxempresariales}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[9]
${Checkboxambos}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]


*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de resumen de equipos por estado
    Seleccionar menu
    Seleccionar reportes
    Seleccionar botton para desplegar reportes
    Seleccionar campo descripcion
    Teclear nombre de reporte
    Seleccionar reporte

Clasificación
    Seleccionar grid clasificacion

Por serie
    Seleccionar botton aceptar

Por identificador
    Sleep    7s
    Seleccionar checkbox por identificador
    Seleccionar botton aceptar

Seleccion
    Sleep    5s
    Seleccionar grid seleccion
    Seleccionar checkbox todos los tipos de equipos
    Selecciona lista tipos de equipos
    Seleccionar equipo
    Seleccionar checkbox todos los modelos
    Seleccionar lista modelos
    Seleccionar modelo
    Seleccionar checkbox todas las ubicaciones desde
    Seleccionar lista ubicacion desde
    Seleccionar ubicacion desde
    Seleccionar lista ubicacion hasta
    Seleccionar campo descripcion ubicacion hasta
    Teclear ubicacion hasta
    Seleccionar ubicacion hasta
    Seleccionar botton aceptar

Mas opciones 
    Sleep    7s 
    Seleccionar grid mas opciones1  
    Seleccionar checkbox todos los estados
    Seleccionar botton lista estados desde
    Seleccionar estado desde
    Seleccionar botton lista estado hasta
    Seleccionar estado hasta
    Seleccionar checkbox todos tipo de cuadrilla
    Seleccionar botton lista tipo de cuadrilla desde
    Seleccionar tipo de cuadrilla desde
    Seleccionar botton lista cuadrilla desde
    Seleccionar cuadrilla desde
    #Seleccionar botton lista tipo de cuadrilla hasta
    #Seleccionar tipo de cuadrilla hasta
    #Seleccionar botton lista cuadrilla hasta
    #Seleccionar cuadrilla hasta
    Seleccionar checkbox todos los tipos de cuadrilla

Boton enviar
    Seleccionar botton aceptar 
    
Boton limpiar
    Sleep    5s
    Seleccionar botton limpiar

Modelo equipos
    Seleccionar grid seleccion
    Seleccionar checkbox todos los tipos de equipos
    Sleep    5s
    Seleccionar checkbox todos los modelos

Validacion series y suscriptores
    Seleccionar grid mas opciones2
    Sleep    5s
    Seleccionar checkbox todos los suscriptores
    Seleccionar botton lista desplegable suscriptores 
    Seleccionar suscriptor
    Seleccionar checkbox todas las series 
    Sleep    3s    
    Seleccionar checkbox todas las series

Tipo de 
    Seleccionar botton limpiar
    Seleccionar grid mas opciones2
    Sleep    5s
    Seleccionar checkbox todos los suscriptores
    Seleccionar botton lista desplegable suscriptores
    Seleccionar suscriptor
    Seleccionar checkbox Residenciales
    Seleccionar botton aceptar
    Sleep    5s
    Seleccionar checkbox Empresariales
    Seleccionar botton aceptar
    Sleep    5s
    Seleccionar checkbox Ambos
    Seleccionar botton aceptar
    
Boton cancelar
    Sleep    5s
    Seleccionar botton cancelar


*** Keyword ***
Ingresar usuario contrasena
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element If Visible   name:button

Seleccionar menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    17s
    Click Element    ${Bottonmenu}

Seleccionar reportes
    Wait Until Element Is Visible    ${Bottonreportes}
    Click Element    ${Bottonreportes}

Seleccionar botton para desplegar reportes
    Wait Until Element Is Visible    ${Bottonparadesplegarreportes}
    Click Element    ${Bottonparadesplegarreportes}

Seleccionar campo descripcion
    Wait Until Element Is Visible    ${Campodescripcion}   
    Click Element    ${Campodescripcion}

Teclear nombre de reporte
    Input Text When Element Is Visible    ${Campodescripcion}   ${Nombrereporte}

Seleccionar reporte
    Wait Until Element Is Visible    ${Reporte}   
    Click Element    ${Reporte}

Seleccionar grid clasificacion
    Wait Until Element Is Visible    ${Gridclasificacion}   
    Click Element    ${Gridclasificacion}

Seleccionar botton aceptar
    Wait Until Element Is Visible    ${Bottonaceptar}   
    Click Element    ${Bottonaceptar}

Seleccionar checkbox por identificador
    Wait Until Element Is Visible    ${Checkboxporidentificador}   
    Click Element    ${Checkboxporidentificador}

Seleccionar grid seleccion
    Wait Until Element Is Visible    ${Gridseleccion}   
    Click Element    ${Gridseleccion}
    
Seleccionar checkbox todos los tipos de equipos
    Wait Until Element Is Visible    ${Checkboxtodoslosequipos}
    Sleep    3s
    Click Element    ${Checkboxtodoslosequipos}

Selecciona lista tipos de equipos
    Wait Until Element Is Visible    ${Listadequipos}   
    Click Element    ${Listadequipos}

Seleccionar equipo
    Wait Until Element Is Visible    ${Equipo}   
    Click Element    ${Equipo}

Seleccionar checkbox todos los modelos
    Wait Until Element Is Visible    ${Checkboxtodoslosmodelos}   
    Click Element    ${Checkboxtodoslosmodelos}

Seleccionar lista modelos
    Wait Until Element Is Visible    ${Listamodelos}   
    Click Element    ${Listamodelos}

Seleccionar modelo
    Wait Until Element Is Visible    ${Modelo}   
    Click Element    ${Modelo}

Seleccionar checkbox todas las ubicaciones desde
    Wait Until Element Is Visible    ${Checkboxubicacionesdesde} 
    Click Element    ${Checkboxubicacionesdesde}

Seleccionar lista ubicacion desde
    Wait Until Element Is Visible    ${Listaubicaciondesde}  
    Click Element    ${Listaubicaciondesde}

Seleccionar ubicacion desde
    Wait Until Element Is Visible    ${Ubicaciondesde}  
    Click Element    ${Ubicaciondesde}

Seleccionar lista ubicacion hasta
    Wait Until Element Is Visible    ${Listaubicacionhasta}  
    Click Element    ${Listaubicacionhasta}

Seleccionar ubicacion hasta
    Wait Until Element Is Visible    ${Ubicacionhasta}
    #Sleep    7s  
    Click Element    ${Ubicacionhasta}

Seleccionar grid mas opciones1
    Wait Until Element Is Visible    ${Gridmasopciones}  
    Click Element    ${Gridmasopciones}

Seleccionar checkbox todos los estados
    Wait Until Element Is Visible    ${Checkboxtodoslosestados}
    Sleep    3s  
    Click Element    ${Checkboxtodoslosestados}

Seleccionar botton lista estados desde
    Wait Until Element Is Visible    ${Listaestadosdesde}  
    Click Element    ${Listaestadosdesde}

Seleccionar estado desde
    Wait Until Element Is Visible    ${Estadodesde}  
    Click Element    ${Estadodesde}
    
Seleccionar botton lista estado hasta
    Wait Until Element Is Visible    ${Listaestadohasta}  
    Click Element    ${Listaestadohasta}

Seleccionar estado hasta
    Click Element When Visible    ${Estadohasta} 

Seleccionar checkbox todos tipo de cuadrilla
    Wait Until Element Is Visible    ${Checkboxtodostipodecuadrilla}  
    Click Element    ${Checkboxtodostipodecuadrilla} 

Seleccionar campo descripcion ubicacion hasta
    Wait Until Element Is Visible    ${Campodescripcionubicacionhasta}
    Sleep    3s  
    Click Element    ${Campodescripcionubicacionhasta}

Teclear ubicacion hasta
    Input Text When Element Is Visible    ${Campodescripcionubicacionhasta}   ${Textoubicacionhasta}

Seleccionar botton lista tipo de cuadrilla desde
    Wait Until Element Is Visible    ${Bottonlistatipodecuadrilladesde}  
    Click Element    ${Bottonlistatipodecuadrilladesde}

Seleccionar tipo de cuadrilla desde
    Click Element When Visible    ${Tipodecuadrilladesde}  

Seleccionar botton lista cuadrilla desde
    Wait Until Element Is Visible    ${Bottonlistacuadrilladesde}  
    Click Element    ${Bottonlistacuadrilladesde}

Seleccionar cuadrilla desde
    Click Element When Visible    ${Cuadrilladesde}  

#Seleccionar botton lista tipo de cuadrilla hasta
    #Wait Until Element Is Visible    ${Bottonlistatipodecuadrillahasta}  
    #Click Element    ${Bottonlistatipodecuadrillahasta}

#Seleccionar tipo de cuadrilla hasta
    #Wait Until Element Is Visible    ${Tipodecuadrillahasta}
    #Sleep    5s    
    #Wait Until Page Contains Element    ${Tipodecuadrillahasta}
    #Click Element When Visible    ${Tipodecuadrillahasta}

#Seleccionar botton lista cuadrilla hasta
    #Wait Until Element Is Visible    ${Bottonlistacuadrillahasta}  
    #Click Element    ${Bottonlistacuadrillahasta}

#Seleccionar cuadrilla hasta
    #Click Element When Visible   ${Cuadrillahasta}  
    #Click Element    ${Cuadrillahasta}

Seleccionar checkbox todos los tipos de cuadrilla
    Wait Until Element Is Visible    ${Checkboxtodoslostiposdecuadrilla}  
    Click Element    ${Checkboxtodoslostiposdecuadrilla}

Seleccionar botton cancelar
    Wait Until Element Is Visible    ${Bottoncancelar}  
    Click Element    ${Bottoncancelar}

Seleccionar botton limpiar
    Wait Until Element Is Visible    ${Bottonlimpiar}  
    Click Element    ${Bottonlimpiar}
    
Seleccionar grid mas opciones2
    Wait Until Element Is Visible    ${Gridmasopciones2}  
    Click Element    ${Gridmasopciones2}

Seleccionar checkbox todas las series
    Wait Until Element Is Visible    ${Checkboxtodaslasseries}  
    Click Element    ${Checkboxtodaslasseries}

Seleccionar checkbox todos los suscriptores
    Click Element When Visible    ${Checkboxtodoslossuscriptores}  
    #Click Element    ${Checkboxtodoslossuscriptores}

Seleccionar botton lista desplegable suscriptores
    Wait Until Element Is Visible    ${Bottonlistatodoslossuscriptores}  
    Click Element    ${Bottonlistatodoslossuscriptores}

Seleccionar suscriptor
    Wait Until Element Is Visible    ${Suscriptor}  
    Click Element    ${Suscriptor}

Seleccionar checkbox Residenciales
    Wait Until Element Is Visible    ${Checkboxresidenciales}  
    Click Element    ${Checkboxresidenciales}

Seleccionar checkbox Empresariales
    Wait Until Element Is Visible    ${Checkboxempresariales}  
    Click Element    ${Checkboxempresariales}

Seleccionar checkbox Ambos
    Wait Until Element Is Visible    ${Checkboxambos}  
    Click Element    ${Checkboxambos}