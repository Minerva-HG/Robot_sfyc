** Settings ***
Documentation     TrabajosAutorizados
Library    SeleniumLibrary
Library    XML

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome 
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui
@{USERL}=    Create List     joriospe    #EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Megajos202    #Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
########################Pantalla Grupos de trabajo############################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]
${Restricciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]/ul/li[2]
${Control_de_comisiones}    xpath=//span[contains(.,'Control de Comisiones')]
${Grupos_de_trabajo}    xpath=//span[contains(.,'Grupos de Trabajo')]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros###################################################################
${Filtro_identificador}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Identificador}    32
${Campodescripcionfiltro}    xpath=(//input[contains(@autocomplete,'off')])[4]    
${Descripcionhafiltrar}    Inst Modem + TV	    
${Filtrotipocontrato}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-grupo-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[3]/div[1]
${Principal}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Botonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Botonfiltroesfibra}    xpath=//input[contains(@aria-describedby,'dx-col-4')]
${Filtrofalso}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'falso')]
${Filtrotodos}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'(Todos)')]
#########################Nuevo grupo de trabajo#######################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Nuevadescripcion}    Instalacion de cable + TV
${Botontipodecontrato}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-grupo-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[2]/div/div/app-contract-type-select-box/dx-select-box/div[1]/div/div[1]/input
${Tipodecontrato}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'Principal')]
${Botonesfibra}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-grupo-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[3]/div/div/app-confirm-select-box/dx-select-box/div[1]/div/div[1]/input
${SI}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/div[2]/div[1]/div
##############################Icono guardar##############################################################
${Iconoguardar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-grupo-grid/div/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[1]
##############################Editar trabajo########################################################
${Iconoeditar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-grupo-grid/div/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[1]
${Descripcionhaeditar}    Instalacion de fibra + TV
${Adicional}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'Adicional')]
${NO}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/div[2]/div[2]/div
############################Eliminar registro################################################################
${Iconoeliminar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-trab-grupo-grid/div/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[2]/a[2]
${Confirmareliminar}    xpath=//div[@class='dx-button-content'][contains(.,'Sí')]
##########################Caracteres invalidos##############################################################
${Caracteresinvalidos}    @#$%&/
###########################Icono cancelar###############################################################
${Iconocancelar}    xpath=(//a[contains(@title,'Cancelar')])[2]

*** Test Cases ***
Usuarios con permisos a la pantalla
    [Documentation]    Validacion de usuarios
    [Tags]    test_uno
    Validacion usuarios

Icono actualizar
    [Documentation]    Icono actualizar
    [Tags]    test_dos
    Icono actualizar

Buscar grupos de trabajo
    [Documentation]    Filtros
    [Tags]    test_tres
    Filtro identificador
    Filtro descripcion
    Filtro tipo contrato
    Filtro es fibra
    Sleep    15s

#Agregar grupo de trabajo
    #[Documentation]    Grupo de trabajo nuevo
    #[Tags]    test_cuatro
    #Grupo de trabajo nuevo

#Registros repetidos
    #[Documentation]    Registros repetidos
    #[Tags]    test_cinco
    #Grupo de trabajo nuevo

#Icono cancelar
    #[Documentation]    Icono cancelar
    #[Tags]    test_seis
    #Icono cancelar

#Editar grupo de trabajo
    #[Documentation]    Editar grupo de trabajo
    #[Tags]    test_siete
    #Editar grupo de trabajo

#Eliminar grupo de trabajo
    #[Documentation]    Eliminar grupo de trabajo
    #[Tags]    test_ocho
    #Eliminar grupo de trabajo

#Caracteres invalidos
    #[Documentation]    Ingresando caracteres invalidos
    #[Tags]    test_nueve
    #Invalid character
    

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
        Scroll Element Into View    ${Control_de_comisiones}
        Sleep    3s
        Click Element    ${Control_de_comisiones}
        Sleep    3s
        Scroll Element Into View    ${Grupos_de_trabajo}
        Sleep    3s
        Click Element    ${Grupos_de_trabajo}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Icono actualizar
    Sleep    5s
    Click Element    ${Iconoactualizar}

Filtro identificador
    Wait Until Element Is Visible    ${Filtro_identificador}
    Click Element    ${Filtro_identificador}
    Input Text    ${Filtro_identificador}    ${Identificador}
    Sleep    5s
    Clear Element Text    ${Filtro_identificador} 

Filtro descripcion
    Sleep    5s
    Input Text    ${Campodescripcionfiltro}    ${Descripcionhafiltrar}
    Clear Element Text    ${Campodescripcionfiltro}

Filtro tipo contrato
    Sleep    5s
    Click Element    ${Filtrotipocontrato}
    Wait Until Element Is Visible    ${Principal}
    Click Element    ${Principal}
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}
    Sleep    5s
    Click Element    ${Filtrotipocontrato}
    Wait Until Element Is Visible    ${Principal}
    Click Element    ${Principal}
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}

Filtro es fibra
    Sleep    5s
    Click Element    ${Botonfiltroesfibra}
    Wait Until Element Is Visible    ${Filtrofalso}
    Click Element    ${Filtrofalso}
    Sleep    5s
    Click Element    ${Botonfiltroesfibra}
    Wait Until Element Is Visible    ${Filtrotodos}
    Click Element    ${Filtrotodos}


Grupo de trabajo nuevo
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Nuevadescripcion}
    Wait Until Element Is Visible    ${Botontipodecontrato}
    Click Element    ${Botontipodecontrato}
    Sleep    5s
    Click Element    ${Tipodecontrato}
    Wait Until Element Is Visible    ${Botonesfibra}
    Click Element    ${Botonesfibra}
    Wait Until Element Is Visible    ${SI}
    Click Element    ${SI}
    Sleep    5s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    5s
    Click Element    ${Iconocancelar}

Editar grupo de trabajo
    Sleep    5s
    Click Element    ${Iconoeditar}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Descripcionhaeditar}
    Wait Until Element Is Visible    ${Botontipodecontrato}
    Click Element    ${Botontipodecontrato}
    Wait Until Element Is Visible    ${Adicional}
    Click Element    ${Adicional}
    Wait Until Element Is Visible    ${Botonesfibra}
    Click Element    ${Botonesfibra}
    Wait Until Element Is Visible    ${NO}
    Click Element    ${NO}
    Sleep    5s
    Click Element    ${Iconoguardar}

    
Eliminar grupo de trabajo
    Sleep    5s
    Click Element    ${Iconoeliminar}
    Sleep    5s
    Click Element    ${Confirmareliminar}

Invalid character
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Botontipodecontrato}
    Click Element    ${Botontipodecontrato}
    Wait Until Element Is Visible    ${Tipodecontrato}
    Click Element    ${Tipodecontrato}
    Wait Until Element Is Visible    ${Botonesfibra}
    Click Element    ${Botonesfibra}
    Wait Until Element Is Visible    ${SI}
    Click Element    ${SI}
    Sleep    5s
    Click Element    ${Iconoguardar}
    Sleep    5s
    Click Element    ${Iconocancelar}
    

  
  
