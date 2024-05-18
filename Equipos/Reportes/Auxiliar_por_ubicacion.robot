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
${Reporte}  xpath=//td[normalize-space()='Auxiliar de equipos por ubicación']
${Gridseleccion}  xpath=//span[normalize-space()='Selección']
${Checkboxtodostiposequipo}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Bottontiposdeequipo}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Gridclasificacion}  xpath=//span[normalize-space()='Clasificación']
${Checkboxidentificador}  xpath=//div[@class='dx-radiobutton-icon']
${Checkboxporserie}  xpath=//div[@class='dx-radiobutton-icon']
${Bottonenviar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Gridmasopciones}  xpath=(//span[@class='dx-tab-text'][contains(.,'Más opciones')])[2]
${Checkboxtodoslossuscriptores}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Bottondesplegartodoslossuscriptores}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[13]
${Gridmasopciones1}  xpath=//span[normalize-space()='Más opciones']
${Checkboxtodosestados}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Bottonlistadesplegableestado}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Bottonlistadesplegableestadohasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Checkboxtipodecuadrilla}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Listadesplegabletipodecuadrilla}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[9]
${Cuadrilla}  xpath=//td[normalize-space()='ALM Almacen']
${Listadesplegablecuadrilladesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[10]
${Seleccionartipodecuadrillahasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[11]
${Listadesplegablecuadrillahasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[12]
${Cuadrillahasta}  xpath=//div[@id='dx-42cc41d1-eb38-5732-f609-4268766ef9d0']/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[6]/td
${Checkboxtodosmodelosequipo}  xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Bottonlistadesplegablemodelosequipo}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Equipo}  xpath=//td[contains(.,'CABLE MODEMS')]
${Modelo}  xpath=(//td[contains(.,'3COM')])[1]
${Checkboxtodaslasubicaciones}  xpath=(//span[@class='dx-checkbox-icon'])[3]
${Bottonlistadesplegableubicaciondesde}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Bottonlistadesplegableubicacionhasta}  xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Suscriptor}  xpath=//td[normalize-space()='JOSE JULIO LOPEZ RAMELLA']
${Bottoncancelar}  xpath=//span[contains(.,'Cancelar')]



*** Test Cases ***
Ingresar usuario
    
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    #Set Selenium Timeout    50s
    Sleep   5s
    Ingresar usuario contrasena

Pantalla de auxiliar de equipos por ubicación
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar reportes
    Sleep   8s    
    Seleccionar botton para desplegar reportes
    Sleep   5s
    Seleccionar reporte
    Sleep   5s

Identificador
    Sleep    5s
    Seleccionar grid clasificacion
    Sleep    5s
    Seleccionar checbox por identificador
    Sleep    5s
    Seleccionar botton enviar

Serie    
    Sleep    10s
    Seleccionar checbox por serie
    Sleep    5s
    Seleccionar botton enviar
    Sleep    5s

Pestaña seleccion
    Sleep    10s
    Seleccionar grid seleccion

Modelo equipos y campo modelo cuente con "Todos"
    Sleep   5s
    Seleccionar checkbox todos de tipos de equipo
    Sleep   5s
    Seleccionar botton tipos de equipos
    Sleep   10s
    Seleccionar botton tipos de equipos
    Sleep   5s

Campos series
    Sleep   5s
    Seleccionar grid mas opciones

Listas desplegables
    Sleep   5s
    Seleccionar check box todos los suscriptores
    Sleep   5s
    Seleccionar botton para desplegar toda la lista de suscriptores
    Sleep   15s
    Seleccionar botton para desplegar toda la lista de suscriptores
    Sleep   5s
    Seleccionar mas opciones
    Sleep   5s
    Seleccionar checkbox todos estados
    Sleep   5s
    Seleccionar botton lista desplegable estado desde
    Sleep   15s
    Seleccionar botton lista desplegable estado desde
    Sleep   5s
    Seleccionar lista desplegable estado hasta
    Sleep   10s
    Seleccionar lista desplegable estado hasta
    Sleep   5s
    Seleccionar checbox todos tipo de cuadrilla
    Sleep   5s
    Seleccionar lista desplegable tipo de cuadrilla
    Sleep   5s
    Seleccionar cuadrilla
    Sleep   5s
    Seleccionar lista desplegable cuadrilla desde
    Sleep   12s
    Seleccionar lista desplegable cuadrilla desde
    Sleep   10s
    Seleccionar tipo de cuadrilla hasta
    Sleep   5s    
    Seleccionar tipo de cuadrilla hasta
    Sleep   10s
    Seleccionar grid seleccion
    Sleep   5s
    Seleccionar botton tipos de equipos
    Sleep   5s
    Seleccionar equipo
    Sleep   5s
    Seleccionar checkbox todos modelos equipo
    Sleep   5s
    Seleccionar botton lista desplegable todos los modelos de equipo
    Sleep   5s
    Seleccionar modelo
    Sleep   5s
    Seleccionar checkbox todas las ubicaciones
    Sleep   5s
    Seleccionar lista desplegable ubicacion desde
    Sleep   10s
    Seleccionar lista desplegable ubicacion desde
    Sleep   5s    
    Seleccionar lista desplegable ubicacion hasta
    Sleep   12s
    Seleccionar lista desplegable ubicacion hasta

Mas Opciones (1)
    Sleep    10s
    Seleccionar mas opciones

Mas opciones (2)
    Sleep    10s
    Seleccionar grid mas opciones

Tipo de suscriptor y validar suscriptores
    Sleep    5s
    Seleccionar grid mas opciones
    Sleep    5s
    Seleccionar check box todos los suscriptores
    Sleep    5s
    Seleccionar check box todos los suscriptores
    Sleep    5s
    Seleccionar botton para desplegar toda la lista de suscriptores
    Sleep    10s
    Seleccionar suscriptor

Botton cancelar
    Sleep    5s
    Seleccionar botton cancelar

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

Seleccionar reporte
    Click Element    ${Reporte}

Seleccionar checkbox todos de tipos de equipo
    Click Element    ${Checkboxtodostiposequipo}

Seleccionar grid seleccion
    Click Element    ${Gridseleccion}

Seleccionar botton tipos de equipos
    Click Element    ${Bottontiposdeequipo}

Seleccionar grid clasificacion
    Click Element    ${Gridclasificacion}

Seleccionar checbox por identificador
    Click Element    ${Checkboxidentificador}
Seleccionar checbox por serie
    Click Element    ${Checkboxporserie}

Seleccionar botton enviar
    Click Element    ${Bottonenviar}

Seleccionar grid mas opciones
    Click Element    ${Gridmasopciones}

Seleccionar check box todos los suscriptores
    Click Element    ${Checkboxtodoslossuscriptores}

Seleccionar botton para desplegar toda la lista de suscriptores
    Click Element    ${Bottondesplegartodoslossuscriptores}

Seleccionar mas opciones
    Click Element    ${Gridmasopciones1}

Seleccionar checkbox todos estados
    Click Element    ${Checkboxtodosestados}

Seleccionar botton lista desplegable estado desde
    Click Element    ${Bottonlistadesplegableestado}

Seleccionar lista desplegable estado hasta
    Click Element    ${Bottonlistadesplegableestadohasta}

Seleccionar checbox todos tipo de cuadrilla
    Click Element    ${Checkboxtipodecuadrilla}

Seleccionar lista desplegable tipo de cuadrilla
    Click Element    ${Listadesplegabletipodecuadrilla}

Seleccionar cuadrilla
    Click Element    ${Cuadrilla}

Seleccionar lista desplegable cuadrilla desde
    Click Element    ${Listadesplegablecuadrilladesde}

Seleccionar tipo de cuadrilla hasta
    Click Element    ${Seleccionartipodecuadrillahasta}

Seleccionar lista desplegable cuadrilla hasta
    Click Element    ${Listadesplegablecuadrillahasta}   

Seleccionar cuadrilla hasta
    Click Element    ${Cuadrillahasta}

Seleccionar checkbox todos modelos equipo
    Click Element    ${Checkboxtodosmodelosequipo}

Seleccionar botton lista desplegable todos los modelos de equipo
    Click Element    ${Bottonlistadesplegablemodelosequipo}

Seleccionar equipo
    Click Element    ${Equipo}

Seleccionar modelo
    Click Element    ${Modelo}

Seleccionar checkbox todas las ubicaciones
    Click Element    ${Checkboxtodaslasubicaciones}

Seleccionar lista desplegable ubicacion desde
    Click Element    ${Bottonlistadesplegableubicaciondesde}

Seleccionar lista desplegable ubicacion hasta
    Click Element    ${Bottonlistadesplegableubicacionhasta}

Seleccionar suscriptor
    Click Element    ${Suscriptor}

Seleccionar botton cancelar
    Click Element    ${Bottoncancelar}