** Settings ***
Documentation     Demonstrating a while-like loop.
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML    
Library    String
Library    RPA.Robocorp.WorkItems

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List     EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
########################Pantalla ciclos de pago############################################
${Empleados}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[8]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Comisiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]
${Ciclosdepago}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[5]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros########################################################
${Filtrodescripcion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[1]/div/div[2]/div/div/div[1]/input
${Descripcionhafiltrar}    Semanal
${Filtrofechainicio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[2]/div/div[2]/div/div[1]/div/div[2]
${Fechainiciohafiltrar}    xpath=(//span[contains(.,'5')])[1]
${Filtrofechaultejecucion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[3]/div/div[2]/div/div/div/div[2]
${Fechaultejecucion}    xpath=(//span[contains(.,'6')])[9]
${Filtrorecurrencia}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[4]/div/div[2]/div/div/div[1]/input
${Recurrenciahafiltrar}    5
${Filtrofase}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Fasehafiltrar}    1
${Filtroenejecucion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[7]/div[1]/span[2]
${Filtroactivo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[6]/div[1]/span[2]
${Filtrarporactivos}    xpath=/html/body/div/div/div[1]/div/div[1]/div/div[1]/div[2]/div[2]/div[1]/div/div/span  
${Botonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Filtrarenejecucion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]

#####################Agregar ciclo de pago##################################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Descripcionnueva}    Semestral
${Campofechainicio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[2]/div/div/div[1]/div/div[2]
${Fechainicionueva}    xpath=(//span[contains(.,'20')])[1]
${Campofechaultejec}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[3]/div/div/div[1]/div/div[2]
${Fechaultimaejec}    xpath=/html/body/div[2]/div/div/div/div[1]/div/div[1]/table/tbody/tr[2]/td[3]/span
${Camporecurrencia}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[4]/div/div/div/div[1]/input
${Recurrencianueva}    2
${Campofasenueva}    xpath=(//input[contains(@autocomplete,'off')])[12]    
${Fasenueva}    1
${Campoactivo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-ciclo-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[6]/div/div/div/span
${Campoenejecucion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
####################################Icono cancelar##############################################################
${Iconocancelar}    xpath=(//a[contains(@aria-label,'Cancelar')])[2]
#####################################Ic    ono guardar############################################################
${Iconoguardar}    xpath=(//a[contains(@aria-label,'Guardar')])[2]
#####################################Editar registro########################################################
${Iconoeditar}    xpath=(//a[contains(@aria-label,'Modificar')])[4]
${Descripcionhaeditar}    BIANUAL
${Recurrenciahaeditar}    2
${Fasehaeditar}    3
#####################################Icono eliminar#######################################################
${Iconoeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[4]
${Confirmareliminarregistro}    xpath=//span[contains(.,'Sí')]
####################################Caracteres invalidos###########################################################
${Caracteresinvalidos}    $%&/@#_-


*** Test Cases ***
User and Screen ejercicios
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
    Filtro fecha inicio
    Filtro fecha ultima ejecucion
    Filtro recurrencia
    Filtro fase
    Filtro activo
    Filtro en ejecucion

Add ciclo de pago
    [Documentation]    Agregar ciclo de pago
    [Tags]    test_cuatro
    Agregar ciclo de pago

Repeated records
    [Documentation]    Ciclo de pago repetido
    [Tags]    test_cinco
    Agregar ciclo de pago

Icon cancelar
    [Documentation]    Icono cancelar
    [Tags]    test_seis
    Icono cancelar
    
Edit ciclo de pago
    [Documentation]    Editar ciclo de pago
    [Tags]    test_siete
    Editar ciclo de pago
    
Delete ejercicio
    [Documentation]    Eliminar ciclo de pago
    [Tags]    test_ocho
    Eliminar ciclo de pago

Invalid characters
    [Documentation]    Caracteres invalidos
    [Tags]    test_nueve
    Caracteres invalidos


*** Keywords ***
Validacion usuarios
    #FOR    ${counter}    IN RANGE    1     5 
    FOR    ${counter}    IN RANGE    1     2
        Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")    
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text When Element Is Visible    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text When Element Is Visible     name:Password     ${passL}[${counter}]
        #Click Element When Visible    ${Botondominio}
        #Click Element When Visible    ${SFyC}
        Click Element When Visible    name:button
        Wait Until Element Is Visible    ${Bottonmenu}
        Sleep    15s
        Click Element When Visible    ${Bottonmenu}
        Click Element When Visible    ${Comisiones}
        Sleep    5s
        Scroll Element Into View    ${Empleados}
        Sleep    5s  
        Click Element When Visible    ${Ciclosdepago}
    #IF    ${counter} <= ${3}
        #Sleep    10s
        #Close Browser
    #END
   END

Icono actualizar
    Click Element When Visible    ${Iconoactualizar}

Filtro descripcion
    Sleep    5s
    Wait Until Element Is Visible    ${Filtrodescripcion}
    Input Text    ${Filtrodescripcion}    ${Descripcionhafiltrar}
    Sleep    5s
    Clear Element Text    ${Filtrodescripcion}

Filtro fecha inicio
    Sleep    5s
    Click Element    ${Filtrofechainicio}
    Sleep    5s
    Click Element    ${Filtrofechainicio}
    
Filtro fecha ultima ejecucion
    Sleep    5s
    Click Element    ${Filtrofechaultejecucion}
    Sleep    5s
    Click Element    ${Filtrofechaultejecucion}    

Filtro recurrencia
    Sleep    5s
    Input Text    ${Filtrorecurrencia}    ${Recurrenciahafiltrar}
    Sleep    5s
    Clear Element Text    ${Filtrorecurrencia}

Filtro fase
    Sleep    5s
    Input Text    ${Filtrofase}    ${Fasehafiltrar}
    Sleep    5s
    Clear Element Text    ${Filtrofase}

Filtro activo
    Sleep    5s
    Scroll Element Into View    ${Filtroenejecucion}
    Wait Until Element Is Visible    ${Filtroactivo}
    Click Element    ${Filtroactivo}
    Wait Until Element Is Visible    ${Filtrarporactivos}
    Click Element    ${Filtrarporactivos}    
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}
    Sleep    7s
    Click Element    ${Filtroactivo}
    Wait Until Element Is Visible    ${Filtrarporactivos}
    Click Element    ${Filtrarporactivos}    
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}

Filtro en ejecucion
    Sleep    5s
    Scroll Element Into View    ${Filtroenejecucion}
    Sleep    15s
    Click Element    ${Filtroenejecucion}
    Wait Until Element Is Visible    ${Filtrarenejecucion}
    Click Element    ${Filtrarenejecucion}
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}
    Sleep    5s
    Click Element    ${Filtroenejecucion}
    Wait Until Element Is Visible    ${Filtrarenejecucion}
    Click Element    ${Filtrarenejecucion}
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}

Agregar ciclo de pago
    Sleep    5s
    Click Element    ${Iconoagregar}
    #Wait Until Element Is Visible    ${Campodescripcion}
    Sleep    5s
    Input Text    ${Campodescripcion}    ${Descripcionnueva}
    Wait Until Element Is Visible    ${Campofechainicio}
    Click Element    ${Campofechainicio}
    Wait Until Element Is Visible    ${Fechainicionueva}
    Click Element    ${Fechainicionueva}
    Wait Until Element Is Visible    ${Campofechaultejec}
    Click Element    ${Campofechaultejec}
    Wait Until Element Is Visible    ${Fechaultimaejec}
    Click Element    ${Fechaultimaejec}
    Wait Until Element Is Visible    ${Camporecurrencia}
    Input Text    ${Camporecurrencia}    ${Recurrencianueva}
    Wait Until Element Is Visible    ${Campofasenueva}
    Input Text    ${Campofasenueva}    ${Fasenueva}
    Scroll Element Into View    ${Filtroenejecucion}
    Wait Until Element Is Visible    ${Campoactivo}
    Click Element    ${Campoactivo}
    Sleep    10s
    #Wait Until Element Is Visible    ${Campoenejecucion}
    Click Element    ${Campoenejecucion}
    Sleep    5s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    30s
    Click Element When Visible    ${Iconocancelar}

Editar ciclo de pago
    Sleep    5s
    Click Element    ${Iconoeditar}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Descripcionhaeditar}
    Wait Until Element Is Visible    ${Camporecurrencia}
    Input Text    ${Camporecurrencia}    ${Recurrenciahaeditar}
    Wait Until Element Is Visible    ${Campofasenueva}
    Input Text    ${Campofasenueva}    ${Fasehaeditar}   
    Sleep    5s
    Click Element    ${Iconoguardar} 
    
Eliminar ciclo de pago
    Sleep    5s
    Click Element    ${Iconoeliminar}
    Wait Until Element Is Visible    ${Confirmareliminarregistro}
    Click Element    ${Confirmareliminarregistro}

Caracteres invalidos
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Campofechainicio}
    Click Element    ${Campofechainicio}
    Wait Until Element Is Visible    ${Fechainicionueva}
    Click Element    ${Fechainicionueva}
    Wait Until Element Is Visible    ${Campofechaultejec}
    Click Element    ${Campofechaultejec}
    Wait Until Element Is Visible    ${Fechaultimaejec}
    Click Element    ${Fechaultimaejec}
    Wait Until Element Is Visible    ${Camporecurrencia}
    Input Text    ${Camporecurrencia}    ${Recurrencianueva}
    Wait Until Element Is Visible    ${Campofasenueva}
    Input Text    ${Campofasenueva}    ${Fasenueva}
    Wait Until Element Is Visible    ${Campoactivo}
    Click Element    ${Campoactivo}
    Wait Until Element Is Visible    ${Campoenejecucion}
    Click Element    ${Campoenejecucion}
    Sleep    5s
    Click Element    ${Iconoguardar}
    Sleep    5s
    Click Element    ${Campodescripcion}
    Sleep    5s
    Click Element    ${Iconocancelar}

