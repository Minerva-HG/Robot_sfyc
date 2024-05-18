*** Settings ***
Documentation    Bloqueo origen
Library    String
Library    SeleniumLibrary
Library    RPA.Windows

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.dev-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui      
${Usuario}  softteck01                                           
${Pass}  123456c                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
######################Pantalla bloqueo origen#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Supervision}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]
${SupervisionQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Bloqueo_origen}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]/ul/li[7]/div/div/span
#######################Codigo area local################################################################################################################################
${Combo_codigo_a_bloquear}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Codigo_ha_bloquear}    xpath=//td[@aria-describedby='dx-col-4'][contains(.,'33')]
###############################Boton bloquear#############################################################################################################################
${Boton_bloquear}    xpath=//span[contains(.,'Bloquear')]
${Cerrar_notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
###############################Boton desbloquear##########################################################################################################################
${Boton_desbloquear}    xpath=//span[@class='dx-button-text'][contains(.,'Desbloquear')]
###############################Boton salir###################################################################################################################################
${Boton_salir}    xpath=//i[contains(@class,'dx-icon dx-icon-runner')]
###############################Boton limpiar####################################################################################################################################
${Boton_limpiar}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Bloqueo origen
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     

Test pantalla bloqueo origen
    [Documentation]    Bloqueo origen
    [Tags]    Pantalla bloqueo origen
    Pantalla bloqueo de origen

Test codigo área local
    [Documentation]    Bloqueo origen
    [Tags]    Codigo area local
    Codigo area local
    
Test bloquear
    [Documentation]    Bloqueo origen
    [Tags]    Test boton bloquear
    Bloquear
    Cierre de notificacion

Test desbloquear
    [Documentation]    Bloqueo origen
    [Tags]    Test boton desbloquear
    Boton desbloquear
    Cierre de notificacion

Test datos vacios
    [Documentation]    Bloqueo origen
    [Tags]    Test datos vacios
    Datos vacios 

Test boton salir
    [Documentation]    Bloqueo origen
    [Tags]    Test boton salir
    Boton salir
    Sleep    50s

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element    ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC}
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text     name:Username   ${Usuario}
    Input Text    name:Password   ${Pass}
    Wait Until Element Is Visible    name:button
    Click Element    name:button

Pantalla bloqueo de origen
    Sleep    10s
    Click Element   ${Moduloservicios}
    Wait Until Element Is Visible    ${Supervision}
    Click Element    ${Supervision}
    #QAClick Element    ${SupervisionQA}
    Sleep    5s
    Scroll Element Into View    ${Bloqueo_origen}
    Wait Until Element Is Visible    ${Bloqueo_origen}
    Click Element    ${Bloqueo_origen}

Codigo area local
    Sleep    5s
    Click Element    ${Combo_codigo_a_bloquear}
    Wait Until Element Is Visible    ${Codigo_ha_bloquear}
    Click Element    ${Codigo_ha_bloquear}

Bloquear
    Sleep    5s
    Click Element    ${Boton_bloquear}

Cierre de notificacion
    Sleep    5s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Click Element    ${Cerrar_notificacion}    
    IF    '${Bandera_notificacion}' == 'True'
        Sleep    5s
    ELSE
        Cierre de notificacion
    END

Boton desbloquear
    Sleep    5s
    Click Element    ${Boton_desbloquear}

Boton salir
    Sleep    5s
    Click Element    ${Boton_salir}

Datos vacios
    Sleep    5s
    Click Element    ${Boton_limpiar}