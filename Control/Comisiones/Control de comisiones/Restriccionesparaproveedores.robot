** Settings ***
Documentation     Restricciones para proveedores
Library    SeleniumLibrary

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
########################Pantalla restricciones para proveedores############################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]
${Restricciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]/ul/li[2]
${Control_de_comisiones}    xpath=//span[contains(.,'Control de Comisiones')]
${Restricciones_proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[5]/ul/li[4]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros###################################################################
${Campofiltroproveedor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[1]/div/div[2]/div/div/div[1]/input 
${Proveedorhafiltrar}    LOGTRADE, S. DE R.L. DE CV.	    
${Campofiltrorestriccion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[2]/div/div[2]/div/div/div[1]/input
${Restriccionhafiltrar}    Construcción    
${Campofechacontrol}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[3]/div/div[2]/div/div[1]/div/div[1]/input
${Fechacontrol}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${Campofiltrousuario}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[4]/div/div[2]/div/div/div[1]/input
${Usuariohafiltrar}    softteck01	        
#########################Nueva restriccion#######################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campoproveedor}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[1]/div/div/app-proveedor-dropdown/dx-drop-down-box/div/div/div[1]/input
${Proveedor}    xpath=(//td[contains(.,'RENO SA DE CV')])[2]
${Camporestriccion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[2]/div/div/app-restriccion-dropdown/dx-drop-down-box/div/div/div[1]/input
${Restriccion}    xpath=//td[contains(.,'003')]
${Fechacontrolnueva}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[3]/div/div/div/div/div[1]/input
${Campousuario}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-rest-proveedor-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[4]/div/div/div/div[1]/input
${Usuario}    IESTRADAV
##############################Icono guardar##############################################################
${Iconoguardar}    xpath=(//a[contains(@title,'Guardar')])[2]
##############################Icono cancelar################################################################ 
${Iconocancelar}    xpath=(//a[contains(@aria-label,'Cancelar')])[2]
##############################Proveedor repetido#######################################################
${Proveedorrepetido}    xpath=(//td[contains(.,'AQUA INFRAESTRUCTURA,SRL de CV')])[3]
##############################Editar restriccion########################################################
${Iconoeditar}    xpath=(//a[@aria-label='Modificar'])[5]
${Proveedorhaeditar}    xpath=//td[contains(.,'ALIZA TRANSPORTE S DE RL DE CV')]
${Restriccionhaeditar}    xpath=//td[contains(.,'INSTALACION')]
############################Eliminar registro################################################################
${Iconoeliminar}    xpath=(//a[@aria-label='Eliminar'])[8]
${Si}    xpath=//span[contains(.,'Sí')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion usuarios

Icono actualizar
    Icono actualizar

Buscar Restricciones Proveedores
    Filtro proveedor
    Filtro restriccion
    Filtro fecha Control
    Filtro usuario

Agregar Restricciones Proveedores
    Nueva restriccion
    Icono guardar
    Icono cancelar

Registros repetidos
    Sleep    7s
    Nueva restriccion
    Icono guardar
    
Icono cancelar
    Icono cancelar

Editar Restricciones Proveedores
    Editar restriccion

Eliminar Restricciones Proveedores
    Eliminar restriccion

Campos vacios
    Campos vacios

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
        Scroll Element Into View    ${Restricciones_proveedores}
        Sleep    3s
        Click Element    ${Restricciones_proveedores}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


F_scroll
    [Documentation]
    [Arguments]    ${x}    ${y}
    execute javascript    window.scrollTo(${x},${y})

Icono actualizar
    Wait Until Element Is Visible   ${Iconoactualizar}
    Click Element   ${Iconoactualizar}

Filtro proveedor
    Wait Until Element Is Visible    ${Campofiltroproveedor}
    Input Text    ${Campofiltroproveedor}    ${Proveedorhafiltrar}
    Sleep    5s
    Clear Element Text    ${Campofiltroproveedor}

Filtro restriccion
    Wait Until Element Is Visible    ${Campofiltrorestriccion}
    Input Text    ${Campofiltrorestriccion}    ${Restriccionhafiltrar}
    Sleep    5s
    Clear Element Text    ${Campofiltrorestriccion}

Filtro fecha Control
    #Wait Until Element Is Visible    ${Campofechacontrol}
    Sleep    7s
    Press Keys    ${Campofechacontrol}    ENTER
    Sleep    5s
    Clear Element Text    ${Campofechacontrol}
 
Filtro usuario
    Wait Until Element Is Visible    ${Campofiltrousuario}
    Input Text    ${Campofiltrousuario}    ${Usuariohafiltrar}
    Sleep    5s
    Clear Element Text    ${Campofiltrousuario}

Nueva restriccion
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}    
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Sleep    5s
    Click Element    ${Proveedor}
    Wait Until Element Is Visible    ${Camporestriccion}
    Click Element    ${Camporestriccion}
    Wait Until Element Is Visible    ${Restriccion}
    Click Element    ${Restriccion}
    Press Keys    ${Fechacontrol}    ENTER
    Sleep    5s
    Wait Until Element Is Visible    ${Campousuario}
    Click Element    ${Campousuario}
    Input Text    ${Campousuario}    ${Usuario}

Icono guardar
    Sleep    7s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    7s    
    Click Element    ${Iconocancelar}

Restriccion repetida
    Sleep    5s
    Click Element    ${Iconoagregar}    
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Sleep    5s
    Click Element    ${Proveedorrepetido}
    Wait Until Element Is Visible    ${Camporestriccion}
    Click Element    ${Camporestriccion}
    Wait Until Element Is Visible    ${Restriccion}
    Click Element    ${Restriccion}
    Press Keys    ${Fechacontrol}    ENTER
    Sleep    5s
    Wait Until Element Is Visible    ${Campousuario}
    Click Element    ${Campousuario}
    Input Text    ${Campousuario}    ${Usuario}

Editar restriccion
    Sleep    7s
    Click Element    ${Iconoeditar}
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Sleep    5s
    Click Element    ${Proveedorhaeditar}
    Wait Until Element Is Visible    ${Camporestriccion}
    Click Element    ${Camporestriccion}
    Wait Until Element Is Visible    ${Restriccionhaeditar}
    Click Element    ${Restriccionhaeditar}
    Sleep    7s
    Click Element    ${Iconoguardar}

Eliminar restriccion
    Sleep    7s
    Click Element    ${Iconoeliminar}
    Sleep    7s
    Click Element    ${Si}

Campos vacios
    Sleep    7s
    Click Element    ${Iconoguardar}
