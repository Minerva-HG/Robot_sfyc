** Settings ***
Documentation     Automatización de la pantalla REGIONES
Library    SeleniumLibrary
Library    XML    

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui
@{USERL}=    Create List     joriospe    #EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Megajos202    #Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
########################Pantalla regiones############################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Ejercicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[7]
${Regiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[6]
######################Agregar region#########################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Camporegion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-region-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[2]/div/div/div/div[1]/input
${Regionnueva}    Testautomation
${Responsables}    xpath=//dx-drop-down-box[@id='empleadoDropdown']/div/div/div/input
${Responsable}    xpath=//td[contains(.,'CASAREZ MUÑOZ ELIAS')]
${Iconoguardar}    xpath=(//a[contains(@class,'dx-link dx-link-save dx-icon-save dx-link-icon')])[2]
####################Icono cancelar######################################################
${Iconocancelar}    xpath=(//a[contains(@title,'Cancelar')])[2]
#####################Editar region##############################################################
${Iconoeditar}    xpath=(//a[contains(@aria-label,'Modificar')])[11]
${Regioneditada}    SURESTE2
#######################Icono detalles##############################################################
${Iconodetalles}    xpath=(//a[contains(@title,'Mostrar detalles')])[11]
${Cerrardetalles}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
######################Eliminar region######################################################
${Iconoeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[11]
${Confirmareliminacion}    xpath=//span[contains(.,'Sí')]    
#####################Datos de las sucursales que pertenecen a cada region###########################
${Region}    xpath=//tr[6]/td/div
######################Filters########################################################################
${Filtroregion}    xpath=(//input[contains(@autocomplete,'off')])[2]
${Filtroresponsable}    xpath=(//input[contains(@autocomplete,'off')])[3]
##########################Region peninsula#####################################################
${Regionpeninsula}    Peninsula
${Responsablehabuscar}    gabriel fuentes    
###################################Icono actualizar###################################################
${Iconoactualizar}    xpath=//i[@class='dx-icon dx-icon-refresh']

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion usuarios

Icono actualizar
    Icono actualizar

Agregar Regiones
    Agregar region

Registros repetidos
    Agregar region

Icono cancelar
    Icono cancelar

Editar Regiones
    Editar region

Mostrar Detalles
    Mostrar detalles responsable

Eliminar Regiones
    Eliminar region

Colapsar Regiones
    Show data

Buscar Regiones
    Filtro region
    Filtro responsable



*** Keywords ***
Validacion usuarios
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
        Wait Until Element Is Visible    ${Operaciones}
        Click Element    ${Operaciones}
        Wait Until Element Is Visible    ${Comisiones_a_externos}
        Click Element    ${Comisiones_a_externos}
        Sleep    3s
        Scroll Element Into View    ${Ejercicios}
        Sleep    3s
        Click Element    ${Regiones}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Icono actualizar
    Wait Until Element Is Visible    ${Iconoactualizar}
    Click Element    ${Iconoactualizar}

Agregar region
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Camporegion}
    Input Text    ${Camporegion}    ${Regionnueva}
    Wait Until Element Is Visible    ${Responsables}
    Double Click Element    ${Responsables}
    Sleep    15s    
    Click Element    ${Responsable}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element   ${Iconoguardar}

Registros repetidos
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Camporegion}
    Input Text    ${Camporegion}    ${Regionnueva}
    Wait Until Element Is Visible    ${Responsables}
    Double Click Element    ${Responsables}
    Sleep    5s    
    Click Element    ${Responsable}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Icono cancelar
    Wait Until Element Is Visible    ${Iconocancelar}
    Click Element    ${Iconocancelar}

Editar region
    Wait Until Element Is Visible    ${Iconoeditar}
    Click Element    ${Iconoeditar}
    Wait Until Element Is Visible    ${Camporegion}
    Input Text    ${Camporegion}    ${Regioneditada}
    Wait Until Element Is Visible    ${Responsables}
    Double Click Element    ${Responsables}
    Sleep    5s
    Click Element    ${Responsable}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Mostrar detalles responsable
    Sleep    5s
    Click Element    ${Iconodetalles}
    Sleep    5s
    Click Element    ${Cerrardetalles}

Eliminar region
    Wait Until Element Is Visible    ${Iconoeliminar}
    Click Element    ${Iconoeliminar}
    Sleep    5s
    Click Element    ${Confirmareliminacion}

Show data    
    Sleep    5s
    Click Element    ${Region}
    Sleep    5s
    Click Element    ${Region}

Filtro region
    Wait Until Element Is Visible    ${Filtroregion}
    Input Text    ${Filtroregion}    ${Regionpeninsula}
    Sleep    5s
    Clear Element Text    ${Filtroregion}

Filtro responsable
    Wait Until Element Is Visible    ${Filtroresponsable}
    Input Text    ${Filtroresponsable}    ${Responsablehabuscar}
    Sleep    5s
    Clear Element Text    ${Filtroresponsable}
