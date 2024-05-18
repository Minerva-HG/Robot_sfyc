*** Settings ***
Documentation    Depositos bancarios
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
######################Depositos bancarios CIS#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Supervision}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]
${SupervisionQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]
${Depositos_bancarios_dev}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]/ul/li[3]/div/div/span
${Bloqueo_origen}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[4]/ul/li[7]/div/div/span
##########################Grid nuevo deposito##########################################################################################################################
##########################Combo CIS###########################################################
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-bank-deposit-container/div/div[2]/app-bank-deposit-form/form/div[1]/div/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${CIS}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
###############################Campo fecha############################################################
${Icono_calendario}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'1')])[1]    
################################Boton aceptar#################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
#################################Nuevo registro#######################################################################
${Icono_agregar}    xpath=//i[contains(@class,'dx-icon dx-icon-add')]
#################################Grid nuevo deposito##########################################################
${Combo_cuenta}    xpath=//app-bank-account-dropdown/dx-drop-down-box/div/div/div/input
${Cuenta}    xpath=//td[contains(.,'ca - Santander Mexicano')]
${Campo_deposito}    xpath=//dx-number-box/div/div/input
${Cantidad_ha_depositar}    1350
${Combo_forma}    xpath=//app-payment-method-dropdown/dx-drop-down-box/div/div/div/input 
${Forma}    xpath=(//td[contains(@aria-describedby,'dx-col-22')])[2]
${Boton_enviar}    xpath=//div[@class='dx-button-content'][contains(.,'Enviar')]
${Cerrar_notificacion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
####################################Eliminar registro################################################################################
${Registro_ha_eliminar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-app-bank-deposit-container/div/div[2]/app-bank-deposit-grid/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]
${Icono_eliminar}    xpath=//i[contains(@class,'dx-icon dx-icon-trash')]
${Confirmar_eliminacion}    xpath=//span[contains(.,'SI')]
####################################Icono guardar################################################################
${Icono_guardar}    xpath=//i[contains(@class,'dx-icon dx-icon-save')]
####################################Icono cancelar######################################################################
${Icono_cancelar}    xpath=//i[contains(@class,'dx-icon dx-icon-revert')]
####################################Notificacion despues de guardar######################################################
${Notificacion_despues_de_guardar}    xpath=(//i[@class='dx-icon dx-icon-close'])[2]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Depositos bancarios
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test pantalla depositos bancarios de cis
    [Documentation]    Depositos bancarios
    [Tags]    Pantalla depositos bancarios de cis
    Pantalla depositos bancarios de cis
    
Test combo cis
    [Documentation]    Depositos bancarios
    [Tags]    Combo cis
    Combo cis

Test campo fecha
    [Documentation]    Depositos bancarios
    [Tags]    Campo fecha
    Campo fecha

Test boton aceptar 
    [Documentation]    Depositos bancarios
    [Tags]    Boton aceptar
    Boton aceptar
    Validando si existe alguna notificacion

Test agregar nuevo registro
    [Documentation]    Depositos bancarios
    [Tags]    Test agregar nuevo registro
    Nuevo registro
    Grid nuevo deposito
    Validando si existe alguna notificacion

Test eliminar
    [Documentation]    Depositos bancarios
    [Tags]    Test eliminar un registro
    Eliminar registro

Tes icono cancelar
    [Documentation]    Depositos bancarios
    [Tags]    Test icono cancelar
    Icono cancelar

Test icono guardar
    [Documentation]    Depositos bancarios
    [Tags]    Test icono guardar
    Combo cis
    Campo fecha
    Boton aceptar
    Validando si existe alguna notificacion
    Icono guardar


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

Pantalla depositos bancarios de cis
    Sleep    10s
    Click Element   ${Moduloservicios}
    Wait Until Element Is Visible    ${Supervision}
    Click Element    ${Supervision}
    #QAClick Element    ${SupervisionQA}
    Sleep    5s
    Scroll Element Into View    ${Bloqueo_origen}
    Wait Until Element Is Visible    ${Depositos_bancarios_dev}
    Click Element    ${Depositos_bancarios_dev}
    #QAClick Element    ${Cajero_QA}

Combo cis
    Sleep    5s
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${CIS}    
    Click Element    ${CIS}

Campo fecha
    Sleep    5s
    Click Element    ${Icono_calendario}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Nuevo registro
    Sleep    7s
    Click Element    ${Icono_agregar}
     
Grid nuevo deposito
    Wait Until Element Is Visible    ${Combo_cuenta}    
    Click Element   ${Combo_cuenta}
    Sleep    5s
    Click Element   ${Combo_cuenta}
    Sleep    10s
    #Wait Until Element Is Visible    ${Cuenta}
    Click Element    ${Cuenta}
    Wait Until Element Is Visible    ${Campo_deposito}
    Click Element    ${Campo_deposito}
    Input Text    ${Campo_deposito}    ${Cantidad_ha_depositar}  
    Wait Until Element Is Visible    ${Combo_forma} 
    Click Element    ${Combo_forma}
    Sleep    7s
    Click Element    ${Forma}
    Sleep    7s
    Click Element    ${Boton_enviar}

Validando si existe alguna notificacion
    Sleep    5s
    ${Verificar_si_existe_alguna_notificacion}=    Run Keyword And Return Status    Click Element    ${Cerrar_notificacion}
    IF    '${Verificar_si_existe_alguna_notificacion}' == 'True'
        Sleep    5s
    END
    
Eliminar registro
    Sleep    10s
    Click Element    ${Registro_ha_eliminar}
    Wait Until Element Is Visible    ${Icono_eliminar}
    Click Element    ${Icono_eliminar}
    Wait Until Element Is Visible    ${Confirmar_eliminacion}
    Click Element    ${Confirmar_eliminacion}

Icono guardar
    Sleep    5s
    Click Element    ${Icono_guardar}
   
Icono cancelar
    Sleep    5s
    Click Element    ${Icono_cancelar}

Notificacion despues del icono guardar
    Sleep    7s
    Click Element    ${Notificacion_despues_de_guardar}