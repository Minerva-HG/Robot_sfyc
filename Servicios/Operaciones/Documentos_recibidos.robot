*** Settings ***
Documentation    Contratos
Library    String
#Library    SeleniumLibrary
Library    RPA.Windows
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://servicios.qa-cluster.sfycnextgen.com.mx/ui  #https://global.dev-cluster.sfycnextgen.com.mx/ui    #
${Usuario}  ADGARCIAM                                           
${Pass}  zacatecas                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
######################Pantalla documentos recibidos#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]
${OperacionesQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Documentos_recibidos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]/ul/li[2]
${Documentos_recibidos_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[2]
#####################Scroll prueba reportes de servicios#############################################################################################
${Prueba_reportes_de_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]/ul/li[8]
####################Combo CIS####################################################################################################################################
${Combo_CIS}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-received-document-container/div/app-received-document-form/form/div[1]/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${CIS}    xpath=(//td[contains(@aria-describedby,'dx-col-11')])[2]
###############################Combo cajero########################################################################################################################
${Combo_cajero}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-received-document-container/div/app-received-document-form/form/div[2]/app-cashier-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${Cajero}    xpath=//td[contains(.,'CAJERO PayPal App')]
################################Combo fecha########################################################################################################################
${Combo_fecha}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Flecha_izquierda}    xpath=//i[@class='dx-icon dx-icon-chevronleft']
${20_diciembre_2022}    xpath=(//span[contains(.,'20')])[1]
###############################Boton consultar########################################################################################################################
${Boton_consultar}    xpath=//div[@class='dx-button-content'][contains(.,'Consultar')]
#################################Registro nuevo#######################################################################################################################
${Icono_agregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Combo_forma_de_pago}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Forma_de_pago}    xpath=//td[contains(.,'Cheque')]
${Campo_pago}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-received-document-container/div/app-received-document-grid/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[4]/div/div/div/div[1]/input
${Pago}    4000
${Campo_banco}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-received-document-container/div/app-received-document-grid/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[5]/div/app-bank-dropdown/dx-drop-down-box/div/div/div[1]/input
${Banco}    xpath=//td[contains(.,'BANAMEX S.A.')]
${Campo_cuenta_bancaria}    xpath=(//input[contains(@autocomplete,'off')])[22]
${Campo_referencia}    xpath=(//input[contains(@autocomplete,'off')])[20]
${Referencia}    XXXXXXXXXX064J    
${Campo_importe}    xpath=(//input[contains(@autocomplete,'off')])[21]
${Importe}    120
${Campo_tipo_convenio}    xpath=(//input[contains(@autocomplete,'off')])[23]
${Cuenta_bancaria}    xpath=//td[contains(.,'Banamex Domiciliación')]
${Tipo_convenio}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'Cargos Automáticos - Tarjetas de Crédito-')]
${Icono_guardar}    xpath=(//a[contains(@aria-label,'Guardar')])[2]
##############################Notificaciones###########################################################################################################
${Notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
###############################Iconos##################################################################################################################
${Icono_editar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-received-document-container/div/app-received-document-grid/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[1]
${Icono_cancelar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-received-document-container/div/app-received-document-grid/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[2]
###################################Editar registros####################################################################################################
${Pago_nuevo}    800
####################################Eliminar registro#####################################################################################################
${Icono_eliminar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-received-document-container/div/app-received-document-grid/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[2]
${Confirmacion_de_eliminacion}    xpath=//div[@class='dx-button-content'][contains(.,'Sí')]
###################################Boton limpiar##########################################################################
${Boton_limpiar}    xpath=//span[contains(.,'Limpiar')]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Documentos recibidos
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test pantalla documentos recibidos
    [Documentation]    Documentos recibidos
    [Tags]    Documentos recibidos
    Pantalla documentos recibidos

Test consulta de documentos
    [Documentation]    Documentos recibidos
    [Tags]    Consulta de documentos
    Combo CIS
    Combo cajero
    Combo fecha
    Boton consultar

Test agregar nuevo registro
    [Documentation]    Documentos recibidos
    [Tags]    Nuevo registro
    Nuevo registro
    Validando si existen notificaciones

Test editar registros
    [Documentation]    Documentos recibidos
    [Tags]    Editar registros si existen
    Editar registros si existen
    #--Validando si existen notificaciones
    #--Validando si se encuentra el icono cancelar activo

Test eliminar registro
    [Documentation]    Documentos recibidos
    [Tags]    Eliminar registros
    Icono eliminar

Test boton limpiar
    [Documentation]    Documentos recibidos
    [Tags]    Boton limpiar
    Boton limpiar

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Element Is Visible    ${Localizadorpagina}  
    #Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${BotondominioQA}
    #Click Element When Visible    ${SFyC}  
    Click Element When Visible    ${SFyCQA}
    Input Text When Element Is Visible     name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element When Visible    name:button

Pantalla documentos recibidos
    Sleep    10s
    #Click Element When Visible   ${Moduloservicios}
    #Wait Until Element Is Visible    ${Operaciones}
    #Click Element    ${Operaciones}
    Click Element    ${OperacionesQA}
    Sleep    5s
    #Scroll Element Into View    ${Prueba_reportes_de_servicios}
    #Wait Until Element Is Visible    ${Documentos_recibidos}
    #Click Element When Visible    ${Documentos_recibidos}
    Click Element When Visible    ${Documentos_recibidos_QA}

Combo CIS
    Sleep    5s
    Click Element    ${Combo_CIS}
    Wait Until Element Is Visible    ${CIS}
    Click Element    ${CIS}
    
Combo cajero
    Sleep    5s
    Click Element    ${Combo_cajero}
    Wait Until Element Is Visible    ${Cajero}
    Click Element    ${Cajero}

Combo fecha
    Sleep    5s
    Click Element    ${Combo_fecha}
    Sleep    5s
    Click Element    ${Flecha_izquierda}
    Click Element    ${Flecha_izquierda}
    Click Element    ${Flecha_izquierda}
    Click Element    ${Flecha_izquierda}
    Click Element    ${Flecha_izquierda}
    Sleep    5s
    Click Element    ${20_diciembre_2022}

Boton consultar
    Sleep    5s
    Click Element    ${Boton_consultar}

Nuevo registro
    Sleep    5s
    ${Bandera_icono_agregar}=  Run Keyword And Return Status    Click Element    ${Icono_agregar}
    IF    '${Bandera_icono_agregar}' == 'True'
        Sleep    5s
        Click Element    ${Combo_forma_de_pago}
        Wait Until Element Is Visible    ${Forma_de_pago}
        Click Element    ${Forma_de_pago}
        Input Text When Element Is Visible    ${Campo_pago}    ${Pago}
        Wait Until Element Is Visible    ${Campo_banco}
        Click Element    ${Campo_banco}
        Wait Until Element Is Visible    ${Banco}
        Click Element    ${Banco}
        Sleep    5s
        Scroll Element Into View    ${Campo_cuenta_bancaria}
        Input Text When Element Is Visible    ${Campo_referencia}    ${Referencia}
        Input Text When Element Is Visible    ${Campo_importe}    ${Importe}
        Scroll Element Into View    ${Campo_tipo_convenio}
        Wait Until Element Is Visible    ${Campo_cuenta_bancaria}
        Click Element    ${Campo_cuenta_bancaria}
        #Wait Until Element Is Visible    ${Cuenta_bancaria}
        Sleep    5s
        Click Element    ${Cuenta_bancaria}
        Wait Until Element Is Visible    ${Campo_tipo_convenio}
        Click Element    ${Campo_tipo_convenio}
        Wait Until Element Is Visible    ${Tipo_convenio}
        Click Element    ${Tipo_convenio}
        Sleep    10s
        Click Element    ${Icono_guardar}
    ELSE
        Nuevo registro
    END
   
Validando si existen notificaciones
    Sleep    5s
    ${Bandera_notificaciones}=  Run Keyword And Return Status    Click Element When Visible    ${Notificacion}
    WHILE    '${Bandera_notificaciones}' == 'False'
        Log To Console    No ha encontrado alguna notificacion
        Validando si existen notificaciones
    END

Editar registros si existen
    Sleep    5s
    ${Bandera_icono_cancelar}=  Run Keyword And Return Status    Click Element When Visible     ${Icono_cancelar}
    ${Bandera_icono_editar_activo}=  Run Keyword And Return Status    Click Element When Visible     ${Icono_editar}
    IF    "${Bandera_icono_cancelar}" == "False" and "${Bandera_icono_editar_activo}" == "False"
        Log To Console    Ningun icono se encuentra activo
        Editar registros si existen
    END
    IF    "${Bandera_icono_cancelar}" == "True" 
        Sleep    5s
        Log To Console    Icono cancelar activo, ahora vamos a seleccionar el icono editar....
        Sleep    5s
        Click Element    ${Icono_cancelar}
        Sleep    5s
        Click Element    ${Icono_editar}
        Sleep    5s
        Input Text When Element Is Visible    ${Campo_pago}    ${Pago_nuevo}
        Sleep    10s
        Click Element    ${Icono_guardar}
        Validando si existen notificaciones
    END
    
    IF    "${Bandera_icono_editar_activo}" == "True" 
        Sleep    5s
        Click Element    ${Icono_editar}
        Sleep    5s
        Input Text When Element Is Visible    ${Campo_pago}    ${Pago_nuevo}
        Sleep    10s
        Click Element    ${Icono_guardar}
        Validando si existen notificaciones
    END
    
Icono eliminar
    Sleep    5s
    Click Element    ${Icono_eliminar}
    Sleep    10s
    Click Element    ${Confirmacion_de_eliminacion}

Boton limpiar
    Sleep    5s
    Click Element    ${Boton_limpiar}