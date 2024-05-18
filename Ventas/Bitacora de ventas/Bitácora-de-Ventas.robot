*** Settings ***
Library  SeleniumLibrary
Library  String    
#Library    RPA.Browser.Selenium   auto_close=${FALSE}

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${ventas}    xpath=(//div[contains(.,'Ventas')])[11]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]/ul/li[1]
${Bitacora_de_ventas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[5]
#fechas
${Calendar}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[3]
${retroceder}    xpath=/html/body/div[3]/div/div/div/div[2]/a[1]
${Fecha1}    xpath=(//span[contains(.,'1')])[46]
#Aceptar
${Aceptar}    xpath=//span[normalize-space()='Aceptar']
#Busqueda
${Campo_buscar_en_vitacora_de_ventas}   xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
${input}     xpath=Jose
${Titulo}    xpath=//div[@class='title-form'][contains(.,'BITÁCORA DE VENTAS')]
${element}     xpath=//span[contains(.,'Bitácora de Ventas')]
#Compañia
${nomina}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${dropnomina}    xpath=//td[normalize-space()='Megaventas']
${numeroempleado}    xpath=//input[contains(@min,'1')]
${Abordaje}     xpath=//span[contains(.,'Bitácora de abordaje')]
#encuesta
${Agregar}     xpath=//div[@class='dx-button-content'][contains(.,'Agregar una fila')]
${Nombre}     xpath=(//input[contains(@autocomplete,'off')])[23]
${Nuevo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${TV}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${columnatel}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/app-tracking-sale-container/div/app-tracking-sale-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[9]
${TEL1}     xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/app-tracking-sale-container/div/app-tracking-sale-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[23]
#Campo telefono
${Campo_telefono}    xpath=/html/body/div[2]/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/app-tracking-sale-container/div/app-tracking-sale-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[23]/div[1]/div/div[1]/input
#Consultar bitacora de ventas
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-logbook-sales-container/div/div[2]/app-logbook-sales-form/form/div[1]/dx-date-box/div[1]/div/div[1]/input
${Fecha_desde}    xpath=(//span[contains(.,'1')])[2]
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-logbook-sales-container/div/div[2]/app-logbook-sales-form/form/div[2]/dx-date-box/div/div/div[1]/input
${Fecha_hasta}    xpath=(//span[contains(.,'11')])[3]
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Icono_exportar}    xpath=(//i[contains(@class,'dx-icon dx-icon-xlsxfile')])[1]
${Texto_ha_buscar}    BAÑUELOS PREZA JESSICA SUJEIT    
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
${Catalogos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]/ul/li[2]

*** Test Cases ***
Consultar Bitácora de ventas 
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena
    Ingresar a bitacora de ventas
    Sleep    2s
    Validar titulo 
    Fecha desde
    Fecha hasta
    Boton aceptar 
    Exportar
    Buscar en la bitacora de ventas
    Boton limpiar       

Consultar Bitácora de ventas abordaje
    Sleep    2s
    Seleccionar botón de abordaje
    Sleep    2s
    Ingresar datos del vendedor
    Sleep    2s
    Iniciar fechas
    Sleep   2s
  #  Seleccionar aceptar
    Encuesta
    

*** Keyword ***
Ingresar usuario contrasena
    Sleep    5s
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresar a bitacora de ventas
    [Documentation]    Ingresamos a SFYC General
    Sleep    10s
    Click Element    ${ventas}
    Wait Until Element Is Visible    ${Operaciones}
    Click Element    ${Operaciones}
    Sleep   3s
    Scroll Element Into View    ${Catalogos}
    Wait Until Element Is Visible    ${Bitacora_de_ventas}
    Click Element    ${Bitacora_de_ventas}

Validar titulo 
    Sleep    5s
    #Click Element   ${element}
    Wait Until Element Contains    xpath=//div[@class='title-form']    BITÁCORA DE VENTAS
    Log    CONTIENE EL TITULO CORRECTO

Seleccionar botón de abordaje
    Wait Until Element Is Visible    ${Abordaje}
    Click Element   ${Abordaje}

Ingresar datos del vendedor
    Click Element    ${nomina}
    Sleep    5s
    Click Element    ${dropnomina} 
    Input Text    ${numeroempleado}    160294
    Press Keys    ${numeroempleado}    ENTER

Iniciar fechas
    Click Element    ${Calendar}
    Sleep   3s
    #Click Element    ${retroceder}
    #Sleep   3s
    #Click Element    ${Fecha1}
    Click Element    ${Calendar}    

Seleccionar aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}


Encuesta
    Wait Until Element Is Visible    ${Agregar}
    Click Element    ${Agregar}
    Wait Until Element Is Visible    ${Nombre}
    Input Text    ${Nombre}    Minerva
    Click Element    ${Nuevo}
    Click Element    ${TV}
    Sleep    2s
    Scroll Element Into View    xpath=//td[contains(@aria-describedby,'dx-col-25')]
    #Execute JavaScript    window.scrollTo(1050, 800)
    #Run Keyword And Ignore Error    Scroll Element Into View    /html[1]/body[1]/div[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-tracking-sale-container[1]/div[1]/app-tracking-sale-grid[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]
    Scroll Element Into View    xpath=//dx-data-grid[@class='tracking-sale-grid dx-widget dx-visibility-change-handler']//div[@class='dx-datagrid-content']
    #Sleep    12s
    #Wait Until Element Contains    ${columnatel}   TELÉFONO DE CONTACTO
    Sleep    5s
    Scroll Element Into View    ${TEL1}
    Sleep    3s
    Click Element    ${TEL1}
    #Wait Until Element Is Visible    ${TEL1}
    #Scroll Element Into View    ${Campo_telefono}
    #Sleep    3s
    #Click Element    ${TEL1}
    Sleep    5s    
    Input Text    ${TEL1}    3316388502
    Wait Until Element Is Visible    xpath=//i[@class='dx-icon dx-icon-edit-button-save']
    Click Element    xpath=//i[@class='dx-icon dx-icon-edit-button-save']

Fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}

Fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Boton aceptar 
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Exportar
    Sleep    15s    
    Click Element    ${Icono_exportar}

Buscar en la bitacora de ventas
    Wait Until Element Is Visible    ${Campo_buscar_en_vitacora_de_ventas}        
    Click Element    ${Campo_buscar_en_vitacora_de_ventas}
    Input Text    ${Campo_buscar_en_vitacora_de_ventas}    ${Texto_ha_buscar} 
    Sleep    4s   

Boton limpiar
    Sleep    5s
    Scroll Element Into View    ${Boton_limpiar}
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}
