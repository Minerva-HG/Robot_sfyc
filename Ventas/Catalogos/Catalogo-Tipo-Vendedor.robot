*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://servicios.dev-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[1]
#drops de Ventas
${ventas}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Ventas')]
#menu
${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${TipoVendedor}      xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[3]/ul/li[1]/ul/li[2]/div


#Agrega
${Agregarbotton}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Tipo}    xpath=(//input[contains(@class,'dx-texteditor-input')])[5]
${Descripcion}    xpath=(//input[contains(@class,'dx-texteditor-input')])[6]
${Guardar}    xpath=//a[contains(@title,'Guardar')]
@{TipoInput}=    Create List    AAA     ERW     ABC     ABD     ABE     ABF 
@{DesInput}=    Create List    ZYX    ZYW    ZYV    ZYU   ZYT    ZYR
@{TipoInput2}=    Create List   AAB    RET    RTR    FDF   WRG    VGG
@{DesInput2}=    Create List    XDR    TRER    FGD    DGFDGD   WEDFDFGR    FGDFe
#Eliminar
${Cesto}    xpath=(//a[contains(@title,'Eliminar')])[1]
#Editar
${Lapiz}    xpath=(//a[contains(@title,'Modificar')])[1]
${pregunta}    xpath=//strong[contains(.,'¿Estás seguro de continuar el proceso?')]
${Enviar}    xpath=//span[@class='dx-button-text'][contains(.,'Enviar')]
#buscar
${Buscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
#mensajes
${mensaje}    xpath=(//div[contains(.,'¡Aviso del sistema!')])[8]
${Etiqueta}    xpath=//strong[contains(.,'Proceso terminado con éxito')]
${Etiqueta2}    xpath=//strong[normalize-space()='El nivel de vendedor ya existe']
${Cerrar}    xpath=//i[@class='dx-icon dx-icon-close']
${Cerrar2}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div/div/i
#mensaje de confirmacion
${mensajeE}    xpath=//div[@class='dx-dialog-message'][contains(.,'¿Estás seguro de continuar el proceso?')]
${Si}    xpath=(//div[contains(.,'Sí')])[10]
${time}    5s


*** Tasks ***
Steep1
    [Tags]    Validar que entre al navegador
    Ingresar al Navegador
Steep2
    [Tags]    Validar que entre y validé las credenciales
    Ingresar usuario contrasena

Steep 3-1
    Ingresar a Catalogos Generales

Steep3
    [Tags]    Validar que Ingresé al menú de catalogos
    Ingresar a Catalogos


Steep6
    FOR    ${counter}    IN RANGE    1    7    
        Eliminar la lista agregada     ${TipoInput2}[${counter}]
        
    END
       

Steep4
    [Tags]    Validar la nueva lista
    Sleep    4s
    FOR    ${counter}    IN RANGE    1    7    
        Ingresar Lista de niveles    ${TipoInput}[${counter}]    ${DesInput}[${counter}]
        Sleep    ${time}
        Wait Until Element Is Visible       ${mensaje}
        Cerrar mensaje
            
    END
       
    
Steep5
    [Tags]    Validar Datos ya Agregados
    [Documentation]     Agregar un nuevo Tipo de Vendedor
    Log    La prueba falló pero se esperaba que fallara Asi que la prueba es un PASS
    FOR    ${counter2}    IN RANGE    1    7    
        Agregar Tipo    ${TipoInput2}[${counter2}]    ${DesInput2}[${counter2}]
        Sleep    ${time}
        Wait Until Element Is Visible       ${mensaje}
        #WHILE    "${mensaje}" == "${mensaje}"
        Cerrar mensaje
        Editar tipo    ${TipoInput2}[${counter2}]    ${DesInput2}[${counter2}]
        Wait Until Element Is Visible       ${mensaje}
        Sleep    ${time}
        #Run Keyword If    "${mensaje}" == "${mensaje}"
        #    ...    
        Cerrar mensaje
        #    ...  ELSE    
        Eliminar tipo
        Wait Until Element Is Visible       ${mensaje}
        Cerrar mensaje
        #END
    END




    



*** Keywords ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   ${time}
    
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresar a Catalogos Generales
    [Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${ventas}

Ingresar a Catalogos
    [Documentation]    Ingresamos al modulo de Catalogos
    #Sleep    ${time}
    #Click Element    ${menu}
    Sleep    ${time}
    Click Element    ${Catalogo}
    Sleep    5s
    Click Element    ${TipoVendedor}  


    
Ingresar Lista de niveles
    [Documentation]    Agregar un tipo  de vendedor
    [Arguments]     ${NivelInput}    ${DesInput}
    Click Element    ${Agregarbotton}
    Input Text    ${Tipo}    ${NivelInput} 
    Click Element    ${Descripcion}
    Input Text    ${Descripcion}  ${DesInput}
    Sleep    2s
    Click Element    ${Guardar}
    


#Caso de uso dos, ingresar tipo que este en la BD
Agregar Tipo
    [Documentation]    Agregar un tipo de vendedor ya agregado
    [Arguments]     ${NivelInput2}    ${DesInput2}
    Sleep    ${time}
    Click Element    ${Agregarbotton}
    Sleep    ${time}
    Click Element    ${Tipo} 
    Input Text    ${Tipo}    ${NivelInput2}
    Click Element    ${Descripcion}
    Input Text    ${Descripcion}    ${DesInput2} 
    Click Element    ${Guardar}

Cerrar mensaje
    [Documentation]    Cerrar los mensajes
    Wait Until Element Is Visible    ${mensaje}
    Sleep    2s 
    Click Element    ${Cerrar}

Editar tipo
    [Documentation]    Editar el nivel de vendedor que no se pudo agregar
    [Arguments]     ${NivelInput2}    ${DesInput2}
    Click Element    ${Lapiz}
    Sleep    ${time}
    Click Element    ${Tipo} 
    Input Text    ${Tipo}    ${NivelInput2}
    Click Element    ${Descripcion}
    Input Text    ${Descripcion}    ${DesInput2} 
    Click Element    ${Guardar}
    Wait Until Element Is Enabled    ${pregunta} 
    Sleep    ${time}
    Click Element    ${Enviar} 
    Sleep    ${time}


Eliminar tipo
    [Documentation]    Eliminar el nivel de vendedor agregador 
    Wait Until Element Is Visible    ${Cesto} 
    Click Element    ${Cesto} 
    Wait Until Element Is Visible    ${mensajeE}
    Click Element    ${Si}


Eliminar la lista agregada
    [Arguments]    ${TipoInput}
    Click Element    ${Buscar}
    Input Text    ${Buscar}    ${TipoInput2}
    Wait Until Element Is Visible    ${Cesto} 
    Click Element    ${Cesto} 
    Wait Until Element Is Visible    ${mensajeE}
    Sleep    5s
    Click Element     ${Si}
