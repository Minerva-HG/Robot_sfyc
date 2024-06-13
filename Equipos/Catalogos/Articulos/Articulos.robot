
*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML

*** Variables ***
##############################Validación de usuarios#########################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #MAGONZALEZ    LPLOZANO    joriospe                                                                                              
@{passL}=    Create List    Mega12345    #Magcbegs1    Chatito.    Mega12345                                                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
${Botonequipos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
#############################Ingresando a la pantalla catalogo motivos baja######################################################################
${Botoncatalogos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]
${Botonarticulos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]/ul/li[6]
#############################Icono actualizar##########################################################################################################################
${Icononactualizar}  xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
############################Filtro buscar#########################################################
${Campobuscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
${Datohafiltrar}    Tablet Huawei MediaPad 7 Lite		
###########################Agregar registro nuevo##########################################################
${Iconadd}    xpath=//div[@class='dx-button-content'][contains(.,'Agregar una fila')]        
${Campocodigo}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Codigo_nuevo}    222892
${Campodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Descripcion_nueva}    NO BREAK
${Iconoguardar}    xpath=//a[contains(@aria-label,'Guardar')]
##########################Icono cancelar##############################################################
${Iconcancelar}    xpath=//a[contains(@aria-label,'Cancelar')]
##########################Caracteres invalidos#########################################################
${Caracteres_invalidos}    $%&/?@%
#########################Editar registro###############################################################
${Iconedit}    xpath=(//a[contains(@aria-label,'Modificar')])[1]    
${Campodescripcionhaeditar}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Descripcionhaeditar}    Router Motorola 4G    
###########################Delete articulo##############################################################
${Iconeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[1]
${Confirmareliminacion}    xpath=//div[@class='dx-button-content'][contains(.,'Sí')]

*** Test Cases ***
#Función para la espera de los elementos
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuarios
    [Tags]    test_uno
    Validacion de usuarios 

Icon refresh
    [Documentation]    Icono refrescar
    [Tags]    test_dos
    Icono actualizar

Filter search
    [Documentation]    Filtro buscar
    [Tags]    test_tres
    Campo filtrar

Icon add
    [Documentation]    Agregar nuevo articulo
    [Tags]    test_cuatro
    Add articulo

Invalid characters
    [Documentation]    Caracteres invalidos
    [Tags]    test_cinco
    Invalid characters

Repeated records
    [Documentation]    Registros repetidos
    [Tags]    test_seis
    Add articulo

Icon cancelar
    [Documentation]    Icono cancelar
    [Tags]    test_siete
    Cancelar

Edit records
    [Documentation]    Editar registro
    [Tags]    test_ocho
    Icon edit records

Delete articulo
    [Documentation]    Eliminar registro
    [Tags]    test_nueve
    Delete articulo

    
*** Keywords ***
Validacion de usuarios
    #FOR    ${counter}    IN RANGE    1     9 
    FOR    ${counter}    IN RANGE    1     2
        Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")    
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text    name:Password     ${passL}[${counter}]
        Wait Until Element Is Visible    ${Botondominio}
        Click Element    ${Botondominio}
        Wait Until Element Is Visible    ${SFyC}
        Click Element    ${SFyC}
        Wait Until Element Is Visible    name:button
        Click Element    name:button
        Sleep    10s
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botoncatalogos}
        Click Element    ${Botoncatalogos}
        Sleep    5s
        Scroll Element Into View    ${Botonarticulos}
        Wait Until Element Is Visible    ${Botonarticulos}
        Click Element    ${Botonarticulos} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Catálogos
    Wait Until Element Is Visible    ${Botoncatalogos}    
    Click element  ${Botoncatalogos}

Articulos
    Sleep    5s
    Scroll Element Into View    ${Botonarticulos}
    Wait Until Element Is Visible    ${Botonarticulos}    
    Click element  ${Botonarticulos}

Icono actualizar
    Sleep    5s
    Click Element    ${Icononactualizar}

Campo filtrar
    Sleep    5s
    Input Text    ${Campobuscar}    ${Datohafiltrar}
    Sleep    7s
    Clear Element Text    ${Campobuscar}    

Add articulo
    Sleep    5s
    Click Element    ${Iconadd}
    Wait Until Element Is Visible    ${Campocodigo}
    Input Text    ${Campocodigo}    ${Codigo_nuevo}
    Input Text    ${Campodescripcion}    ${Descripcion_nueva}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Cancelar
    Sleep    5s
    Click Element    ${Iconcancelar}

Invalid characters
    Sleep    5s
    Click Element    ${Iconadd}
    Wait Until Element Is Visible    ${Campocodigo}
    Input Text    ${Campocodigo}    ${Caracteres_invalidos}
    Input Text    ${Campodescripcion}    ${Caracteres_invalidos}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}
    Sleep    5s
    Click Element    ${Iconcancelar}

Icon edit records
    Sleep    5s
    Click Element    ${Iconedit}
    Input Text    ${Campodescripcionhaeditar}    ${Descripcionhaeditar}
    Sleep    5s
    Click Element    ${Iconoguardar}

Delete articulo
    Sleep    3s
    Click Element    ${Iconeliminar}
    Sleep    3s
    Click Element    ${Confirmareliminacion}