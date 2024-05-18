** Settings ***
Documentation     TrabajosAutorizados
Library    SeleniumLibrary

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome 
${user}    xpath=//input[@id='Username']
${Pagina}   https://servicios.dev-cluster.sfycnextgen.com.mx/ui/
@{USERL}=    Create List     EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
########################Pantalla trabajos autorizados############################################
${Gruposdetrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[3]/ul/li[6]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Comisiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]
${Controldecomisiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[3]
${Trabajosautorizados}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[3]/ul/li[5]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros###################################################################
${Campofiltrodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[3]    
${Descripcionhafiltrar}    Instalacion Cableado UTP   
${Filtroesmigracion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[4]/div/div/div/div[1]/div/div[2]  
${Verdadero}    xpath=//div[@id='dx-92ef987d-48ed-2506-731e-b875e2075a8a']/div/div/div/div[2]/div[2]/div
${Filtroesfibra}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[5]/div/div/div/div[1]/div/div[2]
${Verdaderofibra}    xpath=(//div[@class='dx-item-content dx-list-item-content'][contains(.,'verdadero')])[2]	        
#########################Nuevo trabajo#######################################################
${Iconoagregar}    xpath=//i[@class='dx-icon dx-icon-edit-button-addrow']
${Campodescripcion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[1]/div/div/div/div[1]/input
${Descripcionnueva}    Instalacion cable + fibra optica
${Campotipotrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[2]/div/div/app-type-work-dropdown/dx-drop-down-box/div[1]/div/div[1]/input    
${Tipotrabajo}    xpath=//td[contains(.,'Atencion CCN')]
${Campotrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[3]/div[1]/div/app-work-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Trabajo}    xpath=//td[contains(.,'Superv. calidad queja')]
${Campoesmigracion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[4]/div/div/app-confirm-select-box/dx-select-box/div[1]/div/div[1]/input
${Siesmigracion}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/div[2]/div[1]/div[1]
${Campoesfibra}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[5]/div/div/app-confirm-select-box/dx-select-box/div[1]/div/div[1]/input
${Siesfibra}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/div[2]/div[1]/div
##############################Icono guardar##############################################################
${Iconoguardar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[1]
##############################Editar trabajo########################################################
${Iconoeditar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[1]
${Descripcionactualizada}    Cambio de modem
${Tipotrabajoactualizado}    xpath=//td[contains(.,'Auditoria')]
${Trabajoactualizado}    xpath=//td[contains(.,'Pirata de Poste')]
############################Eliminar registro################################################################
${Iconoeliminar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-autorizado-grid/div/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[2]
${Si}    xpath=//span[contains(.,'Sí')]
##########################Caracteres invalidos##############################################################
${Caracteresinvalidos}    @#$%&/
###########################Icono cancelar###############################################################
${Iconocancelar}    xpath=(//a[contains(@aria-label,'Cancelar')])[2]

*** Test Cases ***
User and Screen empleados
    [Documentation]    Validacion de usuarios
    [Tags]    test_uno
    Validacion usuarios

Icon actualizar
    [Documentation]    Icono actualizar
    [Tags]    test_dos
    Icono actualizar

Filters
    [Documentation]    Filtros
    [Tags]    test_tres
    Filtro descripcion


Add trabajo autorizado
    [Documentation]    Trabajo autorizado nuevo
    [Tags]    test_cuatro
    Trabajo autorizado nuevo

Repeat records
    [Documentation]    Registros repetidos
    [Tags]    test_cinco
    Trabajo autorizado nuevo

Icon cancelar
    [Documentation]    Icono cancelar
    [Tags]    test_seis
    Icono cancelar

Edit trabajo autorizado
    [Documentation]    Editar Trabajo autorizado 
    [Tags]    test_siete
    Editar trabajo autorizado

Delete trabajo autorizado
    [Documentation]    Eliminar Trabajo autorizado 
    [Tags]    test_ocho
    Eliminar trabajo autorizado
    

*** Keywords ***
Validacion usuarios
    FOR    ${counter}    IN RANGE    1     5 
    #FOR    ${counter}    IN RANGE    1     2
        Open Browser    ${Pagina}    ${Navegador}
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text     name:Password     ${passL}[${counter}]
        Wait Until Page Contains Element    ${Botondominio}
        #Click Element    ${Botondominio}
        #Click Element   ${SFyC}
        Click Element    name:button
        Sleep    15s
        Click Element    ${Bottonmenu}
        Wait Until Page Contains Element    ${Comisiones}
        Click Element    ${Comisiones}
        Wait Until Element Is Visible    ${Controldecomisiones}
        Click Element    ${Controldecomisiones}
        Sleep    5s
        Scroll Element Into View    ${Gruposdetrabajo}
        Sleep    5s  
        Wait Until Element Is Visible    ${Trabajosautorizados}
        Click Element    ${Trabajosautorizados}
    IF    ${counter} <= ${3}
        Sleep    10s
        Close Browser
    END
   END

Icono actualizar
    Wait Until Element Is Visible   ${Iconoactualizar}
    Click Element   ${Iconoactualizar}

Filtro descripcion
    Wait Until Element Is Visible    ${Campofiltrodescripcion}
    Input Text    ${Campofiltrodescripcion}    ${Descripcionhafiltrar}
    Sleep    5s
    Clear Element Text    ${Campofiltrodescripcion}

Trabajo autorizado nuevo
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Descripcionnueva}
    Wait Until Element Is Visible    ${Campotipotrabajo}
    Click Element    ${Campotipotrabajo}
    Wait Until Element Is Visible    ${Tipotrabajo}
    Click Element    ${Tipotrabajo}
    Wait Until Element Is Visible    ${Campotrabajo}
    Click Element    ${Campotrabajo}
    Wait Until Element Is Visible    ${Trabajo}
    Click Element    ${Trabajo}
    Wait Until Element Is Visible    ${Campoesmigracion}
    Click Element    ${Campoesmigracion}
    Wait Until Element Is Visible    ${Siesmigracion}
    Click Element    ${Siesmigracion}
    Wait Until Element Is Visible    ${Campoesfibra}
    Click Element    ${Campoesfibra}
    Wait Until Element Is Visible    ${Siesfibra}
    Click Element    ${Siesfibra}
    Sleep    5s
    Click Element    ${Iconoguardar}

Editar trabajo autorizado
    Sleep    5s
    Click Element    ${Iconoactualizar}
    Sleep    5s
    Wait Until Element Is Visible    ${Iconoeditar}
    Click Element    ${Iconoeditar}   
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Descripcionactualizada}
    #Wait Until Element Is Visible    ${Campotipotrabajo}
    #Click Element    ${Campotipotrabajo}
    #Wait Until Element Is Visible    ${Tipotrabajoactualizado}
    #Click Element    ${Tipotrabajoactualizado}
    Wait Until Element Is Visible    ${Campotrabajo}
    Click Element    ${Campotrabajo}
    Wait Until Element Is Visible    ${Trabajoactualizado}
    Click Element    ${Trabajoactualizado}
    Sleep    5s
    Click Element    ${Iconoguardar}

Eliminar trabajo autorizado
    Sleep    5s
    Click Element    ${Iconoeliminar}
    Wait Until Element Is Visible    ${Si}
    Click Element    ${Si}

Icono cancelar
    Sleep    5s
    Click Element    ${Iconocancelar}