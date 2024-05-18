*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List     joriospe    #JDELAROSAC    MMLARIOS    RCASTROB    ANSARMIENTOD    JLOZANOM    CUNZUETAM    BCARDENAS                                                                  
@{passL}=    Create List     Mega12345    # jdelarosac    Mega1234    RCASTROB    Mega1013    JLOZANOM    Noviembre2    BCARDENAS                                                                                                                                                                                                                                                     
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${Usuario88}    IESTRADAV      
${Pass88}    Mega123     
${Usuario39}    CORTIZV        
${Pass39}    Omega.2019    
${Usuario1}    joriospe    
${Pass1}    Mega12345                             
#######################################Series###############################################################
${Archivo_con_series}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Operación-QA\Registro en serie bajas\RES S138\RES S100 - RES S100.csv
${Archivo_con_series_diferente_al_tipo_equipo_seleccionado}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Operación-QA\Registro en serie bajas\RES S138\Seriescontipoequipodiferentealseleccionado.csv        
${Archivo_con_series_que_no_existen}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Operación-QA\Registro en serie bajas\RES S138\Seriesquenoexisten.csv
${Archivo_con_series_tipo_4}    C:\Users\joriospe\Documents\SFyC-Equipos\EQU-QA\EQU-Operación-QA\Registro en serie bajas\RES S138\Seriestipo4.csv
${Serie}  275714971  
#######################################Pantalla REGISTRO EN SERIE BAJAS#####################################################################                   
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/div[1]
${Botonregistroserie}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[1]/div[1]/div/span
${Botonbajas}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[1]/ul/li[2]/div
######################################Checkbox######################################################################################################
${Checkboxcargararchivocsv}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[5]/dx-check-box/div/span
${Checkboxmotivobaja}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[2]/dx-check-box/div
############################Drop tipo equipo######################################################################################################
${Botontipodeequipo}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[1]/app-type-equipment-dropdown/dx-drop-down-box/div[1]/div/div[2]/div
${Equipo}  xpath=//td[contains(.,'CABLE MODEMS')]    #//td[normalize-space()='CONVERTIDORES']
${Equipo4}    xpath=(//td[contains(.,'SET TOPS')])[1]
##############################Drop motivos baja#############################################################################################################
${Combo_catalogo_motivos_baja}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Motivo_baja}    xpath=//td[contains(.,'Cambio por garantía')]
#######################################Botones#########################################################################################################
${Botonmotivodebaja}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[1]/div/app-register-serie-down-form/form/div/div[3]/app-equipment-catalog-motive-dropdown/dx-drop-down-box/div[1]/div/div[2]/div
${Botonseleccionararchivo}  xpath=//*[@id="fileuploader-container"]/dx-file-uploader/div/div/div/div[1]/div[1]
${Botonlimpiararchivo}  xpath=//*[@id="fileuploader-container"]/div/dx-button
${Botonlimpiar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[2]/footer/app-general-button/div/div[3]/dx-button
${Botoncancelar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[2]/footer/app-general-button/div/div[2]/dx-button
${Botonaceptar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-register-serie-main-container/div/div[2]/footer/app-general-button/div/div[1]/dx-button
${Botonmenuregresar}  xpath=//i[contains(@class,'dx-icon dx-icon-chevrondoubleleft')]
${Botonactualizartransacciones}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/dx-button
${Botondetalledevalidaciones}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[3]/dx-button
${Botonejecutar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[1]/dx-button
########################################Motivo baja###############################################################################################################
${Motivo}  xpath=//td[contains(.,'Cambio por garantía')]
####################################Transacciones###############################################################################################################
${Notificacion_finalizo_proceso_de_validacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Procesando_transacciones}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Finalizo_proceso_de_transaction_manager}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${Transacciones}  xpath=//span[normalize-space()='Transacciones']
${Campotransaccion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]/td[3]


*** Test Cases ***
Usuarios con permisos a la pantalla registro en serie bajas
    Validacion de usuarios

Seleccionar bajas
    Sleep   5s

Dar de baja equipos
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo
    Boton aceptar
    Transacciones

Modelo de equipo no se encuentra
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo con tipo equipos diferentes al seleccionado
    Boton aceptar
    Transacciones

El equipo no existe
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo con series que no existen
    Boton aceptar
    Transacciones

Equipos dados de baja
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo
    Boton aceptar
    Transacciones

Bitacora de convertidores
    Tipo de equipo 4
    Checkbox cargar archivo csv
    Cargando archivo csv con series tipo equipo 4
    Boton aceptar
    Transacciones

Boton borrar archivo
    Tipo de equipo 4
    Checkbox cargar archivo csv
    Cargando archivo csv con series tipo equipo 4
    Boton limpiar archivo

Boton cancelar
    Cancelar

Usuario 88
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Login usuario tipo 88
    Pantalla REGISTRO EN SERIE BAJAS
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo
    Boton aceptar
    Transacciones
    Cancelar
    
Usuario 39
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Login usuario tipo 39
    Pantalla REGISTRO EN SERIE BAJAS
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo
    Motivo baja
    Boton aceptar
    Transacciones
    Cancelar

Baja sin motivo
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Login usuario tipo 1
    Pantalla REGISTRO EN SERIE BAJAS
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo
    Boton aceptar
    Transacciones


Baja con motivo
    Tipo de equipo
    Checkbox cargar archivo csv
    Cargando archivo
    Checkbox Motivo baja
    Motivo baja
    Boton aceptar
    Transacciones
    Cancelar
    

*** Keyword ***
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
        Wait Until Element Is Visible    ${Botonoperacionesequipos}
        Click Element    ${Botonoperacionesequipos}
        Wait Until Element Is Visible    ${Botonregistroserie}
        Click Element    ${Botonregistroserie}
        Wait Until Element Is Visible    ${Botonbajas}
        Click Element    ${Botonbajas}   
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Checkbox cargar archivo csv
    Wait Until Element Is Visible    ${Checkboxcargararchivocsv}
    Click element  ${Checkboxcargararchivocsv}

Tipo de equipo
    Wait Until Element Is Visible    ${Botontipodeequipo}
    Click element  ${Botontipodeequipo}
    Wait Until Element Is Visible    ${Equipo}
    Click element  ${Equipo}

Cargando archivo
    Wait Until Element Is Visible    ${Botonseleccionararchivo}
    #Choose File    ${Botonseleccionararchivo}    ${Archivo_con_series}
    Click Element    ${Botonseleccionararchivo}

    
Boton aceptar
    Sleep    5s
    ${Boton_aceptar_activo}=    Run Keyword And Return Status    Click Element    ${Botonaceptar}
    IF    '${Boton_aceptar_activo}' == 'True'
        Sleep    10s
        Click Element    ${Notificacion_finalizo_proceso_de_validacion}
    ELSE
        Boton aceptar
    END
    

Transacciones
    Wait Until Element Is Visible    ${Botonmenuregresar}
    Click element  ${Botonmenuregresar}
    #Wait Until Element Is Visible    ${Menu_principal}
    #Click Element    ${Menu_principal}
    Wait Until Element Is Visible    ${Botonequipos}
    Click Element    ${Botonequipos}
    Wait Until Element Is Visible    ${Transacciones}
    Click Element    ${Transacciones}
    Wait Until Element Is Visible    ${Botonactualizartransacciones}
    Click Element    ${Botonactualizartransacciones}
    Wait Until Element Is Visible    ${Campotransaccion}
    Click Element    ${Campotransaccion}
    Sleep    10s
    ${Bandera_descargar_detalle_validaciones}=    Run Keyword And Return Status    Click Element    ${Botondetalledevalidaciones}
    ${Bandera_ejecutar}=    Run Keyword And Return Status    Click Element    ${Botonejecutar}
    IF    '${Bandera_descargar_detalle_validaciones}' == 'True'
        Wait Until Element Is Visible    ${Botonmenuregresar}
        Click Element    ${Botonmenuregresar}
        Wait Until Element Is Visible    ${Botonequipos}    
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botonoperacionesequipos}
        Click Element    ${Botonoperacionesequipos}
        Wait Until Element Is Visible    ${Botonregistroserie}
        Click Element    ${Botonregistroserie}
        Wait Until Element Is Visible    ${Botonbajas}
        Click Element    ${Botonbajas} 
    END
    IF    '${Bandera_ejecutar}' == 'True'
        Sleep    5s
        Click Element    ${Procesando_transacciones}
        Sleep    35s
        Click Element    ${Finalizo_proceso_de_transaction_manager}
        Wait Until Element Is Visible    ${Botonmenuregresar}
        Click Element    ${Botonmenuregresar}
        Wait Until Element Is Visible    ${Botonequipos}    
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botonoperacionesequipos}
        Click Element    ${Botonoperacionesequipos}
        Wait Until Element Is Visible    ${Botonregistroserie}
        Click Element    ${Botonregistroserie}
        Wait Until Element Is Visible    ${Botonbajas}
        Click Element    ${Botonbajas} 
    END
    
	
Cargando archivo con tipo equipos diferentes al seleccionado
    Wait Until Element Is Visible    ${Botonseleccionararchivo}
    #Choose File    ${Botonseleccionararchivo}    ${Archivo_con_series_diferente_al_tipo_equipo_seleccionado}
    Click Element    ${Botonseleccionararchivo}    

Cargando archivo con series que no existen
    Wait Until Element Is Visible    ${Botonseleccionararchivo}
    #Choose File    ${Botonseleccionararchivo}    ${Archivo_con_series_que_no_existen}
    Click Element    ${Botonseleccionararchivo}   

Tipo de equipo 4
    Wait Until Element Is Visible    ${Botontipodeequipo}
    Click element  ${Botontipodeequipo}
    Wait Until Element Is Visible    ${Equipo4}
    Click element  ${Equipo4}

Cargando archivo csv con series tipo equipo 4
    Wait Until Element Is Visible    ${Botonseleccionararchivo}
    #Choose File    ${Botonseleccionararchivo}    ${Archivo_con_series_tipo_4}
    Click Element    ${Botonseleccionararchivo} 

Boton limpiar archivo
    Sleep    5s
    ${Boton_aceptar_activo}=    Run Keyword And Return Status    Element Should Be Visible    ${Botonaceptar}
    IF    '${Boton_aceptar_activo}' == 'True'
        Click Element    ${Botonlimpiararchivo}
    ELSE
        Boton aceptar
    END

Cancelar
    Wait Until Element Is Visible    ${Botoncancelar}
    Click Element    ${Botoncancelar}
    Sleep    10s
    Close All Browsers

Login usuario tipo 88
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element     ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC} 
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text    name:Username   ${Usuario88}
    Input Text    name:Password   ${Pass88}
    Click Element   name:button

Pantalla REGISTRO EN SERIE BAJAS
    Sleep    10s
    Click Element    ${Botonequipos}
    Wait Until Element Is Visible    ${Botonoperacionesequipos}
    Click Element    ${Botonoperacionesequipos}
    Wait Until Element Is Visible    ${Botonregistroserie}
    Click Element    ${Botonregistroserie}
    Wait Until Element Is Visible    ${Botonbajas}
    Click Element    ${Botonbajas} 

Login usuario tipo 39
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element     ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC} 
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text    name:Username   ${Usuario39}
    Input Text    name:Password   ${Pass39}
    Click Element   name:button

Motivo baja
    Wait Until Element Is Visible    ${Combo_catalogo_motivos_baja}
    Click Element    ${Combo_catalogo_motivos_baja}
    Wait Until Element Is Visible    ${Motivo_baja}
    Click Element    ${Motivo_baja}

Login usuario tipo 1
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element     ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC} 
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text    name:Username   ${Usuario1}
    Input Text    name:Password   ${Pass1}
    Click Element   name:button

Checkbox Motivo baja
    Wait Until Element Is Visible    ${Checkboxmotivobaja}
    Click Element    ${Checkboxmotivobaja}
