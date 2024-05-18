*** Settings ***
Library  SeleniumLibrary
Library      String    
Library    RPA.Desktop
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
${Ventas}    xpath=(//div[contains(.,'Ventas')])[11]
${Operaciones}    xpath=//div[@class='dx-template-wrapper dx-item-content dx-treeview-item-content'][contains(.,'Operaciones')]
${Solicitudes}    xpath=//span[contains(.,'Solicitudes')]
${CancelarG}    xpath=(//i[contains(@class,'dx-icon dx-icon-clear')])[2]
#Vendedor
${desde}    xpath=(//input[contains(@autocomplete,'off')])[3]
${AL}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Aceptar}    xpath=//span[normalize-space()='Aceptar']
${Verificar}    xpath=//span[@class='dx-checkbox-icon']
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
@{folio_desde}=    Create List    1230    54812412    54812420    1430    54812431   
@{Folio_hasta}=    Create List    1330    54812418    54812428    1530    54812436    
#Buscar
${Close}    xpath=//i[@class='dx-icon dx-icon-close']
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]
#Notificaciones
${Notificacion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Boton_enviar}    xpath=//span[contains(.,'Enviar')]
${Notificacion_detalle_solicitud}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Notificacion_exitosa}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]

*** Tasks ***
Cancelar Solicitudes
    [Tags]    Validar que cancele solicitudes
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
    FOR    ${counter}    IN RANGE    1    6    
        Buscar Folio     ${folio_desde}[${counter}]    ${folio_hasta}[${counter}]
        Notificacion
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
    Click Element    ${Ventas}
    Wait Until Element Is Visible    ${Operaciones}
    Click Element    ${Operaciones}
    Wait Until Element Is Visible    ${Solicitudes}    
    Click Element   ${Solicitudes}
    Wait Until Element Is Visible    ${CancelarG}
    Click Element    ${CancelarG} 
    Sleep    2s

Buscar Folio
    [Arguments]    ${folio_desde}    ${folio_hasta}
    Wait Until Element Is Visible    xpath=//label[@class='field-label'][contains(.,'Verificar solicitud')]
    Click Element    ${Verificar}
    Input Text    ${desde}     ${folio_desde} 
    Sleep    2s 
    Input Text     ${AL}    ${folio_hasta} 
    Click Element    ${Aceptar}

Notificacion
    Sleep    5s
    ${Notificacion_estandar}=    Run Keyword And Return Status    ${Notificacion}
    IF    '${Notificacion_estandar}' == 'True'
        Notificacion combo folios no existen
    ELSE
        Boton aceptar
    END

Boton aceptar
    Sleep    5s
    Scroll Element Into View    ${Aceptar}
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}
    Sleep    5s
    Click Element    ${Boton_enviar}
    Sleep    4s
    ${Validando_notificacion}=    Run Keyword And Return Status    Click Element    ${Notificacion}
    IF    '${Validando_notificacion}' == 'True'
        Notificacion combo folios no existen
    ELSE
        Sleep    4s
        Click Element    ${Notificacion_exitosa}
    END

Notificacion combo folios no existen
    Sleep    3s
    ${Bandera_boton_limpiar_visible}=    Run Keyword And Return Status    Click Element    ${Boton_limpiar}
    IF    '${Bandera_boton_limpiar_visible}' == 'True'
        Sleep    5s
    ELSE
        Wait Until Element Is Visible    ${Notificacion_detalle_solicitud}
        Click Element    ${Notificacion_detalle_solicitud}
    END    
    
    
