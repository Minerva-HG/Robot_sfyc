*** Settings ***
Library  SeleniumLibrary
Library  String
#Library    RPA.Desktop


*** Variables ***
#######################################Validación de usuarios######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #AHERNANDEZSI    RSALCIDO    ROLEONEL    EDRAMIREZGA    ACRUZS    MVILLALOBOSA    ANGUERREROA    VBECERRAE    joriospe                                                                          
@{passL}=    Create List    Megajos202   #Megacable2022*    Megacable2022*/    Omega1234    Megacable2022    Megacable2020*    Mega12345    #Mega2023    Omega.2019    Megajos202                                                                                                                                                                           
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
###################################Pantalla REQUISICIÓN DE MATERIALES##################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/div[1]
${Botonoperaciones}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Botonmateriales}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[2]
${Requisiciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[2]/ul/li[1]
#################################Combos#############################################################################
${Combo_tipo_cuadrilla}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-requisition-container/div/div[3]/div/app-requisition-form/form/app-shared-material-crew-parameter/div/div[1]/app-type-crew-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_cuadrilla}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-requisition-container/div/div[3]/div/app-requisition-form/form/app-shared-material-crew-parameter/div/div[2]/app-crew-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_fecha_requisicion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-requisition-container/div/div[3]/div/app-requisition-form/form/div/div/dx-date-box/div/div/div[1]/input
${Campo_agrgar_folio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-requisition-container/div/div[3]/div/app-requisition-form/form/app-shared-material-folio-parameter/div/dx-number-box/div/div[1]/input
#################################Iconos########################################################################
${Icono_por_cuadrilla}    xpath=//i[contains(@class,'dx-icon dx-icon-unselectall')]
${Icono_por_folio}    xpath=//i[contains(@class,'dx-icon dx-icon-export')]
${Icono_imprimir}    xpath=(//i[contains(@class,'dx-icon dx-icon-print')])[2]
${Icono_guardar}    xpath=//i[contains(@class,'dx-icon dx-icon-save')]
${Icono_buscar_ultima_devolucion}    xpath=//i[contains(@class,'dx-icon dx-icon-search')]
${Icono_ver_entregas}    xpath=//i[contains(@class,'dx-icon dx-icon-pulldown')]
#################################Pestañas##########################################################################
${Materiales}    xpath=//span[@class='dx-tab-text'][contains(.,'Materiales')]
${Equipos}    xpath=//span[@class='dx-tab-text'][contains(.,'Equipos')]
#################################Filtros##################################################################################
${Filtro_tipo_material}    xpath=//input[contains(@aria-describedby,'dx-col-144')]
${Filtro_descripcion}    xpath=//input[contains(@aria-describedby,'dx-col-145')]
${Filtro_material}    xpath=//input[contains(@aria-describedby,'dx-col-146')]
${Filtro_descripcion_material}    xpath=//input[contains(@aria-describedby,'dx-col-147')]
${Filtro_stock}    xpath=//input[contains(@aria-describedby,'dx-col-148')]
${Filtro_existencia}    xpath=//input[contains(@aria-describedby,'dx-col-149')]
${Filtro_requerida}    xpath=//input[contains(@aria-describedby,'dx-col-150')]
${Filtro_modelo}    xpath=//input[contains(@aria-describedby,'dx-col-151')]
${Filtro_stock}    xpath=//input[contains(@aria-describedby,'dx-col-152')]
${Filtro_existencia}    xpath=//input[contains(@aria-describedby,'dx-col-153')]
${Filtro_requerida}    xpath=//input[contains(@aria-describedby,'dx-col-154')]
${Filtro_descripcion_tipo_cuadrilla}    xpath=//input[contains(@maxlength,'7094')]
################################Botones###############################################################
${Boton_aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
${Boton_limpiar}    xpath=(//span[@class='dx-button-text'][contains(.,'Limpiar')])[2]
${Boton_limpiar_existencias}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-requisition-container/div/div[2]/div/dx-button
${Boton_enviar}    xpath=//div[@class='dx-button-content'][contains(.,'Enviar')]
${Boton_cancelar_requisicion}    xpath=(//div[contains(.,'Cancelar')])[20]
####################################Registros##################################################################
${Tipo_cuadrilla}    xpath=//td[normalize-space()='E Cuadrillas Externas']
${Cuadrilla}    xpath=//td[contains(.,'0006')]
${Fecha}    xpath=(//span[contains(.,'23')])[1]
${Folio}    14343154
${Tipo_cuadrilla_existencia_mayor_1}    xpath=//td[normalize-space()='E Cuadrillas Externas']
${Cuadrilla_existencia_mayor_1}    xpath=//td[contains(.,'0003')]
${Descripcion_tipo_cuadrilla}    Cuadrillas    
####################################Notificaciones######################################################################
${Notificacion_amarilla}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Notificacion_verde}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Validacion de usuarios
    
Consultar Cuadrilla Materiales    
    [Documentation]    Validando materiales que tiene asignada la cuadrilla
    [Tags]    test_dos
    Combo tipo cuadrilla
    Combo cuadrilla
    Boton aceptar
    Validando si existe alguna notificacion

Realizar una Requisición
    [Documentation]    Validando materiales que guarde la requisicion
    [Tags]    test_tres
    Icono guardar
    Boton enviar
    Validando si existe alguna notificacion

#Limpiar Existencias
    #[Documentation]    Validando que active boton limpiar existencias
    #[Tags]    test_cuatro
    #Boton limpiar
    #Tipo cuadrilla con cantidad de existencia mayor a 1
    #Boton aceptar
    #Boton limpiar existencias

Imprimir Requisiciones
    [Documentation]    Validando que imprima la requisicion
    [Tags]    test_cinco
    Boton limpiar
    Combo tipo cuadrilla
    Combo cuadrilla
    Boton aceptar
    Validando si existe alguna notificacion
    Icono imprimir

Busqueda Ultima Devolución
    [Documentation]    Validando que busque la ultima devolucion
    [Tags]    test_seis
    Boton limpiar
    Combo tipo cuadrilla
    Combo cuadrilla
    Boton aceptar
    Validando si existe alguna notificacion
    Icono buscar ultima devolucion

Consultar por folio
    [Documentation]    Validando que permita la busqueda por folio
    [Tags]    test_siete
    Boton limpiar
    Icono por folio
    Buscar folio
    Validando si existe alguna notificacion

Ver Entregas
    [Documentation]    Validando entregas de materiales
    [Tags]    test_ocho
    Icono por cuadrilla
    Boton limpiar
    Combo tipo cuadrilla
    Combo cuadrilla
    Boton aceptar
    Validando si existe alguna notificacion
    Icono guardar
    Boton enviar
    Validando si existe alguna notificacion
    Icono ver entregas


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
        Click Element    ${Botoncontrol}
        Wait Until Element Is Visible    ${Botonoperaciones}
        Click Element    ${Botonoperaciones}
        Wait Until Element Is Visible    ${Botonmateriales}
        Click Element    ${Botonmateriales}
        Wait Until Element Is Visible    ${Requisiciones}
        Click Element    ${Requisiciones}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END 

Combo tipo cuadrilla
    #Wait Until Element Is Visible    ${Combo_tipo_cuadrilla}
    Sleep    4s
    Click Element    ${Combo_tipo_cuadrilla}
    Wait Until Element Is Visible    ${Filtro_descripcion_tipo_cuadrilla}
    Input Text    ${Filtro_descripcion_tipo_cuadrilla}    ${Descripcion_tipo_cuadrilla}
    Wait Until Element Is Visible    ${Tipo_cuadrilla}
    Click Element    ${Tipo_cuadrilla}

Combo cuadrilla
    Wait Until Element Is Visible    ${Combo_cuadrilla}
    Click Element    ${Combo_cuadrilla}
    Wait Until Element Is Visible    ${Cuadrilla}
    Click Element    ${Cuadrilla}

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Validando si existe alguna notificacion
    #Wait Until Page Contains    ${Boton_aceptar}
    Sleep    17s
    ${Bandera_notificacion_amarilla}=    Run Keyword And Return Status    Page Should Contain Element    ${Notificacion_amarilla}
    ${Bandera_notificacion_verde}=    Run Keyword And Return Status    Page Should Contain Element    ${Notificacion_verde}
    IF    '${Bandera_notificacion_amarilla}' == 'True'
        Click Element    ${Notificacion_amarilla}
    END
    IF    '${Bandera_notificacion_verde}' == 'True'
        Click Element    ${Notificacion_verde}
    END


Icono guardar
    Sleep    15s
    ${Bandera_icono_guardar_activo}=    Run Keyword And Return Status    Page Should Contain Element    ${Icono_guardar}
    IF    '${Bandera_icono_guardar_activo}' == 'True'
        Click Element    ${Icono_guardar}
    ELSE
        Combo tipo cuadrilla
        Combo cuadrilla
        Boton aceptar
        Validando si existe alguna notificacion
    END

Boton enviar
    #Wait Until Element Is Visible    ${Boton_enviar}
    Sleep    4s
    Click Element    ${Boton_enviar}

Tipo cuadrilla con cantidad de existencia mayor a 1
    Sleep    4s
    Click Element    ${Combo_tipo_cuadrilla}
    Wait Until Element Is Visible    ${Filtro_descripcion_tipo_cuadrilla}
    Input Text    ${Filtro_descripcion_tipo_cuadrilla}    ${Descripcion_tipo_cuadrilla}
    Wait Until Element Is Visible    ${Tipo_cuadrilla_existencia_mayor_1} 
    Click Element    ${Tipo_cuadrilla_existencia_mayor_1} 
    Wait Until Element Is Visible    ${Combo_cuadrilla}
    Click Element    ${Combo_cuadrilla}
    Wait Until Element Is Visible    ${Cuadrilla_existencia_mayor_1}
    Click Element    ${Cuadrilla_existencia_mayor_1}

Boton limpiar existencias
    Wait Until Element Is Visible    ${Boton_limpiar}
    ${Bandera_boton_limpiar_existencias}=    Run Keyword And Return Status    Page Should Contain Element    ${Boton_limpiar_existencias}
    IF    '${Bandera_boton_limpiar_existencias}' == 'True'
        Click Element    ${Boton_limpiar_existencias}
    ELSE
        Fail
    END

Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}
    Sleep    5s

Icono imprimir
    Wait Until Element Is Visible    ${Boton_aceptar}
    ${Bandera_icono_imprimir_activo}=    Run Keyword And Return Status    Page Should Contain Element    ${Icono_imprimir}
    IF    '${Bandera_icono_imprimir_activo}' == 'True'
        Click Element    ${Icono_imprimir}
    ELSE
        Combo tipo cuadrilla
        Combo cuadrilla
        Boton aceptar
        Validando si existe alguna notificacion
    END

Icono ver entregas
    Wait Until Element Is Visible    ${Boton_aceptar}
    ${Bandera_icono_ver_entregas_activo}=    Run Keyword And Return Status    Page Should Contain Element    ${Icono_ver_entregas}
    IF    '${Bandera_icono_ver_entregas_activo}' == 'True'
        Click Element    ${Icono_ver_entregas}
    ELSE
        Combo tipo cuadrilla
        Combo cuadrilla
        Boton aceptar
        Validando si existe alguna notificacion
    END

Icono buscar ultima devolucion
    Wait Until Element Is Visible    ${Boton_aceptar}
    ${Bandera_icono_buscar_ultima_devolucion}=    Run Keyword And Return Status    Page Should Contain Element    ${Icono_buscar_ultima_devolucion}
    IF    '${Bandera_icono_buscar_ultima_devolucion}' == 'True'
        Click Element    ${Icono_buscar_ultima_devolucion}
    ELSE
        Combo tipo cuadrilla
        Combo cuadrilla
        Boton aceptar
        Validando si existe alguna notificacion
    END

Icono por folio
    Wait Until Element Is Visible    ${Icono_por_folio}
    Click Element    ${Icono_por_folio}

Buscar folio
    Wait Until Element Is Visible    ${Campo_agrgar_folio}
    Click Element    ${Campo_agrgar_folio}
    Input Text    ${Campo_agrgar_folio}    ${Folio}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Icono por cuadrilla
    Wait Until Element Is Visible    ${Icono_por_cuadrilla}
    Click Element    ${Icono_por_cuadrilla}
