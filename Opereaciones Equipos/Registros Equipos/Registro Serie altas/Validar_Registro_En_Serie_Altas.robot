*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List     RCAMINOS    VMAGALLANESI    GRSOTOM    IESTRADAV    MAPARRAR    LPLOZANO    LMORALESA    AGARCIA                          
@{passL}=    Create List     metro1234    Megacable2023    Mega2022    Mega123    Mega1234    Chatito.    Mega123    Jeshua1982                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#######################################Pantalla Registro en serie altas#########################
${Equipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/div[1]
${Bottonregistroserie}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[1]/div[1]/div/span
${Bottonaltas}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[1]/ul/li[1]/div
#####################################Altas de series#####################################################################################
${Bottonagregar}  xpath=//i[contains(@class,'dx-icon dx-icon-add')]
${Bottontipoequipo}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-add-form/form/div/div[1]/app-type-equipment-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Equipo}  xpath=//td[contains(.,'SET TOPS')]
${Bottonarchivo}  xpath=//*[@id="fileuploader-container"]/dx-file-uploader/div/div/div/div[1]/div[1]
${csv}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div/div/i
${Bottonlimpiar}  xpath=//*[@id="fileuploader-container"]/div/dx-button
${Bottonenviar}  xpath=//span[contains(.,'Aceptar')]
${Notificacion}  xpath=//i[@class='dx-icon dx-icon-close'] 
${Notificacion_procesando_transacciones}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
####################################Pantalla transacciones##########################################################################################
${Desplegar_menu}  xpath=//i[contains(@class,'dx-icon dx-icon-chevrondoubleleft')]
${Transacciones}  xpath=//span[normalize-space()='Transacciones']
${Icono_actualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
${Campotransaccion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]
${Bottonejecutar}  xpath=//div[@class='dx-button-content'][contains(.,'Ejecutar')]
${Button_descargar_detalle_de_validaciones}    xpath=//span[contains(.,'Descargar detalle de validaciones')]
###################################################################################################################################################
${Bottonordendecompra}  name:purchaseOrder
${Orden}  xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td
${Bottonprovedor}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/form/div/app-transfer-added-invoice-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Provedor}  xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td
${Bottondetalledevalidaciones}  xpath=//span[normalize-space()='Ejecutar']
${Bottonaceptarequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[1]/dx-button
${Bottoneliminarequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-accept-equipment-main-container/div/app-transfer-added-grid/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[2]/dx-button
##########################################Boton cancelar y limpiar########################################################
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=(//span[contains(.,'Limpiar')])[2]
#########################################Rutas de archivos######################################
${Archivo_csv}
${Archivo_txt}
########################################Filtros##############################################
${Campo_tipo_equipo}    xpath=//input[contains(@inputmode,'decimal')]    
${Tipo_equipo}    15
${Campo_descripcion_equipo}     xpath=//input[contains(@maxlength,'7081')] 
${Descripcion_equipo}    COMBINADORA

*** Test Cases ***
Usuarios con permisos a la pantalla
   Validación de usuarios

Alta de equipos
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Filtros
    Filtro combo tipo equipo

Boton limpiar
    Limpiar datos seleccionados

Boton cancelar
    Cancelar proceso
    Sleep    70s

Alta del mismo equipo
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Filas duplicadas
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Combinado Series completamente nuevas y Series que ya fueron dadas de alta alguna vez
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Campos vacios
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Columna 5
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Tipo de equipo = 2 y el modelo soporta voz = true
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Soporta_iptv , Tipo_equipo = 4
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Soporta_NGV , Tipo_equipo = 4
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Tipo Equipo 2, soporta Voz = 0
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Columna USB_MAC
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Fechas
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Nuevas columnas en .csv
    Alta de nuevas series
    Carga archivo
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS

Archivos validos
    Alta de nuevas series
    Carga archivo csv
    Transacciones
    Regresando a pantalla REGISTRO EN SERIE ALTAS
    Alta de nuevas series
    Carga archivo txt

Filtros
    Filtro combo tipo equipo

Boton limpiar
    Limpiar datos seleccionados

Boton cancelar
    Cancelar proceso


*** Keyword ***
Validación de usuarios
  FOR    ${counter}    IN RANGE    1     9 
    #FOR    ${counter}    IN RANGE    1     2
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
        Click Element    ${Equipos}
        Wait Until Element Is Visible    ${Bottonoperacionesequipos}
        Click Element    ${Bottonoperacionesequipos}
        Wait Until Element Is Visible    ${Bottonregistroserie}
        Click Element    ${Bottonregistroserie}
        Wait Until Element Is Visible    ${Bottonaltas}
        Click Element    ${Bottonaltas}     
    IF    ${counter} <= ${7}
        Sleep    10s
        Close Browser
    END
   END

Alta de nuevas series
    Wait Until Element Is Visible    ${Bottonagregar}
    Click Element    ${Bottonagregar}
    Wait Until Element Is Visible    ${Bottontipoequipo}
    Click Element    ${Bottontipoequipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}
    Wait Until Element Is Visible    ${Bottonarchivo}
    Click Element    ${Bottonarchivo}
    Sleep    15s

Carga archivo
    Wait Until Element Is Visible    ${Bottonenviar}
    Click Element    ${Bottonenviar}
    Sleep    20s
    Click Element    ${Notificacion}

Transacciones
    Wait Until Element Is Visible    ${Desplegar_menu}
    Click Element    ${Desplegar_menu}
    Wait Until Element Is Visible    ${Equipos}
    Click Element    ${Equipos}
    Wait Until Element Is Visible    ${Transacciones}
    Click Element    ${Transacciones}
    Wait Until Element Is Visible    ${Icono_actualizar}
    Click Element    ${Icono_actualizar}
    Wait Until Element Is Visible    ${Campotransaccion}
    Click Element    ${Campotransaccion}
    Sleep    5s
    ${Banderatransactionverde}=  Run Keyword And Return Status    Click Element   ${Bottonejecutar}
    ${Banderatransactionyellow}=  Run Keyword And Return Status    Click Element   ${Button_descargar_detalle_de_validaciones} 
    IF    '${Banderatransactionverde}' == 'True'
        Wait Until Element Is Visible    ${Notificacion_procesando_transacciones}
        Click Element    ${Notificacion_procesando_transacciones}
        Sleep    25s
        Click Element    ${Notificacion_procesando_transacciones}
        #${Validando_notificacion}=    Run Keyword And Return Status    Click Element    ${Notificacion_procesando_transacciones}
        #WHILE    '${Validando_notificacion}' == 'False'
            #${Validando_notificacion}=    Run Keyword And Return Status    Click Element    ${Notificacion_procesando_transacciones}
        #END
    END 
    IF    '${Banderatransactionyellow}' == 'True'
        Sleep    5s
    END
    IF    '${Banderatransactionverde}' == 'False' and '${Banderatransactionyellow}' == 'False'
        Sleep    5s
    END

Regresando a pantalla REGISTRO EN SERIE ALTAS
    Wait Until Element Is Visible    ${Desplegar_menu}
    Click Element    ${Desplegar_menu}    
    Click Element    ${Equipos}
    Wait Until Element Is Visible    ${Bottonoperacionesequipos}
    Click Element    ${Bottonoperacionesequipos}
    Wait Until Element Is Visible    ${Bottonregistroserie}
    Click Element    ${Bottonregistroserie}
    Wait Until Element Is Visible    ${Bottonaltas}
    Click Element    ${Bottonaltas}  
   
  
Filtro combo tipo equipo
    Wait Until Element Is Visible    ${Bottontipoequipo}
    Click Element    ${Bottontipoequipo}
    Input Text    ${Campo_tipo_equipo}    ${Tipo_equipo}
    Sleep    5s
    Clear Element Text    ${Campo_tipo_equipo}
    Input Text    ${Campo_descripcion_equipo}    ${Descripcion_equipo}
    Sleep    5s
    Clear Element Text    ${Campo_tipo_equipo}

Carga archivo csv
    Choose File    ${Bottonarchivo}    ${Archivo_csv}
    Wait Until Element Is Visible    ${Bottonenviar}
    Click Element    ${Bottonenviar}
    Sleep    20s
    Click Element    ${Notificacion}

Carga archivo txt
    Choose File    ${Bottonarchivo}    ${Archivo_txt}
    Wait Until Element Is Visible    ${Bottonenviar}
    Click Element    ${Bottonenviar}
    Sleep    20s
    Click Element    ${Notificacion}

Limpiar datos seleccionados
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Cancelar proceso
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
