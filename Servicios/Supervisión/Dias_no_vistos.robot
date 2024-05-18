*** Settings ***
Documentation    Dias no vistos
Library    String
Library    SeleniumLibrary
Library    RPA.Windows
#Library    RPA.Browser.Selenium    auto_close=${FALSE}

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
######################Pantalla de dias no vistos#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Supervision}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]
${SupervisionQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Dias_no_vistos_dev}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]/ul/li[2]
${Dias_no_vistos_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]/ul/li[1]/div/div/span
########################Carga de suscriptor############################################################################################
${Combo_suscriptor}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Icono_agregar_suscriptor}    xpath=//i[contains(@class,'dx-icon dx-icon-plus')]
${Campo_suscriptor}    xpath=//input[contains(@maxlength,'10')]
${Suscriptor}    0410857120
${Selecciona_suscriptor_combo}    xpath=//td[contains(.,'0410857120')]
########################Grid captura de reposicion de dias no vistos####################################################################################
${Boton_reposicion}    xpath=//div[@class='dx-button-content'][contains(.,'Reposición')]
${Combo_dias_de_reposicon}    xpath=//input[contains(@inputmode,'decimal')]
${Dias_de_reposicion}    12   
${Combo_causa_bonificación}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Causa_bonificacion}    xpath=//td[contains(.,'Cambio Domicilio')]
${Boton_enviar}    xpath=//span[contains(.,'Enviar')]   
#####################Notificaciones#############################################################
${Notificacion_azul}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[3]
######################Suscriptor que no se encuentra vigente en periodo vigente#############################################
${Suscriptor_que_no_se_encuentra_vigente}    0410043050 
${Selecciona_suscriptor_que_no_se_encuentra_vigente}    xpath=//td[contains(.,'0410043050')]

*** Test Cases ***
Validación de usuario
    [Documentation]    Dias no vistos
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla dias no vistos
    [Documentation]    Dias no vistos
    [Tags]    Pantalla dias no vistos
    Test pantalla dias no vistos

Dias no vistos a un suscriptor
    [Documentation]    Dias no vistos
    [Tags]    Dias no vistos a un suscriptor
    Cargando suscriptor
    
Suscriptor que no se encuentra en un periodo vigente
    [Documentation]    Dias no vistos
    [Tags]    Suscriptor que no se encuentra en un periodo vigente
    Cargando suscriptor que no se encuentra en periodo vigente
    Sleep    15s

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

Test pantalla dias no vistos
    Sleep    10s
    Click Element   ${Moduloservicios}
    Wait Until Element Is Visible    ${Supervision}
    Click Element    ${Supervision}
    #QAClick Element    ${SupervisionQA}
    Sleep    5s
    Scroll Element Into View    ${Dias_no_vistos_QA}
    Wait Until Element Is Visible    ${Dias_no_vistos_QA}
    Click Element    ${Dias_no_vistos_QA}
    #QAClick Element    ${Cajero_QA}

Cargando suscriptor
    Wait Until Element Is Visible    ${Combo_suscriptor}
    Click Element    ${Combo_suscriptor}
    Wait Until Element Is Visible    ${Icono_agregar_suscriptor}
    Click Element    ${Icono_agregar_suscriptor}
    Wait Until Element Is Visible    ${Campo_suscriptor}
    Input Text    ${Campo_suscriptor}    ${Suscriptor}
    Press Keys    ${Campo_suscriptor}    ENTER
    Wait Until Element Is Visible    ${Selecciona_suscriptor_combo}
    Click Element    ${Selecciona_suscriptor_combo}
    ${Bandera_boton_reposicion_activo}=    Run Keyword And Return Status    Click Element    ${Boton_reposicion}
    ${Bandera_notificacion_azul}=    Run Keyword And Return Status    Click Element    ${Notificacion_azul}
    IF    '${Bandera_boton_reposicion_activo}' == 'True'
        Grid captura de reposicion de dias no vistos
    END
    IF    '${Bandera_notificacion_azul}' == 'True'
        Sleep    5s
    END
   

Grid captura de reposicion de dias no vistos
    Wait Until Element Is Visible    ${Combo_dias_de_reposicon}
    Click Element    ${Combo_dias_de_reposicon}
    Input Text    ${Combo_dias_de_reposicon}    ${Dias_de_reposicion}
    Wait Until Element Is Visible    ${Combo_causa_bonificación}
    Click Element    ${Combo_causa_bonificación}
    Wait Until Element Is Visible    ${Causa_bonificacion}
    Click Element    ${Causa_bonificacion}
    Sleep    5s
    Click Element    ${Boton_enviar}

Cargando suscriptor que no se encuentra en periodo vigente
    Wait Until Element Is Visible    ${Combo_suscriptor}
    Click Element    ${Combo_suscriptor}
    Wait Until Element Is Visible    ${Icono_agregar_suscriptor}
    Click Element    ${Icono_agregar_suscriptor}
    Wait Until Element Is Visible    ${Campo_suscriptor}
    Input Text    ${Campo_suscriptor}    ${Suscriptor_que_no_se_encuentra_vigente}
    Sleep    5s
    Press Keys    ${Campo_suscriptor}    ENTER
    Wait Until Element Is Visible    ${Selecciona_suscriptor_que_no_se_encuentra_vigente}
    Click Element    ${Selecciona_suscriptor_que_no_se_encuentra_vigente}
    Wait Until Element Is Visible    ${Notificacion_azul}
    Click Element    ${Notificacion_azul}
