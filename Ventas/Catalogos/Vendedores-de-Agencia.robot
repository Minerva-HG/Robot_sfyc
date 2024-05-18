*** Settings ***
Library  SeleniumLibrary
Library      String    
Library    RPA.Windows
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://ventas.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  joriospe
${Pass}  Mega12345
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#drops de Ventas
${ventas}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Ventas')]
#menu
${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${VAgencia}    xpath=//span[normalize-space()='Vendedores de Agencia']
#Agrega
${Agregarbotton}    xpath=//i[@class='dx-icon dx-icon-edit-button-addrow']
${Nivel}    xpath=(//input[contains(@class,'dx-texteditor-input')])[5]
${Descripcion}    xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-level-salesman-grid[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]/div[1]/div[1]/div[1]/div[1]/input[1]
${Guardar}    xpath=//a[contains(@aria-label,'Guardar')]
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
#Buscar y validar botones
${Campo_numero_vendedor}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Vendedor}    91407
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
#Registro grid
${Registro_grid}    xpath=//td[contains(.,'Grupo MAVI SA de CV')]
#Boton cancelar
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
#Editar
${Combo_estatus}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-agency-salesman-container/div/app-agency-salesman-form/form/div/div[2]/div[1]/div[2]/div[6]/div/app-status-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Reingreso}    xpath=//td[contains(.,'Reingreso')]
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]

*** Tasks ***
Validacion de usuarios e ingreso a la pantalla
    [Tags]    Validar inicio de sesion y navegación a la pantalla
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Catalogos

Vendedores de Agencia Buscar
    [Tags]    Validar que realice la consulta para el vendedor ingresado
    Buscar

Seleccionar Vendedor desde el grid
    [Tags]    Validar registro dek grid
    Registro del grid

Validar Reporte y otros botones
    [Tags]    Validando botones
    Validacion de botones

#Vendedores de Agencia Nuevo
    #[Tags]    Validar la nueva lista
    #Sleep    14s
    #FOR    ${counter}    IN RANGE    1    7    
        #Ingresar Lista de niveles    ${NivelInput}[${counter}]    ${DesInput}[${counter}]
        #Sleep    ${time}
        #Wait Until Element Is Visible       ${mensaje}
        #Cerrar mensaje       
    #END
       
    
Vendedores de Agencia Editar
    [Tags]    Validar Datos ya Agregados
    [Documentation]     Agregar un nuevo nivel de Vendedor
    Buscar
    Cambiar estatus
    Cerrar mensaje


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
    Sleep    ${time}
    Click Element    ${VAgencia} 


    
Ingresar Lista de niveles
    [Documentation]    Agregar un nivel de vendedor
    [Arguments]     ${NivelInput}    ${DesInput}
    Click Element    ${Agregarbotton}
    Input Text    ${Nivel}    ${NivelInput} 
    Click Element    ${Descripcion}
    Input Text    ${Descripcion}  ${DesInput}
    Sleep    2s
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

Buscar
    Wait Until Element Is Visible    ${Campo_numero_vendedor}
    Click Element    ${Campo_numero_vendedor}
    Input Text    ${Campo_numero_vendedor}    ${Vendedor}
    Press Keys    ${Campo_numero_vendedor}    ENTER
    Sleep    3s

Validacion de botones
    Sleep    3s
    Click Element    ${Boton_limpiar}
    Sleep    3s
    Scroll Element Into View    ${Campo_numero_vendedor}
    Sleep    3s

Registro del grid
    Sleep    3s
    Scroll Element Into View    ${Registro_grid}
    Sleep    3s
    Click Element    ${Registro_grid}
    Click Element    ${Registro_grid}
    Click Element    ${Registro_grid}
    Sleep   5s
    Scroll Element Into View    ${Boton_cancelar}

Cambiar estatus
    Wait Until Element Is Visible    ${Combo_estatus}
    Click Element    ${Combo_estatus}
    Wait Until Element Is Visible    ${Reingreso}
    Click Element    ${Reingreso}
    Sleep    4s
    Scroll Element Into View    ${Boton_cancelar}
    Sleep    3s    
    Click Element    ${Boton_aceptar}