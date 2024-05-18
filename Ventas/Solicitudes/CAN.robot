*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui 
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Solicitudes
${Ventas}    xpath=//li[@aria-label='Ventas']
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]/ul/li[1]
${Solicitudes}    xpath=(//div[contains(.,'Solicitudes')])[9]
${Estado}    xpath=//dx-drop-down-box[@id='stateDropdown']//div[@class='dx-dropdowneditor-icon']
${Input}    xpath=(//input[contains(@type,'text')])[10]
${CanIn}    CAN
${Cancelada}    xpath=//td[contains(.,'Cancelada U')]
#menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]

#Buscar
${Buscar}    xpath=//span[contains(.,'Buscar')]
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[contains(@class,'dx-icon dx-icon-xlsxfile')]
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]

#Boton limpiar
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

#Boton cancelar
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]


*** Tasks ***
Consultar Solicitudes de ventas CAN
    [Tags]    Validar que proceda con la peticion para obtener solicitudes canceladas
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
    Seleccionar Estado de Solcitud  
    Decargar Excel

Validar componentes
    [Tags]    Validando componentes
    Decargar Excel
    Boton limpiar
    Boton cancelar


*** Keywords ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresar a Catalogos Generales
    #[Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${ventas}


Ingresar a Consulta de Solicitudes
    [Documentation]    Ingresamos a Consulta de ventas por solicitud
    Wait Until Element Is Visible    ${Ventas}
    Click Element    ${Ventas}
    Wait Until Page Contains Element    ${Operaciones}
    Click Element    ${Operaciones}
    Wait Until Element Is Visible    ${Solicitudes}  
    Click Element   ${Solicitudes}
   
    
Seleccionar Estado de Solcitud
    [Documentation]    Consultar un folio existente
    Wait Until Element Is Visible    ${Estado}
    Click Element    ${Estado} 
    Sleep    10s
    Click Element    ${Cancelada} 
    Sleep    2s
    Click Element    ${Buscar}


Decargar Excel
    Sleep    5s
    ${Bandera_icono_exportar_Excel}=    Run Keyword And Return Status    Click Element    ${Excel}
    IF    '${Bandera_icono_exportar_Excel}' == 'True'
         Sleep    2s
        #Click Element    ${Clean}
    ELSE
        Decargar Excel
    END
    

Boton limpiar
    Scroll Element Into View    ${Boton_limpiar}
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
