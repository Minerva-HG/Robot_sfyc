** Settings ***
Documentation     Demonstrating a while-like loop.
Library    SeleniumLibrary
Library    XML    
Library    String

*** Variables ***
#########################Login and validate user######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui   
@{USERL}=    Create List     joriospe    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Megajos202    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Validacion usuarios#################################################################################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]
${Restricciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]/ul/li[2]
${Control_de_comisiones}    xpath=//span[contains(.,'Control de Comisiones')]
#####################################Filtro descripcion#################################################################################################
${Textodescripcion}    Soporte TI        
${Textotipotrabajo}    2  
${Textotrabajo}    1
${Textousuario}    acarreon
${Filtrodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Filtro_tipo_trabajo}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Filtrotrabajo}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Filtrousuario}    xpath=(//input[contains(@autocomplete,'off')])[6]
######################################Agregar restriccion####################################################################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Descripcion}    Arquitecturasw
${Campotipotrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-restriccion-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[2]/div/div/app-type-work-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Tipotrabajo}    xpath=//td[contains(.,'Anomalias')]
${Campotrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-restriccion-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[3]/div/div/app-work-dropdown/app-base-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Trabajo}    xpath=//td[contains(.,'Fuera Parametro Material')]    
####################################Icono guardar########################################################################################################
${Iconoguardar}    xpath=(//a[contains(@aria-label,'Guardar')])[2]
###################################Icono cancelar#######################################################################################################
${Iconocancelar}    xpath=(//a[contains(@title,'Cancelar')])[2]
##################################Caracteres invalidos#########################################################################################################
${Caracteresinvalidos}    @$%&/%
######################################Editar registro##########################################################################################################
${Iconoeditar}    xpath=(//a[contains(@aria-label,'Modificar')])[5]
${Descripcionnueva}    Diseño de maquetas
${Tipotrabajonuevo}    7
${Trabajonuevo}    2
${Usuarionuevo}    Softteck01
######################################Eliminar registro##########################################################################################################
${Iconoeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[5]
${Si}    xpath=//div[@class='dx-button-content'][contains(.,'Sí')]
#####################################Notificacion############################################################################
${Notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]

*** Test Cases ***
Usuarios con permisos a la pantalla 
    Validation user

Buscar
    Filtro descripcion
    Filtro tipo trabajo
    Filtro trabajo
    Filtro usuario

Agregar
    Agregar restriccion
    Icono guardar

Registros repetidos
    Notificacion
    Agregar restriccion
    Icono guardar
    Notificacion

Icono cancelar
    Icono agregar
    Icono cancelar

Campos vacios
    Agregar restriccion
    Campos vacios
    Icono guardar
    Icono cancelar

Caracteres invalidos
    Caracteres invalidos

Editar
    Editar restriccion

Eliminar
    Delete restriccion

*** Keyword ***
Validation user
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
        Click Element    ${Proveedores}
        Sleep    3s
        Scroll Element Into View    ${Restricciones}
        Sleep    3s
        Click Element    ${Restricciones}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Filtro descripcion
    Wait Until Element Is Visible    ${Filtrodescripcion}
    Input Text    ${Filtrodescripcion}    ${Textodescripcion}
    Sleep    5s
    Clear Element Text    ${Filtrodescripcion}

Filtro tipo trabajo
    Wait Until Element Is Visible    ${Filtro_tipo_trabajo}
    Input Text    ${Filtro_tipo_trabajo}    ${Textotipotrabajo}
    Sleep    5s
    Clear Element Text    ${Filtro_tipo_trabajo}

Filtro trabajo
    Wait Until Element Is Visible    ${Filtrotrabajo}
    Input Text   ${Filtrotrabajo}    ${Textotrabajo}
    Sleep    5s
    Clear Element Text    ${Filtrotrabajo}

Filtro usuario
    Wait Until Element Is Visible    ${Filtrousuario} 
    Input Text    ${Filtrousuario}    ${Textousuario}
    Sleep    5s
    Clear Element Text    ${Filtrousuario}
Agregar restriccion
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}    
    Wait Until Element Is Visible    ${Campodescripcion}   
    Input Text    ${Campodescripcion}    ${Descripcion}
    Sleep    3s
    Wait Until Element Is Visible    ${Campotipotrabajo}
    Click Element    ${Campotipotrabajo}
    Wait Until Element Is Visible    ${Tipotrabajo}
    Click Element    ${Tipotrabajo}   
    Wait Until Element Is Visible    ${Campotrabajo}
    Click Element    ${Campotrabajo}
    Wait Until Element Is Visible    ${Trabajo}
    Click Element    ${Trabajo}

Icono guardar
    Sleep    5s
    Click Element   ${Iconoguardar}

Icono cancelar
    Sleep    5s
    Click Element    ${Iconocancelar}

Campos vacios
    Sleep    3s
    Clear Element Text    ${Campodescripcion}
    Wait Until Element Is Visible    ${Campotipotrabajo}
    Click Element   ${Campotipotrabajo}
    Wait Until Element Is Visible    ${Campotipotrabajo}
    Click Element    ${Campodescripcion}

Caracteres invalidos
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Caracteresinvalidos}
    Sleep    7s
    Click Element    ${Iconocancelar}

Editar restriccion
    Wait Until Element Is Visible    ${Iconoeditar}
    Click Element   ${Iconoeditar} 
    Wait Until Element Is Visible    ${Campodescripcion}   
    Input Text    ${Campodescripcion}    ${Descripcion}
    Wait Until Element Is Visible    ${Campotipotrabajo}
    Click Element    ${Campotipotrabajo}
    Wait Until Element Is Visible    ${Tipotrabajo}
    Click Element    ${Tipotrabajo}   
    Wait Until Element Is Visible    ${Campotrabajo}
    Click Element    ${Campotrabajo}
    Wait Until Element Is Visible    ${Trabajo}
    Click Element    ${Trabajo}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Delete restriccion
    Sleep    4s
    Click Element    ${Iconoeliminar}
    Sleep    7s
    Click Element    ${Si}

Notificacion
    Sleep    10s
    Click Element    ${Notificacion}

Icono agregar
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}    
