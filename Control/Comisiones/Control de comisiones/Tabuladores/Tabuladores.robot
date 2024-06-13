** Settings ***
Documentation     Tabuladores
Library    SeleniumLibrary
Library    XML    


*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui   
@{USERL}=    Create List     joriospe    #EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Megajos202    #Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
########################Pantalla tabuladores############################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]
${Restricciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]/ul/li[2]
${Control_de_comisiones}    xpath=//span[contains(.,'Control de Comisiones')]
${Tabuladores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[5]/ul/li[2]
########################Filters##########################################################################
${Filtrocontrol}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Filtrodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Filtroempleado}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Empleadoafiltrar}    mvaldez@megacable.com.mx	    
#######################Agregar tabulador############################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campocontrol}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Control}    AC:D:G    
${Campodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Descripcion}    Inst Telefono/Internet/TV	    
${Campoempleado}    xpath=//input[contains(@aria-expanded,'false')]
${Empleado}    xpath=//td[@aria-describedby='dx-col-7'][contains(.,'afuentes@megacable.com.mx')]
${Iconoguardar}    xpath=(//a[contains(@title,'Guardar')])[2]
#########################Icono cancelar############################################################
${Iconocancelar}    xpath=(//a[contains(@title,'Cancelar')])[2]
########################Eliminar registro##########################################################
${Registrohaeliminar}    xpath=(//a[@aria-label='Eliminar'])[11]
${Si}    xpath=//div[@class='dx-button-content'][contains(.,'Sí')]
###########################Caracteres invalidos####################################################
${Caracteresinvalidos}    $$!&/$@$$%
############################Icono actualizar#############################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion usuarios

Icono actualizar
    Icono actualizar

Buscar Tabuladores
    Filtro control
    Filtro descripcion
    Filtro Empleado

#Agregar Tabuladores
    #Agregar tabulador

#Registros repetidos
    #Agregar tabulador
    #Icono cancelar registro repetido

#Icono cancelar
    #Icono cancelar

#Eliminar Tabuladores
    #Eliminar registro

#Caracteres invalidos
    #Validacion de caracteres invalidos


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
        Scroll Element Into View    ${Tabuladores}
        Sleep    3s
        Click Element    ${Tabuladores}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Icono actualizar
    Sleep    5s
    Click Element    ${Iconoactualizar}

Agregar tabulador
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campocontrol}
    Input Text    ${Campocontrol}    ${Control}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Descripcion}
    #Click Element When Visible    ${Campoempleado}
    #Click Element When Visible    ${Empleado}
    Sleep    5s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campocontrol}
    Input Text    ${Campocontrol}    ${Control}
    Wait Until Element Is Visible    ${Campodescripcion}
    Input Text    ${Campodescripcion}    ${Descripcion}
    Wait Until Element Is Visible    ${Campoempleado}
    Click Element   ${Campoempleado}
    Wait Until Element Is Visible    ${Empleado}
    Click Element    ${Empleado}
    Sleep    5s
    Click Element    ${Iconocancelar}

Filtro control
    Wait Until Element Is Visible    ${Filtrocontrol}
    Input Text    ${Filtrocontrol}    ${Control}
    Sleep    5s
    Clear Element Text    ${Filtrocontrol}

Filtro descripcion
    Wait Until Element Is Visible    ${Filtrodescripcion} 
    Input Text    ${Filtrodescripcion}    ${Descripcion}
    Sleep    5s
    Clear Element Text    ${Filtrodescripcion}

Filtro Empleado
    Wait Until Element Is Visible    ${Filtroempleado}
    Input Text   ${Filtroempleado}    ${Empleadoafiltrar}
    Sleep    5s
    Clear Element Text    ${Filtroempleado}

Eliminar registro    
    Sleep    5s
    Click Element    ${Registrohaeliminar}
    Sleep    5s
    Click Element    ${Si}

Validacion de caracteres invalidos
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campocontrol}
    Input Text    ${Campocontrol}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Campodescripcion} 
    Input Text    ${Campodescripcion}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Campoempleado}
    Click Element    ${Campoempleado}
    Wait Until Element Is Visible    ${Empleado}
    Click Element    ${Empleado}
    Sleep    5s
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element   ${Iconoguardar}
    Wait Until Element Is Visible    ${Campocontrol}
    Click Element    ${Campocontrol}
    Sleep    5s
    Click Element    ${Campodescripcion}
    Sleep    5s
    Click Element    ${Iconocancelar}

Icono cancelar registro repetido
    Sleep    5s
    Click Element   ${Iconocancelar}
