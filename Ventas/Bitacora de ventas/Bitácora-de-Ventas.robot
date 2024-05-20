*** Settings ***
Library  SeleniumLibrary
Library  String    
#Library    RPA.Browser.Selenium   auto_close=${FALSE}

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}   https://ventas.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${ventas}    xpath=//li[@aria-label='Ventas']
#fechas
${Calendar}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[3]
${retroceder}    xpath=//i[@class='dx-icon dx-icon-chevronleft']
${Fecha1}    xpath=(//span[contains(.,'14')])[1]
#Aceptar
${Aceptar}    xpath=//span[normalize-space()='Aceptar']
#Busqueda
${Buscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
${input}     xpath=Jose
${Titulo}    xpath=//div[@class='title-form'][contains(.,'BITÁCORA DE VENTAS')]
${element}     xpath=//span[contains(.,'Bitácora de Ventas')]
#Compañia
${nomina}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${dropnomina}    xpath=//td[normalize-space()='Megaventas']
${numeroempleado}    xpath=//input[contains(@min,'1')]
${Abordaje}     xpath=(//span[@class='dx-button-text'])[1]
#encuesta
${Agregar}     xpath=//div[@class='dx-button-content'][contains(.,'Agregar una fila')]
${Nombre}     xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/app-tracking-sale-container[1]/div[1]/app-tracking-sale-grid[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/div[1]/div[1]/div[1]/input[1]
${Nuevo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${TV}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${columnatel}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/app-tracking-sale-container/div/app-tracking-sale-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[9]
${TEL1}     xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/app-tracking-sale-container/div/app-tracking-sale-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[23]
#Campo telefono
${Campo_telefono}    xpath=/html/body/div/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/app-tracking-sale-container/div/app-tracking-sale-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[23]/div/div/div/div[1]/input

*** Test Cases ***
        
Consultar Bitácora de ventas abordaje
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Sleep    2s
    Validar titulo 
    Sleep    2s
    Seleccionar botón de abordaje
    Sleep    2s
    Ingresar datos del vendedor
    Sleep    2s
    Iniciar fechas
    Sleep   2s
  #  Seleccionar aceptar
    encuesta
    

*** Keyword ***
Ingresar usuario contrasena
    Sleep    5s
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresar a Catalogos Generales
    #[Documentation]    Ingresamos a SFYC General
    Sleep    10s
    Click Element    ${ventas}
Validar titulo 
    Sleep    5s
    Click Element   ${element}
    Wait Until Element Contains    xpath=//div[@class='title-form']    BITÁCORA DE VENTAS
    Log    CONTIENE EL TITULO CORRECTO

Seleccionar botón de abordaje
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
    Click Element    ${retroceder}
    Sleep   3s
    Click Element    ${Fecha1}

Seleccionar aceptar
    Click Element    ${Aceptar}


encuesta
     Click Element    ${Agregar}
     
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
     Sleep    3s
     #Wait Until Element Is Visible    ${TEL1}
     Input Text    ${Campo_telefono}    3316388502
     Wait Until Element Is Visible    xpath=//i[@class='dx-icon dx-icon-edit-button-save']
     Click Element    xpath=//i[@class='dx-icon dx-icon-edit-button-save']