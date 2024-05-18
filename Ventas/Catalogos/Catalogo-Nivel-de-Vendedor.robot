*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://ventas.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#drops de Ventas
${Ventas}    xpath=(//div[contains(.,'Ventas')])[9]
#menu
${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${NivelVendedor}    xpath=//span[contains(.,'Nivel de Vendedor')]
#Agrega
${Agregarbotton}    xpath=//i[@class='dx-icon dx-icon-edit-button-addrow']
${Nivel}    xpath=(//input[@class='dx-texteditor-input'])[6]
${Descripcion}    xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-level-salesman-grid[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${Guardar}    xpath=//a[@aria-label='Guardar']
@{NivelInput}=    Create List     ERT     ERW     ABC     ABD     ABE     ABF 
@{DesInput}=    Create List    ZYX    ZYW    ZYV    ZYU   ZYT    ZYR
@{NivelInput2}    Create List    BYF    RET    RTR    FDF   WRG    VGG
@{DesInput2}    Create List    XDR    TRER    FGD    DGFDGD   WEDFDFGR    FGDFe
#Eliminar
${Cesto}    xpath=(//a[contains(@aria-label,'Eliminar')])[1]
#Editar
${Lapiz}    xpath=(//a[@aria-label='Modificar'])[1]
${pregunta}    xpath=//strong[contains(.,'¿Estás seguro de continuar el proceso?')]
${Enviar}    xpath=//span[@class='dx-button-text'][contains(.,'Enviar')]
#buscar
${Buscar}    xpath=//input[@aria-label='Buscar en la tabla de datos']
#mensajes
${mensaje}    xpath=(//div[contains(.,'¡Aviso del sistema!')])[8]
${Etiqueta}    xpath=//strong[contains(.,'Proceso terminado con éxito')]
${Etiqueta2}    xpath=//strong[normalize-space()='El nivel de vendedor ya existe']
${Cerrar}    xpath=//i[@class='dx-icon dx-icon-close']
${Cerrar2}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div/div/i
#mensaje de confirmacion
${mensajeE}    xpath=//div[@class='dx-dialog-message'][contains(.,'¿Estás seguro de continuar el proceso?')]
${Si}    xpath=(//div[contains(.,'Sí')])[10]
${time}    10s


*** Tasks ***
Validacion de usuarios e ingreso a la pantalla
    [Tags]    Validar que entre al navegador
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Catalogos

Validar CRUD Nivel de Vendedor
    [Tags]    Validar CRUD nivel de vendedor
    Sleep    4s
    FOR    ${counter}    IN RANGE    1    7    
        Ingresar Lista de niveles    ${NivelInput}[${counter}]    ${DesInput}[${counter}]
        Sleep    ${time}
        Wait Until Element Is Visible       ${mensaje}
        Cerrar mensaje
            
    END
       
    
Validar Datos ya Agregados
    [Tags]    Validar Datos ya Agregados
    [Documentation]     Agregar un nuevo nivel de Vendedor
    #Log    La prueba falló pero se esperaba que fallara Asi que la prueba es un PASS
    FOR    ${counter2}    IN RANGE    1    7    
        Agregar Nivel    ${NivelInput2}[${counter2}]    ${DesInput2}[${counter2}]
        Sleep    ${time}
        Wait Until Element Is Visible       ${mensaje}
        #WHILE    "${mensaje}" == "${mensaje}"
        Cerrar mensaje
        Editar nivel    ${NivelInput2}[${counter2}]    ${DesInput2}[${counter2}]
        Wait Until Element Is Visible       ${mensaje}
        Sleep    ${time}
        #Run Keyword If    "${mensaje}" == "${mensaje}"
        #    ...    
        Cerrar mensaje
        #    ...  ELSE    
        Eliminar nivel
        Wait Until Element Is Visible       ${mensaje}
        Cerrar mensaje
        #END
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


Ingresar a Catalogos
    [Documentation]    Ingresamos a a los catalgos de ventas
    #Sleep    ${time}
    #Click Element    ${menu}
    Sleep    5s
    Click Element    ${Catalogo}
    Sleep    ${time}
    Click Element    ${NivelVendedor} 


    
Ingresar Lista de niveles
    [Documentation]    Agregar un nivel de vendedor
    [Arguments]     ${NivelInput}    ${DesInput}
    Click Element    ${Agregarbotton}
    Input Text    ${Nivel}    ${NivelInput} 
    Click Element    ${Descripcion}
    Input Text    ${Descripcion}  ${DesInput}
    Sleep    5s
    Click Element    ${Guardar}
    


#Caso de uso dos, ingresar nivel que este en la BD
Agregar Nivel
    [Documentation]    Agregar un nivel de vendedor ya agregado
    [Arguments]     ${NivelInput2}    ${DesInput2}
    Sleep    ${time}
    Click Element    ${Agregarbotton}
    Sleep    ${time}
    Click Element    ${Nivel} 
    Input Text    ${Nivel}    ${NivelInput2}
    Click Element    ${Descripcion}
    Input Text    ${Descripcion}    ${DesInput2} 
    Click Element    ${Guardar}

Cerrar mensaje
    [Documentation]    Cerrar los mensajes
    Wait Until Element Is Visible    ${mensaje}
    Sleep    2s 
    Click Element    ${Cerrar}

Editar nivel
    [Documentation]    Editar el nivel de vendedor que no se pudo agregar
    [Arguments]     ${NivelInput2}    ${DesInput2}
    Click Element    ${Lapiz}
    Sleep    ${time}
    Click Element    ${Nivel} 
    Input Text    ${Nivel}    ${NivelInput2}
    Click Element    ${Descripcion}
    Input Text    ${Descripcion}    ${DesInput2} 
    Click Element    ${Guardar}
    Wait Until Element Is Enabled    ${pregunta} 
    Sleep    ${time}
    Click Element    ${Enviar} 
    Sleep    ${time}


Eliminar nivel
    [Documentation]    Eliminar el nivel de vendedor agregador 
    Wait Until Element Is Visible    ${Cesto} 
    Click Element    ${Cesto} 
    Wait Until Element Is Visible    ${mensajeE}
    Click Element   ${Si}