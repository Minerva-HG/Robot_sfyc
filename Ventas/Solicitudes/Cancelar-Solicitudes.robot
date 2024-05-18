*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.dev-cluster.sfycnextgen.com.mx/ui
${Usuario}  joriospe
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Solicitudes
${Ventas}    xpath=//li[@aria-label='Ventas']
${Solicitudes}    xpath=(//div[contains(.,'Solicitudes')])[9]
${CancelarG}    xpath=(//i[contains(@class,'dx-icon dx-icon-clear')])[2]
#Vendedor
${desde}    xpath=(//input[contains(@autocomplete,'off')])[3]
${AL}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Aceptar}    xpath=//span[normalize-space()='Aceptar']
${Verificar}    xpath=//span[@class='dx-checkbox-icon']
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
@{folio}=    Create List     52319569    52319570    52319571    53730945    54553880
#Buscar
${Close}    xpath=//i[@class='dx-icon dx-icon-close']
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]


*** Tasks ***
Cancelar Solicitudes
    [Tags]    Validar que cancele solicitudes
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
    FOR    ${counter}    IN RANGE    1    6    
        Buscar Folio     ${folio}[${counter}]

    END


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
    Sleep    5s
    Click Element   ${Solicitudes}
    Sleep    2s
    Click Element    ${CancelarG} 
    Sleep    2s
Buscar Folio
    [Arguments]    ${folio}
    Wait Until Element Is Visible    xpath=//label[@class='field-label'][contains(.,'Verificar solicitud')]
    Click Element    ${Verificar}
    Input Text    ${desde}     ${folio} 
    Sleep    2s 
    Input Text     ${AL}    ${folio} 
    Click Element    ${Aceptar}
    Sleep    2s
    Click Element    ${Close}
    Sleep    2s
    Click Element    ${Clean}