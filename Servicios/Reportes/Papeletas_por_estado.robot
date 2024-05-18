*** Settings ***
Documentation    Reporte papeletas por estado
Library    String
Library    SeleniumLibrary
#Library    RPA.Windows


*** Variables ***
#########################Validacion de usuarios######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Megajos202   #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*                                                                                                                                                                                                                                                                                                                                                         
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Pantalla reporte papeletas por estado###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Pape
${Reporte_papeletas_por_estado}    xpath=//td[contains(.,'Papeletas por estado')]
######################################Botones#############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
#######################################Checkbox y radio button############################################################################################################
${Radio_button_xSucursal}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[1]
${Radio_button_xSucursalgrupo}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Checkbox_todos_los_folios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Checkbox_todos_los_tipos_de_servicio}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Checkbox_seleccionar_todos_los_promotores}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Checkbox_todas_las_promociones}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Checkbox_todas_las_causas}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
###########################################Combos##############################################################################################################
${Combo_entre_el_estado}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Combo_y_el_estado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-by-state-form/form/div/div/div[1]/div[2]/div[2]/div[2]/div/app-ballot-status-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_fecha_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-by-state-form/form/div/div/div[1]/div[3]/app-start-end-date-parameter/div/div/div[2]/div[1]/dx-date-box/div[1]/div/div[1]/input
${Combo_fecha_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-by-state-form/form/div/div/div[1]/div[3]/app-start-end-date-parameter/div/div/div[2]/div[2]/dx-date-box/div[1]/div/div[1]/input
${Combo_desde}    xpath=(//input[contains(@autocomplete,'off')])[14]
${Desde}    12
${Combo_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-by-state-form/form/div/div/div[1]/div[4]/app-invoice-range-parameter/div/div/div/div[2]/div[2]/dx-number-box/div/div[1]/input
${Hasta}    32
${Combo_entre_el_tipo_de_servicio}    xpath=(//input[contains(@autocomplete,'off')])[16]
${Combo_y_el_tipo_de_servicio}    xpath=(//input[contains(@autocomplete,'off')])[17]
${Combo_entre_el_promotor}    xpath=(//input[contains(@autocomplete,'off')])[22]
${Combo_y_el_promotor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-ballots-by-state-form/form/div/div/div[2]/div[1]/div[2]/div[2]/div/app-salesman-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_entre_la_promocion}    xpath=(//input[contains(@autocomplete,'off')])[28]
${Combo_y_la_promocion}    xpath=(//input[contains(@autocomplete,'off')])[29]
${Combo_entre_la_causa}    xpath=(//input[contains(@autocomplete,'off')])[34]
${Combo_y_la_causa}    xpath=(//input[contains(@autocomplete,'off')])[37]
#############################################Registros##########################################################################################################
${Entre_el_estado}    xpath=//td[contains(.,'INFORMACION')]
${Y_el_estado}    xpath=(//td[contains(.,'ASIGNADA')])[2]
${Fecha_desde}    xpath=(//span[contains(.,'2')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'6')])[14]
${Tipo_de_servicio_1}    xpath=//td[contains(.,'TV Básico Plus')]
${Tipo_de_servicio_2}    xpath=(//td[contains(.,'TV Negocio Conecta')])[2]
${Promotor_1}    xpath=//td[contains(.,'COINTSA S. A. DE C. V.')]
${Promotor_2}    xpath=(//td[contains(.,'A LA TORRE TORRES MARCOS IVAN')])[2]
${Promocion_1}    xpath=//td[contains(.,'Descuento TriplePack')]
${Promocion_2}    xpath=(//td[contains(.,'Promoción Consumo CallCenter')])[2]
${Causa1}    xpath=//td[contains(.,'PRECIO')]
${Causa2}    xpath=(//td[contains(.,'VENDEDOR MENTIROSO')])[2]



*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte papeletas por estado
    [Tags]    Ingresar usuario
    Validacion de usuarios

Consulta con todos los checkbox
    [Documentation]    Reporte papeletas por estado
    [Tags]    Consulta con todos los checkbox activos
    Entre el estado
    Y el estado

Combos
    [Documentation]    Reporte papeletas por estado
    [Tags]    Pantalla reporte papeletas por estado
    Checkbox xSucursalGrupo
    Fecha desde
    Fecha hasta
    Checkbox todos los folios
    Folios
    Checkbox todos los tipos de servicios
    Entre tipo de servicio
    Y el tipo de servicio
    Checkbox todos las promociones
    Entre el promotor
    Y el promotor
    Checkbox todas las promociones
    Entre la promocion
    Y la promocion
    Checkbox todas las causas
    Entre la causa
    Y la causa 
    Sleep    5s

Papeletas por estado
    [Documentation]    Reporte papeletas por estado
    [Tags]    Boton aceptar
    Test boton aceptar

Boton limpiar
    [Documentation]    Reporte papeletas por estado
    [Tags]    Botón limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte papeletas por estado
    [Tags]    Botón cancelar
    Test boton cancelar
  

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
        Click Element    ${Boton_servicios}
        Sleep    5s
        Scroll Element Into View    ${Boton_reportes}
        Sleep    5s
        Click Element    ${Boton_reportes}
        Wait Until Element Is Visible    ${Combo_reportes}
        Click Element    ${Combo_reportes}
        Wait Until Element Is Visible    ${Campo_descripcion}
        Input Text    ${Campo_descripcion}    ${Descripcion_reporte}
        Sleep    4s
        Click Element    ${Reporte_papeletas_por_estado}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Entre el estado
    Wait Until Element Is Visible    ${Combo_entre_el_estado}
    Click Element    ${Combo_entre_el_estado}
    Sleep    15s
    #Wait Until Element Is Visible    ${Entre_el_estado}
    Click Element    ${Entre_el_estado}        

Y el estado
    Wait Until Element Is Visible    ${Combo_y_el_estado}
    Click Element    ${Combo_y_el_estado}
    #Wait Until Element Is Visible    ${Y_el_estado}
    Sleep    7s
    Click Element    ${Y_el_estado}

Test boton aceptar
    Scroll Element Into View    ${Boton_aceptar}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Fecha desde
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}

Fecha hasta
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}

Folios
    Wait Until Element Is Visible    ${Combo_desde}
    Click Element    ${Combo_desde}
    Input Text    ${Combo_desde}    ${Desde}
    Wait Until Element Is Visible    ${Combo_hasta}
    Click Element    ${Combo_hasta}
    Input Text    ${Combo_hasta}    ${Hasta}

Entre tipo de servicio
    Scroll Element Into View    ${Combo_entre_el_tipo_de_servicio}
    Wait Until Element Is Visible    ${Combo_entre_el_tipo_de_servicio}
    Click Element    ${Combo_entre_el_tipo_de_servicio}
    Wait Until Element Is Visible    ${Tipo_de_servicio_1}
    Click Element    ${Tipo_de_servicio_1}

Y el tipo de servicio
    Wait Until Element Is Visible    ${Combo_y_el_tipo_de_servicio}
    Click Element    ${Combo_y_el_tipo_de_servicio}
    Wait Until Element Is Visible    ${Tipo_de_servicio_2}
    Click Element    ${Tipo_de_servicio_2}

Entre el promotor
    Wait Until Element Is Visible    ${Combo_entre_el_promotor}
    Click Element    ${Combo_entre_el_promotor}
    Wait Until Element Is Visible    ${Promotor_1}
    Click Element    ${Promotor_1}

Y el promotor
    Wait Until Element Is Visible    ${Combo_y_el_promotor}
    Click Element    ${Combo_y_el_promotor}
    Wait Until Element Is Visible    ${Promotor_2}
    Click Element    ${Promotor_2}

Entre la promocion
    #Wait Until Element Is Visible    ${Combo_entre_la_promocion}
    Sleep    5s
    Click Element    ${Combo_entre_la_promocion}
    Wait Until Element Is Visible    ${Promocion_1}
    Click Element    ${Promocion_1}

Y la promocion
    Scroll Element Into View    ${Combo_y_la_promocion}
    Wait Until Element Is Visible    ${Combo_y_la_promocion}
    Click Element    ${Combo_y_la_promocion}
    Wait Until Element Is Visible    ${Promocion_2}
    Click Element    ${Promocion_2}

Entre la causa
    Wait Until Element Is Visible    ${Combo_entre_la_causa}
    Click Element    ${Combo_entre_la_causa}
    #Wait Until Element Is Visible    ${Causa1}
    Sleep    5s
    Click Element    ${Causa1}

Y la causa
    Wait Until Element Is Visible    ${Combo_y_la_causa}
    Sleep    5s
    Click Element    ${Combo_y_la_causa}
    Wait Until Element Is Visible    ${Causa2}
    Click Element    ${Causa2}

Checkbox todos los tipos de servicios
    Scroll Element Into View    ${Checkbox_todos_los_tipos_de_servicio}    
    #Wait Until Element Is Visible    ${Checkbox_todos_los_folios}
    Sleep    5s
    Wait Until Element Is Visible    ${Checkbox_todos_los_tipos_de_servicio}
    Click Element    ${Checkbox_todos_los_tipos_de_servicio}

Checkbox todos las promociones
    Scroll Element Into View    ${Checkbox_seleccionar_todos_los_promotores}
    Wait Until Element Is Visible    ${Checkbox_seleccionar_todos_los_promotores}
    Click Element    ${Checkbox_seleccionar_todos_los_promotores}

Checkbox todos los folios
    Scroll Element Into View    ${Checkbox_todos_los_folios}
    #Wait Until Element Is Visible    ${Checkbox_todos_los_folios}
    Sleep    5s
    Click Element    ${Checkbox_todos_los_folios}

Checkbox todas las promociones
    Wait Until Element Is Visible    ${Checkbox_todas_las_promociones}
    Click Element    ${Checkbox_todas_las_promociones}

Checkbox todas las causas
    Scroll Element Into View    ${Boton_aceptar}
    Wait Until Element Is Visible    ${Checkbox_todas_las_causas}
    Click Element    ${Checkbox_todas_las_causas}

Checkbox xSucursalGrupo
    Wait Until Element Is Visible    ${Radio_button_xSucursalgrupo} 
    Click Element    ${Radio_button_xSucursalgrupo} 

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Test boton cancelar
    Wait Until Element Is Visible    ${Boton_cancelar}
    Click Element    ${Boton_cancelar}
