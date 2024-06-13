*** Settings ***
Documentation       Pruebas INCREMENTOS
Library    XML
Library    string    
Library    SeleniumLibrary

*** Variables ***
#########################Login and validate user######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui
@{USERL}=    Create List     joriospe    #EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Megajos202    #Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Validacion pantalla incrementos#################################################################################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]
${Incrementos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]/ul/li[3]
${Control_de_comisiones}    xpath=//span[contains(.,'Control de Comisiones')]
###########################Filtros##############################################################################################################
${Filtroaño}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Año}    2022
${Filtroempleado}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Empleado}    aramirez@megacable.com.mx	
${Filtroproveedor}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Proveedor}    AQUA INFRAESTRUCTURA,SRL de CV	    
${Filtroincremento}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Incremento}    1300 
${Filtrousuario}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Usuario}    Softteck01
###################################Icono actualizar#########################################################################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#####################################Agregar incremento##########################################################################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campoaño}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Campoempleado}    xpath=(//input[contains(@autocomplete,'off')])[11]
${Empleadonuevo}    xpath=//td[contains(.,'JAHIRO RENE CASTRO ALMEIDA')]
${Campoproveedor}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Proveedornuevo}    xpath=//td[contains(.,'ADAR SERVICIOS Y PROYECTOS SA DE CV')]
${Campoincremento}    xpath=(//input[contains(@autocomplete,'off')])[15]
${Icrementonuevo}    9000
${Campofechasolicitud}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-incremento-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[6]/div/div/div[1]/div/div[2]
${Fechasolicitud}    xpath=(//span[contains(.,'1')])[2]
${Campofechaautorizacionscroll}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7] 
${Fechaautorizacion}    xpath=(//span[contains(.,'31')])[5]
${Campofechaautorizacion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-incremento-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[7]/div/div/div/div/div[2]
#########################################Icono guardar################################################################################################################
${Iconoguardar}    xpath=(//a[@aria-label='Guardar'])[2]
#########################################Scroll#########################################################################################################
${Gridincrementos}    xpath=(//input[contains(@autocomplete,'off')])[15]
#########################################Editar registro######################################################################################################
${Iconoeditar}    xpath=(//a[contains(@aria-label,'Modificar')])[5]
${Añoeditado}    2023
${Icrementoeditado}    3000
${Usuarioeditado}    MAGONZALEZ
${Campoincrementohaeditar}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Campousuariohaeditar}    xpath=(//input[contains(@autocomplete,'off')])[14]
########################################Eliminar registro###############################################################################################
${Iconoeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[5]
${Si}    xpath=(//div[contains(.,'Sí')])[10]
${Caracteresinvalidos}    $%&/@
#######################################Icono cancelar######################################################################################################
${Iconocancelar}    xpath=(//a[contains(@title,'Cancelar')])[2]


*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion usuarios

Buscar
    Filtro año
    Filtro empleado
    Filtro proveedor
    Filtro incremento
    Filtro usuario

Icono actualizar
    Icono actualizar

Agregar
    Add incremento
    Icono guardar    

Registros repetidos
    Add incremento
    Icono guardar

Editar
    Icono cancelar
    Icono actualizar    
    Edit incremento

Eliminar
    Delete incremento

Caracteres invalidos
    Invalid characters

*** Keyword ***
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
        Click Element    ${Proveedores}
        Sleep    3s
        Scroll Element Into View    ${Incrementos}
        Sleep    3s
        Click Element    ${Incrementos}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Filtro año
    Sleep    5s
    Input Text    ${Filtroaño}    ${Año}
    Sleep    5s
    Clear Element Text    ${Filtroaño}

Filtro empleado
    Sleep    5s
    Input Text    ${Filtroempleado}    ${Empleado}
    Sleep    5s
    Clear Element Text    ${Filtroempleado}

Filtro proveedor
    Sleep    5s
    Input Text    ${Filtroproveedor}    ${Proveedor}
    Sleep    5s
    Clear Element Text    ${Filtroproveedor}

Filtro incremento
    Sleep    5s
    Input Text   ${Filtroincremento}    ${Incremento}
    Sleep    5s
    Clear Element Text    ${Filtroincremento}

Filtro usuario
    Sleep    5s
    Input Text    ${Filtrousuario}    ${Usuario}
    Sleep    5s
    Clear Element Text    ${Filtrousuario}

Icono actualizar
    Sleep    5s
    Click Element    ${Iconoactualizar}

Add incremento
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campoaño}    
    Input Text    ${Campoaño}    ${Año}
    Wait Until Element Is Visible    ${Campoempleado}
    Click Element    ${Campoempleado}
    Sleep    4s
    Click Element    ${Empleadonuevo}
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Sleep    4s
    Click Element    ${Proveedornuevo}
    Sleep    4s
    Input Text    ${Campoincremento}    ${Icrementonuevo} 
    Sleep    5s
    Scroll Element Into View    ${Campofechaautorizacionscroll}
    Sleep    5s
    Click Element    ${Campofechasolicitud}
    Sleep    4s
    Click Element    ${Fechasolicitud}
    Sleep    4s
    Scroll Element Into View    ${Campofechaautorizacionscroll}
    Sleep    4s
    Click Element    ${Campofechaautorizacion}
    Sleep    4s
    Click Element    ${Fechaautorizacion}
    
Icono guardar
    Sleep    5s
    Click Element    ${Iconoguardar}

Edit incremento
    Sleep    5s
    Click Element    ${Iconoeditar}
    Wait Until Element Is Visible    ${Campoaño}
    Input Text    ${Campoaño}    ${Añoeditado}
    Sleep    5s
    Input Text    ${Campoincrementohaeditar}    ${Icrementoeditado}
    Sleep    5s 
    Input Text    ${Campousuariohaeditar}    ${Usuarioeditado}
    Sleep    5s
    Click Element    ${Iconoguardar}

Delete incremento
    Sleep    5s
    Click Element    ${Iconoeliminar}
    Sleep    5s
    Click Element    ${Si}

Invalid characters
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campoaño}
    Input Text    ${Campoaño}    ${Año}
    Wait Until Element Is Visible    ${Campoempleado}
    Click Element    ${Campoempleado}
    Sleep    4s
    Click Element    ${Empleadonuevo}
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Sleep    4s
    Click Element    ${Proveedornuevo}
    Sleep    4s
    Input Text    ${Campoincremento}    ${Icrementonuevo} 
    Sleep    5s
    Scroll Element Into View    ${Campofechaautorizacionscroll}
    Sleep    5s
    Click Element    ${Campofechasolicitud}
    Sleep    4s
    Click Element    ${Fechasolicitud}
    Sleep    4s
    Click Element   ${Campofechaautorizacion}
    Sleep    4s
    Click Element    ${Fechaautorizacion}
    Sleep    4s
    Click Element    ${Iconoguardar}
    Sleep    4s
    Click Element    ${Iconocancelar}

Icono cancelar
    Wait Until Element Is Visible    ${Iconocancelar}
    Click Element    ${Iconocancelar}
