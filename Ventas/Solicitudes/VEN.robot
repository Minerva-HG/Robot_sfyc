*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}
| Suite Setup | Set Library Search Order | AppiumLibrary | Selenium2Library

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui        
${Usuario}  joriospe
${Pass}    Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Solicitudes
${ventas}    xpath=(//div[contains(.,'Ventas')])[11]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[4]/ul/li[1]
${Solicitudes}    xpath=//span[contains(.,'Solicitudes')]
${Estado}    xpath=(//input[contains(@class,'dx-texteditor-input')])[3]
${ColEst}    xpath=(//input[contains(@tabindex,'0')])[4]
${Input}    ASI
${Vendidas}    xpath=//td[contains(.,'Vendidas')]
#menu
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
#Vendedor
${Combo_vendedor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-request-sale-main-container/div/app-request-sale-information-registry-form/form/div[2]/app-salesman-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
@{Vendedor}=    Create List    ${Vendedor1}    ${Vendedor2}    ${Vendedor3}    ${Vendedor4}    ${Vendedor5}
${Vendedor1}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Vendedor2}    xpath=//td[contains(.,'LIZARRAGA ROSALES JUAN ALFONSO')]
${Vendedor3}    xpath=//td[contains(.,'A & A SERVICIOS EN LINEA S DE RL DE CV')]
${Vendedor4}    xpath=//td[contains(.,'A LA TORRE TORRES MARCOS IVAN')]
${Vendedor5}    xpath=//td[contains(.,'ABAD DAVILA EFREN ARTURO')]
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
Consultar Solicitudes de ventas VEN
    [Tags]    Validando que consulte las solicitudes vendidas
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
    Seleccionar Estado de Solcitud  
    FOR    ${counter}    IN RANGE    1    5    
    Sleep    5s
    Seleccionar Vendedor     ${Vendedor}[${counter}]
    Decargar Excel
    END

Validar componentes
    [Tags]    Validando componentes
    Decargar Excel
    Boton limpiar
    Boton cancelar




*** Keywords ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   15s
    
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
    Sleep    15s
    Click Element    ${Ventas}
    Wait Until Page Contains Element    ${Operaciones}
    Click Element    ${Operaciones}
    Wait Until Element Is Visible    ${Solicitudes}  
    Click Element   ${Solicitudes}
    
Seleccionar Estado de Solcitud
    [Documentation]    Consultar un folio existente
    Wait Until Element Is Visible    ${Estado}
    Click Element    ${Estado} 
    Sleep    2s
    Click Element    ${Vendidas}
    Sleep    2s

Seleccionar Vendedor
    [Documentation]    Seleccionando venedor
    [Arguments]     ${Vendedor} 
    Wait Until Element Is Visible    ${Combo_vendedor}
    Click Element    ${Combo_vendedor}
    Sleep    5s
    Click Element    ${Vendedor}
    Wait Until Element Is Visible    ${Buscar}
    Click Element    ${Buscar}

Decargar Excel
    Sleep    5s
    ${Bandera_icono_excel}=    Run Keyword And Return Status    Click Element    ${Excel}
    IF    '${Bandera_icono_excel}' == 'True'
        Sleep    2s
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
    
