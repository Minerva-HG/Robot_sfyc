*** Settings ***
Documentation    Reporte Ingresos - Poliza de ingresos
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
#########################Pantalla reporte Ingresos - poliza de ingresos###################################################################
${Boton_servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/div[1]
${Boton_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[6]/ul/li[6]
${Combo_reportes}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[2]/app-shared-reporting-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Campo_descripcion}    xpath=//input[contains(@maxlength,'7081')]
${Descripcion_reporte}    Ingresos
${Reporte_ingresos_poliza_de_ingresos}    xpath=//td[contains(.,'Ingresos - Póliza de ingresos')]
##########################Fechas###################################################################################################################
${Icono_calendario}    xpath=//i[contains(@class,'dx-icon dx-icon-event')]
${Fecha}    xpath=(//span[contains(.,'17')])[1]
###########################Combo CIS#########################################################################################################################
${combo_CIS}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-reporting-main-container/app-shared-reporting-main-container/div/div/div[1]/div[3]/app-reporting-income-policy-form/form/div/div[1]/app-all-cis-parameter/div/div/div/div/app-cis-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${CIS_PLAZA_TERRANOVA}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]
@{Cis}=    Create List    ${Cis1}    ${Cis2}    ${Cis3}    ${Cis4}    ${Cis5}
${Cis1}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]
${Cis2}    xpath=//td[contains(.,'CIS PLAZA TERRANOVA')]    
${Cis3}    xpath=//td[contains(.,'CENTRAL')]
${Cis4}    xpath=//td[contains(.,'CIS CIRCUNVALACION')]
${Cis5}    xpath=//td[contains(.,'CIS JAVIER MINA')]
#############################Observaciones######################################################################################################################
${Caja_texto_observaciones}    xpath=//textarea[contains(@class,'dx-texteditor-input')]
${Observaciones}    Poliza de prueba
#############################Checkbox generar poliza###########################################################################################################
${Checkbox_generar_poliza}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
############################Checkbox calcular amortización celulares##############################################################################################
${Checkbox_calcular_amortizacion_celulares}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
##############################Botones###############################################################################################################################
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Boton_aceptar_2}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[2]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
##############################Campos vacios################################################################################################################################
${Campos_vacios}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[4]
###############################Notificacion#############################################################################################################################
${Notificacion}    xpath=(//span[contains(.,'Aceptar')])[2]
#########################################Boton aqceptar notificacion azul###################################################################################################
${Boton_aceptar_existe_poliza}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[2]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Ingresar usuario
    Validacion de usuarios

Validar fechas
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Validacion de fechas
    Test validacion de fechas

Validacion combo CIS
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Validacion de combo CIS
    Test validacion de combo CIS

Observaciones
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Observaciones
    Test validacion de combo observaciones

Checkbox generar poliza
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Checkbox generar poliza
    Test checkbox generar poliza

Ingresos - Póliza de ingresos
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Generar poliza
    Boton aceptar
    Validando si existe una notificacion
    FOR    ${counter}    IN RANGE    1    6
        Test boton limpiar
        Generando reporte con diferentes cis     ${Cis}[${counter}]    
        Boton aceptar
        Validando si existe una notificacion
    END

Checkbox calcular amortización celulares
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Calcular amortizacion celulares
    Test checkbox calcular amortizacion celulares
    Generar reporte con checkbox calcular amortizacion celulares
    Validando si existe una notificacion

Campos vacios
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Campos vacios
    Test campos vacios
    
Boton limpiar
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Boton limpiar
    Test boton limpiar

Boton cancelar
    [Documentation]    Reporte Ingresos - Poliza de ingresos
    [Tags]    Boton cancelar
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
        Click Element    ${Reporte_ingresos_poliza_de_ingresos}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Test validacion de fechas
    Wait Until Element Is Visible    ${Icono_calendario}
    Click Element    ${Icono_calendario}
    Wait Until Element Is Visible    ${Fecha}
    Click Element    ${Fecha}

Test validacion de combo CIS
    Wait Until Element Is Visible    ${Combo_CIS}
    Click Element    ${Combo_CIS}
    Sleep    5s
    Click Element    ${CIS_PLAZA_TERRANOVA}

Test validacion de combo observaciones
    Wait Until Element Is Visible    ${Caja_texto_observaciones}
    Click Element    ${Caja_texto_observaciones}
    Input Text    ${Caja_texto_observaciones}    ${Observaciones}

Test checkbox generar poliza
    Wait Until Element Is Visible    ${Checkbox_generar_poliza}
    Click Element    ${Checkbox_generar_poliza}

Test checkbox calcular amortizacion celulares    
    Wait Until Element Is Visible    ${Checkbox_calcular_amortizacion_celulares}
    Click Element    ${Checkbox_calcular_amortizacion_celulares}

Boton aceptar
    Sleep    5s
    Click Element    ${Boton_aceptar}

Generando reporte con diferentes cis
    [Documentation]    Seleccionando cis
    [Arguments]     ${Cis} 
    Wait Until Element Is Visible    ${Checkbox_generar_poliza}
    Click Element    ${Checkbox_generar_poliza}  
    Wait Until Element Is Visible    ${Combo_cis}
    Click Element    ${Combo_cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}  

Test campos vacios
    Wait Until Element Is Visible    ${Campos_vacios}
    Click Element    ${Campos_vacios}

Test boton limpiar
    Wait Until Element Is Visible    ${Boton_limpiar}
    Click Element    ${Boton_limpiar}
    Sleep    5s

Test boton cancelar
    Sleep    5s
    Click Element    ${Boton_cancelar}

Validando si existe una notificacion
    Sleep    5s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Click Element    ${Notificacion}
    IF    '${Bandera_notificacion}' == 'True'
        Sleep    60s
    ELSE
        Sleep    3s            
    END
    
Generar reporte con checkbox calcular amortizacion celulares           
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
