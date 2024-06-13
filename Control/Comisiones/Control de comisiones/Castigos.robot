** Settings ***
Documentation     Scroll
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
########################Pantalla castigos############################################
${Gruposdetrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[3]/ul/li[6]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Comisiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]
${Controldecomisiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[3]
${Castigos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[3]/ul/li[4]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros###################################################################
${Campofiltroproveedor}    xpath=(//input[contains(@autocomplete,'off')])[3]    
${Proveedorhafiltrar}    GCPM COMUNICACIONES		    
${Campofiltroregion}    xpath=(//input[contains(@autocomplete,'off')])[4]    
${Regionhafiltrar}    PENINSULA    
${Campofiltroempleado}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Empleadohafiltrar}    afuentes@megacable.com.mx	    
${Campofiltrosucursal}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Sucursalhafiltrar}    La Barca    	        
#########################Nueva castigo#######################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campoproveedor}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Proveedor}    xpath=//td[contains(.,'AQUA INFRAESTRUCTURA,SRL de CV')]    
${Camporegion}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Region}    xpath=//td[contains(.,'001')]
${Campoempleado}    xpath=//dx-drop-down-box[@id='empleadoDropdown']/div/div/div/input
${Empleado}    xpath=//td[contains(.,'ecasarez@megacable.com.mx')]
${Camposucursal}    xpath=//dx-drop-down-box[@id='sucursaleDropdown']/div/div/div/input
${Sucursal}    xpath=//td[contains(.,'Amatitan 2')]
${Campousuario}    xpath=(//input[contains(@autocomplete,'off')])[20]
${Usuario}    IESTRADAV
${Campofechacontrol}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-castigo-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[6]/div[1]/div/div[1]/div/div[2]
${Fechacontrol}    xpath=(//span[contains(.,'14')])[1]    
${CampoNSE}    xpath=(//input[contains(@autocomplete,'off')])[22]
${NSE}    12
${Campotipotrabajo}    xpath=(//input[contains(@autocomplete,'off')])[23]
${Tipotrabajo}    1
${Campotrabajo}    xpath=(//input[contains(@autocomplete,'off')])[24]
${Trabajo}    1
##############################Icono guardar##############################################################
${Iconoguardar}    xpath=(//a[contains(@title,'Guardar')])[2]
##############################Icono cancelar################################################################ 
${Iconocancelar}    xpath=(//a[contains(@aria-label,'Cancelar')])[2]
##############################Editar castigo########################################################
${Iconoeditar}    xpath=(//a[contains(@aria-label,'Modificar')])[3]
${Proveedorhaeditar}    xpath=//td[contains(.,'Aliza Transporte SA de CV')]
${Regionhaeditar}    xpath=//td[contains(.,'005')]
${Empleadohaeditar}    xpath=//td[contains(.,'jchavez@megacable.com.mx')]
############################Eliminar registro################################################################
${Iconoeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[3]
${Si}    xpath=//span[contains(.,'Sí')]
##########################Caracteres invalidos##############################################################
${Caracteresinvalidos}    @#$%&/

*** Test Cases ***
User and Screen empleados
    Validacion usuarios

Icon actualizar
    Icono actualizar

Filters
    Filtro proveedor
    Filtro region
    Filtro empleado
    Filtro sucursal

Add castigo
    Nuevo castigo

Icon guardar
    Icono guardar

Repeat records
    Sleep    7s
    Nuevo castigo 
    Icono guardar
    
Icon cancelar
    Icono cancelar

Edit castigo
    Editar castigo

Invalid characters
    Invalid character

Delete castigo
    Delete castigo


*** Keywords ***
Validacion usuarios
    #FOR    ${counter}    IN RANGE    1     5 
    FOR    ${counter}    IN RANGE    1     2
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
        Wait Until Element Is Visible    ${Castigos}
        Click Element    ${Castigos}
    #IF    ${counter} <= ${3}
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

Filtro region
    Wait Until Element Is Visible    ${Campofiltroregion}
    Input Text    ${Campofiltroregion}    ${Regionhafiltrar}
    Sleep    5s
    Clear Element Text    ${Campofiltroregion}

Filtro empleado
    Wait Until Element Is Visible    ${Campofiltroempleado}
    Input Text    ${Campofiltroempleado}    ${Empleadohafiltrar}
    Sleep    5s
    Clear Element Text    ${Campofiltroempleado}
 
Filtro sucursal
    Wait Until Element Is Visible    ${Campofiltrosucursal}
    Input Text    ${Campofiltrosucursal}    ${Sucursalhafiltrar}
    Sleep    5s
    Clear Element Text    ${Campofiltrosucursal}

Nuevo castigo
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}    
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Wait Until Element Is Visible    ${Proveedor}
    Click Element    ${Proveedor}
    Wait Until Element Is Visible    ${Camporegion}
    Click Element    ${Camporegion}
    Wait Until Element Is Visible    ${Region}
    Click Element    ${Region}
    Wait Until Element Is Visible    ${Campoempleado}
    Click Element    ${Campoempleado}
    Wait Until Element Is Visible    ${Empleado}
    Click Element    ${Empleado}
    #Wait Until Element Is Visible    ${Camposucursal}
    #Click Element    ${Camposucursal}
    #Wait Until Element Is Visible    ${Sucursal}
    #Click Element    ${Sucursal}
    Sleep    5s
    Scroll Element Into View    ${Campotrabajo}
    Sleep    10s
    Wait Until Element Is Visible    ${Campousuario}
    Input Text    ${Campousuario}    ${Usuario}
    Wait Until Element Is Visible    ${Campofechacontrol}
    Click Element    ${Campofechacontrol}
    Wait Until Element Is Visible    ${Fechacontrol}
    Click Element    ${Fechacontrol}
    Wait Until Element Is Visible    ${CampoNSE}
    Input Text    ${CampoNSE}    ${NSE}
    Wait Until Element Is Visible    ${Campotipotrabajo}
    Input Text    ${Campotipotrabajo}    ${Tipotrabajo}
    Wait Until Element Is Visible    ${Campotrabajo}
    Input Text    ${Campotrabajo}    ${Trabajo}

Icono guardar
    Sleep    7s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    7s    
    Click Element    ${Iconocancelar}

Editar castigo
    Sleep    7s
    Click Element    ${Iconoeditar}  
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Wait Until Element Is Visible    ${Proveedorhaeditar}
    Click Element    ${Proveedorhaeditar}
    Wait Until Element Is Visible    ${Camporegion}
    Click Element    ${Camporegion}
    Wait Until Element Is Visible    ${Regionhaeditar}
    Click Element    ${Regionhaeditar}
    Wait Until Element Is Visible    ${Campoempleado}
    Click Element    ${Campoempleado}
    Wait Until Element Is Visible    ${Empleadohaeditar}
    Click Element    ${Empleadohaeditar}
    Sleep    5s
    Click Element    ${Iconoguardar}

Invalid character
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}    
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Wait Until Element Is Visible    ${Proveedor}
    Click Element    ${Proveedor}
    Wait Until Element Is Visible    ${Camporegion}
    Click Element    ${Camporegion}
    Wait Until Element Is Visible    ${Region}
    Click Element    ${Region}
    Wait Until Element Is Visible    ${Campoempleado}
    Click Element    ${Campoempleado}
    Wait Until Element Is Visible    ${Empleado}
    Click Element    ${Empleado}
    Sleep    5s
    Scroll Element Into View    ${Campotrabajo}
    Sleep    10s
    Wait Until Element Is Visible    ${Campousuario}
    Input Text    ${Campousuario}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Campofechacontrol}
    Click Element    ${Campofechacontrol}
    Wait Until Element Is Visible    ${Fechacontrol}
    Click Element    ${Fechacontrol}
    Wait Until Element Is Visible    ${CampoNSE}
    Input Text    ${CampoNSE}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Campotipotrabajo}
    Input Text    ${Campotipotrabajo}    ${Tipotrabajo}
    Wait Until Element Is Visible    ${Campotrabajo}
    Input Text    ${Campotrabajo}    ${Trabajo}
    Sleep    4s
    Click Element    ${Iconoguardar}
    Sleep    4s
    Click Element    ${CampoNSE}
    Sleep    4s
    Click Element    ${Campousuario}
    Sleep    4s
    Click Element    ${Iconocancelar}
 
Delete castigo
    Sleep    7s
    Click Element    ${Iconoeliminar}
    Sleep    7s
    Click Element    ${Si}


