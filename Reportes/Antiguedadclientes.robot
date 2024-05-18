*** Settings ***
Library  SeleniumLibrary
Library  String


*** Variables ***
#######################################Validación de usuarios######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #KLOPEZJ    DVELES    JSMMARTINEZC    IJIMENEZS    ERHERNANDEZP    ACRUZS    AGROBERTO    BSANDOVALA                                                                                                                                      
@{passL}=    Create List    Mega12345    #Megacable2020    Megacable2022    Omega2019    Megacable2021    Megacable2022    Megacable2020*    Megacable2021*    Mega2020*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3] 
###################################Pantalla REPORTE ANTIGÜEDAD CLIENTES##################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[5]
${Botonparadesplegarreportes}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[2]/div/div/div
${Reporte}  xpath=//td[contains(.,'Antigüedad clientes')]
###################################Checkbox########################################################################################
${Checkbox_todos_equipos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Checkbox_todos_modelos}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Checkbox_todos_region}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Checkbox_todos_plaza}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
##################################Combos################################################################################################
${Combo_tipo_equipo}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Combo_modelos}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Combo_region}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Combo_plaza}    xpath=(//input[contains(@aria-haspopup,'true')])[6]
#################################Registros combos#############################################################################################
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Modelo}    xpath=//td[contains(.,'2500')]
${Region}    xpath=//td[contains(.,'OCCIDENTE')]
${Plaza}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
################################Botones#######################################################################################
${Aceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Cancelar}    xpath=//span[contains(.,'Cancelar')]
${Limpiar}    xpath=//span[contains(.,'Limpiar')]
##############################Filtros###############################################################################################
${Filtro_descripcion}    xpath=(//input[contains(@autocomplete,'off')])[15]
${Caracteres_invalidos}    $%&%#@        
${Filtro_modelo}    xpath=//input[contains(@maxlength,'7094')]
${Filtro_descripcion_region}    xpath=//input[contains(@maxlength,'50')]
${Filtro_descripcion_plaza}    xpath=//input[contains(@maxlength,'20')]
${Descripcion_equipo}    Cable modems
${Descripcion_modelo}    3COM    
${Descripcion_region}    OCCIDENTE
${Descripcion_plaza}    Jacona

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Drop tipos equipo
    Tipo de equipo

Modelos equipo
    Modelo

Combo region
    Region

Combo plaza
    Plaza

Ingresara caracteres no validos
    Caracteres no validos

Filtro en los combos
    Filtros

Consultar
    Boton aceptar



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
        Wait Until Element Is Visible    ${Botonreportes}
        Click Element    ${Botonreportes}
        Sleep    5s
        Click Element    ${Botonparadesplegarreportes}
        Wait Until Element Is Visible    ${Reporte}
        Click Element    ${Reporte}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END 

Tipo de equipo
    Wait Until Element Is Visible    ${Checkbox_todos_equipos}
    Click Element    ${Checkbox_todos_equipos}
    Sleep    5s
    Click Element    ${Combo_tipo_equipo}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}

Modelo
    Wait Until Element Is Visible    ${Checkbox_todos_modelos}
    Click Element    ${Checkbox_todos_modelos}
    Sleep    5s
    Click Element    ${Combo_modelos}
    Wait Until Element Is Visible    ${Modelo}
    Click Element    ${Modelo}
   
Region
    Wait Until Element Is Visible    ${Checkbox_todos_region}
    Click Element    ${Checkbox_todos_region}
    Sleep    5s
    Click Element    ${Combo_region} 
    Wait Until Element Is Visible    ${Region}
    Click Element    ${Region}

Plaza
    Wait Until Element Is Visible    ${Checkbox_todos_plaza}
    Click Element    ${Checkbox_todos_plaza}
    Sleep    5s
    Click Element    ${Combo_plaza}
    Wait Until Element Is Visible    ${Plaza}
    Click Element    ${Plaza}
    Sleep    5s


Boton aceptar
    Wait Until Element Is Visible    ${Aceptar}
    Click Element    ${Aceptar}

Caracteres no validos
    Wait Until Element Is Visible    ${Combo_tipo_equipo}
    Click Element    ${Combo_tipo_equipo}
    Wait Until Element Is Visible    ${Filtro_descripcion}
    Input Text    ${Filtro_descripcion}    ${Caracteres_invalidos}
    Sleep    5s
    Clear Element Text    ${Filtro descripcion}
    Wait Until Element Is Visible    ${Combo_tipo_equipo}
    Click Element    ${Combo_tipo_equipo}
    
    Sleep    3s
    Click Element    ${Combo_modelos}
    Wait Until Element Is Visible    ${Filtro_modelo}
    Input Text    ${Filtro_modelo}    ${Caracteres_invalidos}
    Sleep    5s
    Clear Element Text    ${Filtro_modelo}
    Wait Until Element Is Visible    ${Combo_modelos}
    Click Element    ${Combo_modelos}

    Sleep    3s
    Click Element    ${Combo_region}
    Wait Until Element Is Visible    ${Filtro_descripcion_region}
    Input Text    ${Filtro_descripcion_region}    ${Caracteres_invalidos}
    Sleep    5s
    Clear Element Text    ${Filtro_descripcion_region}
    Wait Until Element Is Visible    ${Combo_region}
    Click Element    ${Combo_region}

    Sleep    5s
    Click Element    ${Combo_plaza}
    Wait Until Element Is Visible    ${Filtro_descripcion_plaza}
    Input Text    ${Filtro_descripcion_plaza}    ${Caracteres_invalidos}
    Sleep    5s
    Clear Element Text    ${Filtro_descripcion_plaza}
    Wait Until Element Is Visible    ${Combo_plaza}
    Click Element    ${Combo_plaza}
    Sleep    5s

Filtros
    Wait Until Element Is Visible    ${Combo_tipo_equipo}
    Click Element    ${Combo_tipo_equipo}
    Wait Until Element Is Visible    ${Filtro_descripcion}
    Input Text    ${Filtro_descripcion}    ${Descripcion_equipo}
    Sleep    5s
    Clear Element Text    ${Filtro descripcion}
    Wait Until Element Is Visible    ${Combo_tipo_equipo}
    Click Element    ${Combo_tipo_equipo}
    
    Sleep    3s
    Click Element    ${Combo_modelos}
    Wait Until Element Is Visible    ${Filtro_modelo}
    Input Text    ${Filtro_modelo}    ${Descripcion_modelo}
    Sleep    5s
    Clear Element Text    ${Filtro_modelo}
    Wait Until Element Is Visible    ${Combo_modelos}
    Click Element    ${Combo_modelos}

    Sleep    3s
    Click Element    ${Combo_region}
    Wait Until Element Is Visible    ${Filtro_descripcion_region}
    Input Text    ${Filtro_descripcion_region}    ${Descripcion_region}
    Sleep    5s
    Clear Element Text    ${Filtro_descripcion_region}
    Wait Until Element Is Visible    ${Combo_region}
    Click Element    ${Combo_region}

    Sleep    5s
    Click Element    ${Combo_plaza}
    Wait Until Element Is Visible    ${Filtro_descripcion_plaza}
    Input Text    ${Filtro_descripcion_plaza}    ${Descripcion_plaza}
    Sleep    5s
    Clear Element Text    ${Filtro_descripcion_plaza}
    Wait Until Element Is Visible    ${Combo_plaza}
    Click Element    ${Combo_plaza}

    
