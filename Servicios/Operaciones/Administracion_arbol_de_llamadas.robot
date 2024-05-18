*** Settings ***
Documentation    Servicios
Library    String
Library    SeleniumLibrary
Library    RPA.Windows
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML

*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.dev-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui    
${Usuario}  ADGARCIAM                                           
${Pass}  zacatecas                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
######################Pantalla administración arbol de llamadas#####################################################################################################################
${Moduloservicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/div[1]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]
${OperacionesQA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${administracion_arbol_de_llamdadas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]/ul/li[7]/div/div/span
#####################Scroll prueba reportes de servicios#############################################################################################
${Prueba_reportes_de_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]/ul/li[3]/ul/li[8]
######################Icono actualizar##################################################################################################################
${Icono_actualizar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-call-level-feature-tree-list/div/dx-tree-list/div/div[4]/div/div/div[3]/div[2]/div/div/div/i
#######################Filtro buscar#######################################################################################################################
${Filtro_buscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]
${Texto_ha_buscar}    OWNERSHIP    
########################Subproceso de llamada##################################################################################################################
${Selecciona_llamada}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-call-level-feature-tree-list/div/dx-tree-list/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[1]/div[1]/div
########################Registro nuevo#######################################################################################################################
${Icono_agregar}    xpath=//i[contains(@class,'dx-icon dx-icon-add')]
${Campo_tipo}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Tipo}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'VISITA CIS')]
${Campo_tecnologia}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Tecnologia}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'FALLA EN TODOS LOS SERVICIOS')]
${Campo_tipo_llamada}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Tipo_llamada}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'TODAS')]
${Campo_sintoma}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Sintoma}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'SIN NINGUN SERVICIO')]
${Campo_diagnostico}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Diagnostico}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'PROBLEMAS EN EL DOMICILIO')]
${Campo_definitivo}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Definitivo}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'QUEJA TECNICA SIN SERVICIO')]
${Icono_mostrar_al_generar_queja}    xpath=/html/body/div[2]/div/div[2]/app-call-level-feature-form/form/div[7]/dx-check-box/div/span
${Boton_enviar}    xpath=/html/body/div[2]/div/div[2]/app-call-level-feature-form/form/div[8]/dx-button
#######################Editar registro#############################################################################
${Icono_editar}    xpath=(//a[@aria-label='Modificar'])[1]
${Icono_habilitado}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Icono_guardar}    xpath=//a[contains(@title,'Guardar')]
${Cierre_notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]

*** Test Cases ***
Test ingresar usuario
    [Documentation]    Administracion arbol de llamadas
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena

Test pantalla administracion arbol de llamadas
    [Documentation]    Administracion arbol de llamadas
    [Tags]    Pantalla administracion arbol de llamadas
    Pantalla administracion arbol de llamadas

Test icono actualizar
    [Documentation]    Administracion arbol de llamadas
    [Tags]    Icono actualizar
    Icono actualizar

Test filtro buscar
    [Documentation]    Administracion arbol de llamadas
    [Tags]    Filtro buscar
    Filtro buscar
    
Test validando subprocesos de llamada
    [Documentation]    Administracion arbol de llamadas
    [Tags]    Validando subprocesos
    Subproceso de llamada

Test editar registro
    [Documentation]    Administracion arbol de llamadas
    [Tags]    Editar registro
    Editar registro
    
Test agregar registro nuevo
    [Documentation]    Administracion arbol de llamadas
    [Tags]    Validando subprocesos
    Registro nuevo

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

Pantalla administracion arbol de llamadas
    Sleep    10s
    Click Element   ${Moduloservicios}
    Wait Until Element Is Visible    ${Operaciones}
    Click Element    ${Operaciones}
    #Click Element    ${OperacionesQA}
    Sleep    5s
    Scroll Element Into View    ${administracion_arbol_de_llamdadas}
    Wait Until Element Is Visible    ${administracion_arbol_de_llamdadas}
    Click Element    ${administracion_arbol_de_llamdadas}
    #Click Element When Visible    ${Ventas_varios_QA}

Icono actualizar   
    Sleep    5S
    Click Element    ${Icono_actualizar} 
    
Filtro buscar
    Sleep    5S
    Input Text    ${Filtro_buscar}    ${Texto_ha_buscar}
    Sleep    7s
    Clear Element Text    ${Filtro_buscar}

Subproceso de llamada
    Sleep    5s
    Click Element    ${Selecciona_llamada}
    Sleep    10s
    Click Element    ${Selecciona_llamada}

Registro nuevo
    Sleep    5s
    Click Element    ${Icono_agregar}
    Sleep    5s
    Click Element    ${Campo_tipo}
    Wait Until Element Is Visible    ${Tipo}
    Click Element    ${Tipo}
    Wait Until Element Is Visible    ${Campo_tecnologia}
    Click Element    ${Campo_tecnologia}
    Wait Until Element Is Visible    ${Tecnologia}
    Click Element    ${Tecnologia}
    Wait Until Element Is Visible    ${Campo_tipo_llamada}
    Click Element    ${Campo_tipo_llamada}
    Wait Until Element Is Visible    ${Tipo_llamada}
    Click Element    ${Tipo_llamada}
    Wait Until Element Is Visible    ${Campo_sintoma}
    Click Element    ${Campo_sintoma}
    Wait Until Element Is Visible    ${Sintoma}
    Click Element    ${Sintoma}
    Wait Until Element Is Visible    ${Campo_diagnostico}
    Click Element    ${Campo_diagnostico}
    Wait Until Element Is Visible    ${Diagnostico}
    Click Element    ${Diagnostico}
    Wait Until Element Is Visible    ${Campo_definitivo}
    Click Element    ${Campo_definitivo}
    Wait Until Element Is Visible    ${Definitivo}
    Click Element    ${Definitivo}
    Scroll Element Into View    ${Icono_mostrar_al_generar_queja}
    Wait Until Element Is Visible    ${Icono_mostrar_al_generar_queja}
    Click Element    ${Icono_mostrar_al_generar_queja}
    Sleep    5s
    Click Element    ${Boton_enviar}

Editar registro
    Sleep    5s
    Click Element    ${Icono_editar}
    Wait Until Element Is Visible    ${Icono_habilitado}
    Click Element    ${Icono_habilitado}
    Wait Until Element Is Visible    ${Icono_guardar}
    Click Element    ${Icono_guardar}
    Sleep    5s
    Click Element    ${Cierre_notificacion}