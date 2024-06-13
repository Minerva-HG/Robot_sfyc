*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML

*** Variables ***
#######################################Variables de inicio de sesion tanto para dev como para QA######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #MAGONZALEZ    LPLOZANO    joriospe                                                                                              
@{passL}=    Create List    Mega12345    #Magcbegs1    Chatito.    Mega12345                                                                                                                                                                                                                                                                                                                                                                                            
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]                      
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botoncatalogos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]
${Botonmotivobajas}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[4]/ul/li[5]
${Campobuscar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-catalog-motive-down-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/div[1]/input
${Textoabuscar}  Cobro al cliente
${Bottonactualizar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-catalog-motive-down-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i


*** Test Cases ***
#Función para la espera de los elementos
Usuarios con permisos a la pantalla
    Validacion de usuarios

Buscar catalogo
    Sleep   5s
    Seleccionar campo buscar
    Sleep   5s
    Teclear texto a buscar
    Sleep   5s
    Limpiar busqueda

Icono refrescar catalogo
    Sleep   5s
    Seleccionar botton actualizar
    Sleep   5s
    
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
        Scroll Element Into View    ${Botonmotivobajas}
        Wait Until Element Is Visible    ${Botonmotivobajas}
        Click Element    ${Botonmotivobajas} 
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Seleccionar campo buscar
    Click Element  ${Campobuscar}

Teclear texto a buscar
    Input Text    ${Campobuscar}    ${Textoabuscar}

Limpiar busqueda
    Clear Element Text    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-catalog-motive-down-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/div[1]/input

Seleccionar botton actualizar
    Click Element  ${Bottonactualizar}