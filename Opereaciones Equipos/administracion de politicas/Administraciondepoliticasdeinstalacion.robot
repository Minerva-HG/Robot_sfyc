*** Settings ***
Documentation    Administración de politicas de instalación
#Library    RPA.Windows
Library    SeleniumLibrary

*** Variables ***
#######################################Variables de inicio de sesion tanto para dev como para QA######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    FCURIELF    LUSANCHEZA    MARAMIREZ                                                                                                                                                                        
@{passL}=    Create List    Reforma191    Enero.2028    Sainz123                                                                                                                                                                                                                             
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
###############################################Inicio de sesión#########################################################################################################################################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[3]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[2]/div/div/div[1]/ul/li[3]/ul/li[3]
${Botonadminpoliticasdeinstalacion}    xpath=//span[contains(.,'Admin Politicas de Instalación')]
###############################################Combos########################################################
${Combo_tecnologia}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[1]/app-type-technology-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_disponible}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[2]/app-avaible-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipo_de_cliente}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[3]/app-multiple-type-client-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_NSE}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[4]/app-multiple-socioeconimic-level-dropdown/dx-drop-down-box/div/div/div[1]/input  
${Combo_tipo_de_servicio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[5]/app-type-service-with-installation-policies-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_servicio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[6]/app-multiple-service-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_tipo_de_equipo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[7]/app-type-equipment-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Combo_modelo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[8]/app-multiple-model-equipment-dropdown/dx-drop-down-box/div/div/div[1]/input
${Combo_todas_las_sucursales}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-installation-policy-administration-main-container/div/app-installation-policy-administration-form/form/div/div[9]/div[2]/app-multiple-all-branch-dropdown/app-base-dropdown/dx-drop-down-box/div/div/div[1]/input
##########################################Checkbox#########################################################################
${Checkbox_todas_las_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[33]
${Checkbox_excluir}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[34]
#############################################Iconos################################################
${Icono_actualizar}    xpath=//i[@class='dx-icon dx-icon-refresh']
${Icono_exportar}    xpath=//i[@class='dx-icon dx-icon-xlsxfile']
#############################################Botones####################################################
${Boton_agregar}    xpath=//div[@class='dx-button-content'][contains(.,'Agregar')]
${Boton_modificar}    xpath=//div[@class='dx-button-content'][contains(.,'Modificar')]
${Boton_cancelar}    xpath=//div[@class='dx-button-content'][contains(.,'Cancelar')]
${Boton_limpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
##############################################Registros##############################################
${Tecnologia_HFC}    xpath=//td[@aria-describedby='dx-col-11'][contains(.,'HFC')]


*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios
   
Technology field and search in description



*** Keyword ***
Validacion de usuarios
    FOR    ${counter}    IN RANGE    1     4 
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
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botonoperacionesequipos}
        Click Element    ${Botonoperacionesequipos}
        Sleep    5s
        Scroll Element Into View    ${Botonadminpoliticasdeinstalacion}
        Sleep    5s
        Click Element    ${Botonadminpoliticasdeinstalacion}   
    IF    ${counter} <= ${3}
        Sleep    10s
        Close Browser
    END
   END

