*** Settings ***
Documentation    Certificación de niveles
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    JORIOSPE    RCAMINOS    VMAGALLANESI    GRSOTOM    IESTRADAV    MAPARRAR    LPLOZANO    LMORALESA    AGARCIA                          
@{passL}=    Create List    0    metro1234    Megacable2023    Mega2022    Mega123    Mega1234    Chatito.    Mega123    Jeshua1982                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
######################Pantalla certificación de niveles#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Consulta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/div[1]/div
${Reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[6]
${Certificado_de_niveles}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[5]/ul/li[1]


*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Certificación de niveles 
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     

Pantalla CERTIFICACIÓN DE NIVELES
    [Documentation]    Certificación de niveles
    [Tags]    Pantalla certificación de niveles
    Pantalla certificación de niveles
    Sleep    30s
    


*** Keyword ***
Ingresar usuario contrasena
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
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Pantalla certificación de niveles
    Sleep    10s
    Click Element   ${Moduloservicios}
    Sleep    5s
    Scroll Element Into View    ${Reportes}
    Wait Until Element Is Visible    ${Consulta} 
    Click Element    ${Consulta}
    Sleep    5s
    Scroll Element Into View    ${Reportes}
    Click Element    ${Certificado_de_niveles}



