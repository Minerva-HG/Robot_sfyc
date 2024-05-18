*** Settings ***
Documentation    Quejas administrativas auxiliar de quejas
Library    String
Library    SeleniumLibrary
Library    RPA.Windows
Library    XML


*** Variables ***
#########################Validacion de usuario######################################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui      
${Usuario}  joriospe                                           
${Pass}  Megajos202                                              
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
#########################Pantalla reporte quejas administrativas auxiliar de quejas###################################################################
${Servicios_global_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]
${Reportes_global_QA}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box
${Descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Quejas_administrativas_auxiliar_de_quejas}    Quejas 
${Reporte_quejas_administrativas_auxiliar_de_quejas}    xpath=//td[contains(.,'Quejas administrativas auxiliar de quejas')]
######################################Botones##################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_cancelar}    xpath=//span[contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
######################################Combos##################################################################################
${Combo_sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-branch-cis-parameter/div/div/div[1]/div[2]/app-all-branch-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_cis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/app-reporting-branch-cis-parameter/div/div/div[2]/div[2]/app-cis-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_fecha_desde}    xpath=(//i[contains(@class,'dropdown-icon dx-icon dx-icon-event dx-template-wrapper dx-button-content')])[1]
${Combo_fecha_hasta}    xpath=(//i[contains(@class,'dropdown-icon dx-icon dx-icon-event dx-template-wrapper dx-button-content')])[2]
${Combo_tipos_usuarios}        xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-user-parameter/div/div/div[1]/div[2]/app-type-user-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_usuario}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[1]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-user-parameter/div/div/div[2]/div[2]/app-user-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipo_de_queja}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-complaint-type-parameter/form/div/div/div[1]/div[2]/app-type-complaint-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_subtipo_queja}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-complaint-type-parameter/form/div/div/div[2]/div[2]/app-subtype-complaint-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_estado}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-all-states-parameter/div/div/div[2]/app-reporting-state-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_folio_desde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div[2]/app-invoice-range-parameter/div/div/div/div[2]/div[1]/dx-number-box/div/div[1]/input
${Combo_folio_hasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-administrative-complaints-assistant-complaints-form/form/dx-tab-panel/div[2]/div/div/div[2]/dxi-item/dx-scroll-view/div[1]/div/div[1]/div[2]/div[2]/app-invoice-range-parameter/div/div/div/div[2]/div[2]/dx-number-box/div/div[1]/input
#######################################Arreglo####################################################################################################
@{Sucursal}=    Create List    ${Sucursal1}    ${Sucursal2}    ${Sucursal3}    ${Sucursal4}    ${Sucursal5}    ${Sucursal6}    
@{Cis}=    Create List    ${Cis1}    ${Cis2}    ${Cis3}    ${Cis4}    ${Cis5}    ${Cis6}        
@{Tipo_de_usuario}=    Create List    ${Tipo_de_usuario1}    ${Tipo_de_usuario1}    ${Tipo_de_usuario1}    ${Tipo_de_usuario1}    ${Tipo_de_usuario1}    ${Tipo_de_usuario1}    
@{Usuario_auxiliar_queja}=    Create List    ${Usuario_auxiliar_queja1}    ${Usuario_auxiliar_queja2}    ${Usuario_auxiliar_queja3}    ${Usuario_auxiliar_queja4}    ${Usuario_auxiliar_queja5}    ${Usuario_auxiliar_queja6}    
@{Tipo_de_queja}=    Create List    ${Tipo_de_queja1}    ${Tipo_de_queja2}    ${Tipo_de_queja3}    ${Tipo_de_queja4}    ${Tipo_de_queja5}    ${Tipo_de_queja6}        
@{Subtipo_de_queja}=    Create List    ${Subtipo_de_queja1}    ${Subtipo_de_queja2}    ${Subtipo_de_queja3}    ${Subtipo_de_queja4}    ${Subtipo_de_queja5}    ${Subtipo_de_queja6}        
@{Estado}=    Create List    ${Estado1}    ${Estado2}    ${Estado3}    ${Estado4}    ${Estado5}    ${Estado6}        
#######################################Fechas##################################################################################################
${Fecha_desde}    xpath=(//span[contains(.,'2')])[2]
${Fecha_hasta}    xpath=(//span[contains(.,'15')])[4]
######################################Registros########################################################################################
${Sucursal1}    xpath=//td[contains(.,'Hermosillo')]
${Sucursal2}    xpath=//td[contains(.,'Guaymas')]
${Sucursal3}    xpath=//td[contains(.,'Cd. Obregon')]
${Sucursal4}    xpath=//td[contains(.,'Navojoa')] 
${Sucursal5}    xpath=//td[contains(.,'Huatabampo')]
${Sucursal6}    xpath=//td[contains(.,'Los Mochis')]
${Cis1}    xpath=//td[contains(.,'CIS VERACRUZ')]
${Cis2}    xpath=//td[contains(.,'CIS Ingresos')]
${Cis3}    xpath=//td[contains(.,'SINALOA')]
${Cis4}    xpath=//td[contains(.,'TOLEDO')]
${Cis5}    xpath=//td[contains(.,'CIS HUATABAMPO')]
${Cis6}    xpath=//td[contains(.,'CIS SORIANA MOCHIS')]
${Tipo_de_usuario1}    xpath=//td[contains(.,'Corporativo')]
${Tipo_de_usuario2}    xpath=//td[contains(.,'Ingresos Radio Operador')]
${Tipo_de_usuario3}    xpath=//td[contains(.,'PYC_Pueblos')]
${Tipo_de_usuario4}    xpath=(//td[contains(.,'Radio Operador')])[2]
${Tipo_de_usuario5}    xpath=//td[contains(.,'Jefes de CIS')]
${Tipo_de_usuario6}    xpath=//td[contains(.,'Captura Ventas')]
${Usuario_auxiliar_queja1}    xpath=//td[contains(.,'ADRIANA CASTILLO AVILA')]
${Usuario_auxiliar_queja2}    xpath=//td[contains(.,'Areli Garcia Aguirre')]
${Usuario_auxiliar_queja3}    xpath=//td[contains(.,'ADRIANA LETICIA ORNELAS TORRES')]
${Usuario_auxiliar_queja4}    xpath=//td[contains(.,'AVAZQUEZL')]
${Usuario_auxiliar_queja5}    xpath=//td[contains(.,'BELEN SILVA LIERAS')]
${Usuario_auxiliar_queja6}    xpath=//td[contains(.,'VELASCO TORRES CESAR OLIVERIO')]
${Tipo_de_queja1}    xpath=(//td[contains(.,'Ingresos')])[2]
${Tipo_de_queja2}    xpath=(//td[contains(.,'Ventas')])[2]
${Tipo_de_queja3}    xpath=//td[contains(.,'Operaciones')]
${Tipo_de_queja4}    xpath=//td[contains(.,'Auditoría')]
${Tipo_de_queja5}    xpath=//td[contains(.,'Quejas de Personal')]
${Tipo_de_queja6}    xpath=//td[contains(.,'Bonificaciones')]
${Subtipo_de_queja1}    xpath=//td[contains(.,'Pagos no registrados')]
${Subtipo_de_queja2}    xpath=//td[contains(.,'Domicilio con adeudo')]
${Subtipo_de_queja3}    xpath=//td[contains(.,'Cargos improcedentes a la tárjeta cred.')]
${Subtipo_de_queja4}    xpath=//td[contains(.,'Contrato sin Trampa')]
${Subtipo_de_queja5}    xpath=//td[contains(.,'Devolución Efcv. Imp. Tec.')]
${Subtipo_de_queja6}    xpath=//td[contains(.,'Folio no ingresado')]
${Estado1}    xpath=//td[contains(.,'ASI')]
${Estado2}    xpath=//td[contains(.,'ATE')]
${Estado3}    xpath=//td[contains(.,'CAN')]
${Estado4}    xpath=//td[contains(.,'LLA')]
${Estado5}    xpath=//td[contains(.,'ASI')] 
${Estado6}    xpath=//td[contains(.,'ATE')]
${Folio_desde}    5000
${Folio_hasta}    10000
######################################Filtros###############################################################################################
${Campo_id_sucursal}    xpath=(//input[contains(@autocomplete,'off')])[27]
${id_sucursal}    21
${Campo_descripción}    xpath=//input[contains(@maxlength,'20')]
${Descripcion_sucursal}    Los mochis
#######################################Caracteres invalidos##########################################################################
${Caracteres_invalidos}    @$%&/_
######################################Checkbox todas las sucursales###########################################################################
${Checkbox_todas_las_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Checkbox_todos_los_cis}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Checkbox_todos_los_tipos_usuarios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Checkbox_todos_usuarios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Checkbox_todos_los_tipos_de_queja}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
${Checkbox_subtipos_de_queja}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
${Checkbox_todos_los_estados}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[8]
${Checkbox_todos_los_folios}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[9]
#####################################Pestañas##################################################################################################
${Opciones}    xpath=(//span[contains(.,'Opciones')])[1]
${Mas_opciones}    xpath=//span[contains(.,'Más Opciones')]

*** Test Cases ***
Quejas administrativas auxiliar de quejas
    [Documentation]    Reporte quejas administrativas auxiliar de quejas
    [Tags]    Validación del reporte quejas administrativas auxiliar de quejas
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena     
    Pantalla reporte quejas administrativas auxiliar de quejas
    FOR    ${counter}    IN RANGE    1    7
        Seleccionando datos   ${Sucursal}[${counter}]    ${Cis}[${counter}]    ${Tipo_de_usuario}[${counter}]    ${Usuario_auxiliar_queja}[${counter}]    ${Tipo_de_queja}[${counter}]    ${Subtipo_de_queja}[${counter}]    ${Estado}[${counter}]   
        Boton aceptar
        Boton limpiar
    END
     

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

Pantalla reporte quejas administrativas auxiliar de quejas
    Sleep    15s
    Click Element    ${Servicios_global_QA}
    Sleep    2s
    Scroll Element Into View    ${Reportes_global_QA}
    Wait Until Element Is Visible    ${Reportes_global_QA}
    Click Element    ${Reportes_global_QA}
    #Wait Until Element Is Visible    ${Combo_reportes}
    Sleep    5s
    Click Element    ${Combo_reportes}
    Sleep    5s
    Input Text    ${Descripcion}    ${Quejas_administrativas_auxiliar_de_quejas}
    Wait Until Element Is Visible    ${Reporte_quejas_administrativas_auxiliar_de_quejas}
    Click Element    ${Reporte_quejas_administrativas_auxiliar_de_quejas}

Seleccionando datos
    [Documentation]    Seleccionamos Sucursal, Cis, Fechas, Tipo usuario, Usuario, Tipo de queja, Subtipo de queja, Folios y Estado
    [Arguments]     ${Sucursal}    ${Cis}    ${Tipo_de_usuario}    ${Usuario_auxiliar_queja}    ${Tipo_de_queja}    ${Subtipo_de_queja}    ${Estado}
    #Wait Until Element Is Visible    ${Combo_region}
    Wait Until Element Is Visible    ${Checkbox_todas_las_sucursales}
    Click Element    ${Checkbox_todas_las_sucursales}
    Sleep    5s
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Wait Until Element Is Visible    ${Checkbox_todos_los_cis}
    Click Element    ${Checkbox_todos_los_cis}
    Sleep    5s
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}
    Wait Until Element Is Visible    ${Combo_fecha_desde}
    Click Element    ${Combo_fecha_desde}
    Wait Until Element Is Visible    ${Fecha_desde}
    Click Element    ${Fecha_desde}
    Wait Until Element Is Visible    ${Combo_fecha_hasta}
    Click Element    ${Combo_fecha_hasta}
    Wait Until Element Is Visible    ${Fecha_hasta}
    Click Element    ${Fecha_hasta}
    Wait Until Element Is Visible    ${Checkbox_todos_los_tipos_usuarios}
    Click Element    ${Checkbox_todos_los_tipos_usuarios}
    Sleep    5s
    Click Element    ${Combo_tipos_usuarios}
    Wait Until Element Is Visible    ${Tipo_de_usuario}
    Click Element    ${Tipo_de_usuario}
    Wait Until Element Is Visible    ${Checkbox_todos_usuarios}
    Click Element    ${Checkbox_todos_usuarios}
    Sleep    5s
    Click Element    ${Combo_usuario}
    Wait Until Element Is Visible    ${Usuario_auxiliar_queja}
    Click Element    ${Usuario_auxiliar_queja}
    Sleep    3s
    Click Element    ${Mas_opciones}
    Sleep    3s
    Click Element    ${Checkbox_todos_los_tipos_de_queja}
    Sleep    3s
    Click Element    ${Combo_tipo_de_queja}
    Wait Until Element Is Visible    ${Tipo_de_queja}
    Click Element    ${Tipo_de_queja}
    Wait Until Element Is Visible    ${Checkbox_subtipos_de_queja}
    Click Element    ${Checkbox_subtipos_de_queja}
    Sleep    5s
    Click Element    ${Combo_subtipo_queja}
    Wait Until Element Is Visible    ${Subtipo_de_queja}
    Click Element    ${Subtipo_de_queja}
    Wait Until Element Is Visible    ${Checkbox_todos_los_estados}
    Click Element    ${Checkbox_todos_los_estados}
    Sleep    5s
    Click Element    ${Combo_estado}
    Wait Until Element Is Visible    ${Estado}
    Click Element    ${Estado}
    Wait Until Element Is Visible    ${Checkbox_todos_los_folios}
    Click Element    ${Checkbox_todos_los_folios}
    Sleep    5s
    Click Element    ${Combo_folio_desde}
    Input Text    ${Combo_folio_desde}    ${Folio_desde}
    Wait Until Element Is Visible    ${Combo_folio_hasta}
    Click Element    ${Combo_folio_hasta}
    Input Text    ${Combo_folio_hasta}    ${Folio_hasta}
    Sleep    3s

Boton aceptar
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}

Filtros
    Sleep    5s
    Wait Until Element Is Visible    ${Combo_sucursal}
    Click Element    ${Combo_sucursal}
    Wait Until Element Is Visible    ${Campo_id_sucursal}
    Input Text    ${Campo_id_sucursal}    ${id_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_id_sucursal}    
    Wait Until Element Is Visible    ${Campo_descripción}
    Input Text    ${Campo_descripción}    ${Descripcion_sucursal}
    Sleep    5s
    Clear Element Text    ${Campo_descripción}        
