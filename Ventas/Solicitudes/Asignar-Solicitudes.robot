*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://ventas.dev-cluster.sfycnextgen.com.mx/ui    
${Usuario}    joriospe 
${Pass}  Megajos202
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#Solicitudes
${Ventas}    xpath=//li[@aria-label='Ventas']
${Solicitudes}    xpath=(//div[contains(.,'Solicitudes')])[9]
${solicitud}    xpath=//i[contains(@class,'dx-icon dx-icon-redo')]
#Vendedor
${SalesmanDrop}    xpath=//dx-drop-down-box[@id='salesmanDropdown']//div[@class='dx-dropdowneditor-icon']
${Salesman}    xpath=//td[contains(.,'LIZARRAGA ROSALES JUAN ALFONSO')]
${SalesmanM}    xpath=//td[contains(.,'800170')]
${Label}    xpath=//label[@class='field-label description']
#folios
${Nfolios}    xpath=//input[contains(@max,'undefined')]
${Aceptar}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
${Close}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#manual
${Manual}    xpath=//span[@class='dx-checkbox-icon']
${DEL}    xpath=(//input[@type='text'])[6]
${AL}    xpath=(//input[@type='text'])[7]
${fol}    3456
#${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
#Buscar
${Buscar}    xpath=//span[contains(.,'Buscar')]
${LastPage}    xpath=//div[@class='dx-page'][contains(.,'7')]
${Excel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
${Clean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]
#Boton aceptar
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
#Boton limpiar
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]
#Checkbox
${Checkbox_cambiar_asignacion_manual}    xpath=//span[contains(@class,'dx-checkbox-icon')]
#Vendedor con permisos para mas de 50 folios digitales
${Vendedor_dis}    xpath=//td[contains(.,'A LA TORRE TORRES MARCOS IVAN')]

*** Tasks ***
Asignar una solicitud Manual
    [Tags]    Validar asignacion de solicitudes manuales
    Ingresar al Navegador
    Ingresar usuario contrasena
    Sleep    4s
    #Ingresar a Catalogos Generales
    Ingresar a Consulta de Solicitudes
    Agregar vendedor
    Agregar de manera manual
    Boton aceptar
    Verificando si existe alguna notificacion

Asignar una solicitud Automática
    [Tags]    Validar asignacion de solicitudes automaticas
    Checkbox cambiar a asignacion manual
    Agregar vendedor
    Agregar Folios 
    Verificando si existe alguna notificacion

Limite de folios digitales a entregar automáticamente(100)
    [Tags]    Validando que establezca un limite de folios de 100 de manera automatica
    Agregar vendedor tipo dis
    Agregar Folios mayor a 100

Limite de folios asignación manual(100)
    [Tags]    Validando que establezca un limite de folios de 100 de manera manual
    Agregar vendedor tipo dis
    Checkbox cambiar a asignacion manual
    Agregar de manera manual mas de 100 folios

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
   Click Element    ${solicitud}
    
Agregar vendedor
    Click Element    ${SalesmanDrop}
    Sleep    5s
    Click Element    ${Salesman}

Agregar Folios
    Wait Until Element Is Visible    ${Label}
    Input Text    ${Nfolios}    1
    Click Element    ${Aceptar}

Verificando si existe alguna notificacion
    Sleep    3s
    ${Bandera_notificacion_aviso_sistema}=    Run Keyword And Return Status    Click Element    ${Close}
    IF   '${Bandera_notificacion_aviso_sistema}' == 'True'
        Sleep    3s
    ELSE
        Verificando si existe alguna notificacion
    END   

Agregar de manera manual
    Wait Until Element Is Visible   ${Manual}
    Click Element    ${Manual}
    Input Text    ${DEL}    ${fol}
    Input Text    ${AL}    3495
    Sleep    5s

Agregar vendedor automatico
    Click Element    ${SalesmanDrop}
    Sleep    5s
    Click Element    ${SalesmanM}
    Sleep    5s


Boton aceptar
    Sleep    5s
    Scroll Element Into View    ${Boton_aceptar}
    #Sleep    4s
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Checkbox cambiar a asignacion manual
    Wait Until Element Is Visible    ${Checkbox_cambiar_asignacion_manual}
    Click Element    ${Checkbox_cambiar_asignacion_manual}

Agregar Folios mayor a 100
    Wait Until Element Is Visible    ${Label}
    Input Text    ${Nfolios}    100
    Sleep    3s
    ${Bandera_boton_aceptar_inactivo}=    Run Keyword And Return Status    Click Element    ${Aceptar}
    IF    '${Bandera_boton_aceptar_inactivo}' == 'True'
        Fail
    ELSE
        Boton limpiar
    END
    
Agregar vendedor tipo dis
    Click Element    ${SalesmanDrop}
    Sleep    5s
    Click Element    ${Vendedor_dis}

Agregar de manera manual mas de 100 folios
    Input Text    ${DEL}    ${fol}
    Input Text    ${AL}    3557
    Sleep    5s
    Scroll Element Into View    ${Boton_aceptar}
    #Sleep    4s
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    3s
    ${Bandera_notificacion_limite_de_folios}=    Run Keyword And Return Status    Click Element    ${Close}
    IF    '${Bandera_notificacion_limite_de_folios}' == 'True'
        Sleep    3s
    ELSE
        Fail
    END
