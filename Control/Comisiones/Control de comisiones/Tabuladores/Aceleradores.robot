** Settings ***
Documentation     Aceleradores
Library    SeleniumLibrary
Library    XML    
        
*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui
@{USERL}=    Create List     EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
########################Pantalla Aceleradores############################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]
${Restricciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]/ul/li[2]
${Control_de_comisiones}    xpath=//span[contains(.,'Control de Comisiones')]
${Aceleradores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[5]/ul/li[3]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros################################################################
${Campodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Descripcion}    Hasta 9999	    
${Campoimporte}    xpath=//input[contains(@min,'undefined')]
${Importe}    1.300,00     
${Camporangodesde}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Rangodesde}    14000    
${Camporangohasta}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Rangohasta}    120000    
${Camporangotabulador}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Rangotabulador}    Inst en Fibra/Aéreo/C-	    
${Campogrupo}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Grupo}    Inst Modem + TV	    
${Campocodigo}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Codigo}    13100   
${Campodescripciontrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-acelerador-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[4]/div/div[2]/div/div/div[1]/input
${Descripciontrabajo}    mantenimiento
###########################Agrear nuevo acelerador#######################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Descripcionnueva}    Hasta 95377
${Importenuevo}    9537
${Rangodesdenuevo}    2000    
${Rangohastanuevo}    9500
${Campotabulador}    xpath=(//input[contains(@autocomplete,'off')])[14]
${Tabulador}    xpath=//td[@aria-describedby='dx-col-11'][contains(.,'002')]
${Grupos}    xpath=(//input[contains(@autocomplete,'off')])[15]
${Gruponuevo}    xpath=//td[contains(.,'001')]
${Codigonuevo}    21829
${Trabajonuevo}    Redes
${Campodescripcionnueva}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Campoimportenuevo}    xpath=(//input[contains(@autocomplete,'off')])[11]
${Camporangodesdenuevo}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Camporangohastanuevo}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Campocodigonuevo}    xpath=//td[7]/div/div/div/div/input
${Descripciontrabajonuevo}    xpath=//td[8]/div/div/div/div/input
#####################################Icono guardar################################################
${Iconoguardar}    xpath=(//a[@title='Guardar'])[2]
#####################################Icono cancelar###############################################
${Iconocancelar}    xpath=(//a[@title='Cancelar'])[2]
#####################################Editar acelerador#############################################
${Iconoeditar}    xpath=(//a[@aria-label='Modificar'])[11]
#####################################Acelerador repetido############################################
${Tabuladorrepetido}    xpath=//td[contains(.,'002')]
#####################################Editar registros###############################################
${Descripcioneditada}    Hasta 115000
${Importeeditado}    11500
${Rangodesdeeditado}    20000
${Rangohastaeditado}    30000
${Codigoeditado}    140769
${Descripciondetrabajoeditado}    Infraestructura
####################################Eliminar acelerador############################################
${Eliminaracelerador}    xpath=(//a[contains(@aria-label,'Eliminar')])[11]
${Confirmareliminarregistro}    xpath=//span[contains(.,'Sí')]
###################################Validacion de rangos###############################################
${Descripcionnuevahasta24000}    24000
${Rangodesde24000}    24000
${Rangohastanuevo10000}    10000

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion usuarios

Icono actualizar
    Icono actualizar

Buscar Aceleradores
    Filtro codigo
    Filtro descripcion
    Filtro rango desde
    Filtro rango hasta
    Filtro importe

#Agregar Aceleradores
    #Agregar acelerador
    #Icono guardar

#Registros repetidos
    #Agregar acelerador repetido
    #Icono guardar
    
#Icono cancelar
    #Icono cancelar

#Editar Aceleradores
    #Editar acelerador

#Eliminar Aceleradores
    #Icono eliminar

#Validate rangos
    #Agregar acelerador con rango desde mayor ha rango hasta 

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
        Scroll Element Into View    ${Aceleradores}
        Sleep    3s
        Click Element    ${Aceleradores}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Icono actualizar
    Wait Until Element Is Visible    ${Iconoactualizar}
    Click Element    ${Iconoactualizar}

Filtro descripcion
    Sleep    5s
    Input Text    ${Campodescripcion}    ${Descripcion}
    Sleep    5s
    Clear Element Text    ${Campodescripcion}

Filtro importe
    Wait Until Element Is Visible    ${Campoimporte}
    Input Text    ${Campoimporte}    ${Importe}
    Sleep    5s
    Clear Element Text    ${Campoimporte}

Filtro rango desde
    Wait Until Element Is Visible    ${Camporangodesde}
    Input Text    ${Camporangodesde}    ${Rangodesde}
    Sleep    5s
    Clear Element Text    ${Camporangodesde}

Filtro rango hasta
    Wait Until Element Is Visible    ${Camporangohasta}
    Input Text    ${Camporangohasta}    ${Rangohasta}
    Sleep    5s
    Clear Element Text    ${Camporangohasta}

Filtro tabulador
    Wait Until Element Is Visible    ${Camporangotabulador}
    Input Text    ${Camporangotabulador}    ${Rangotabulador}
    Sleep    5s
    Clear Element Text    ${Camporangotabulador}

Filtro grupo
    Wait Until Element Is Visible    ${Campogrupo}
    Input Text    ${Campogrupo}    ${Grupo}
    Sleep    5s
    Clear Element Text    ${Campogrupo}

Filtro codigo
    Wait Until Element Is Visible    ${Campocodigo}
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Campocodigo}
    Input Text    ${Campocodigo}    ${Codigo}
    Sleep    5s
    Clear Element Text    ${Campocodigo}

Filtro descripcion trabajo
    Sleep    5s
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Campodescripciontrabajo}
    Input Text    ${Campodescripciontrabajo}    ${Descripciontrabajo}
    Sleep    5s
    Clear Element Text    ${Campodescripciontrabajo}

Agregar acelerador  
    Sleep    5s    
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcionnueva}
    Input Text    ${Campodescripcionnueva}    ${Descripcionnueva}
    Wait Until Element Is Visible    ${Campoimportenuevo}
    Input Text    ${Campoimportenuevo}    ${Importenuevo}
    Wait Until Element Is Visible    ${Camporangodesdenuevo}
    Input Text    ${Camporangodesdenuevo}    ${Rangodesdenuevo}
    Wait Until Element Is Visible    ${Camporangohastanuevo} 
    Input Text    ${Camporangohastanuevo}    ${Rangohastanuevo}
    Wait Until Element Is Visible    ${Campotabulador}
    Click Element   ${Campotabulador}
    Sleep    5s
    Click Element    ${Tabulador}
    Wait Until Element Is Visible    ${Grupos}
    Click Element    ${Grupos}
    Wait Until Element Is Visible    ${Gruponuevo}
    Click Element    ${Gruponuevo}
    Sleep    5s
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Campocodigonuevo}
    Input Text    ${Campocodigonuevo}    ${Codigonuevo}
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Descripciontrabajonuevo}
    Input Text    ${Descripciontrabajonuevo}    ${Trabajonuevo}
    
Icono guardar
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    5s
    Click Element    ${Iconocancelar}

Agregar acelerador repetido
    Sleep    5s    
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcionnueva}
    Input Text    ${Campodescripcionnueva}    ${Descripcionnueva}
    Wait Until Element Is Visible    ${Campoimportenuevo}
    Input Text    ${Campoimportenuevo}    ${Importenuevo}
    Wait Until Element Is Visible    ${Camporangodesdenuevo}
    Input Text    ${Camporangodesdenuevo}    ${Rangodesdenuevo}
    Wait Until Element Is Visible    ${Camporangohastanuevo}
    Input Text    ${Camporangohastanuevo}    ${Rangohastanuevo}
    Wait Until Element Is Visible    ${Campotabulador}
    Click Element    ${Campotabulador}
    Sleep    5s
    Click Element    ${Tabuladorrepetido}
    Wait Until Element Is Visible    ${Grupos}
    Click Element   ${Grupos}
    Wait Until Element Is Visible    ${Gruponuevo}
    Click Element    ${Gruponuevo}
    Sleep    5s
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Campocodigonuevo}
    Input Text    ${Campocodigonuevo}    ${Codigonuevo}
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Descripciontrabajonuevo} 
    Input Text    ${Descripciontrabajonuevo}    ${Trabajonuevo}

Editar acelerador
    Wait Until Element Is Visible    ${Iconoeditar}
    Click Element    ${Iconoeditar}
    Wait Until Element Is Visible    ${Campodescripcionnueva}
    Input Text    ${Campodescripcionnueva}    ${Descripcioneditada}
    Wait Until Element Is Visible    ${Campoimportenuevo}
    Input Text    ${Campoimportenuevo}    ${Importeeditado}
    Wait Until Element Is Visible    ${Camporangodesdenuevo}
    Input Text    ${Camporangodesdenuevo}    ${Rangodesdeeditado}
    Wait Until Element Is Visible    ${Camporangohastanuevo}
    Input Text    ${Camporangohastanuevo}    ${Rangohastaeditado}
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Campocodigonuevo}
    Input Text    ${Campocodigonuevo}    ${Codigoeditado}
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Descripciontrabajonuevo}
    Input Text    ${Descripciontrabajonuevo}    ${Descripciondetrabajoeditado}
    Sleep    5s
    Click Element   ${Iconoguardar}

Icono eliminar
    Sleep    5s
    Click Element    ${Eliminaracelerador}
    Sleep    5s
    Click Element    ${Confirmareliminarregistro}

Agregar acelerador con rango desde mayor ha rango hasta
    Sleep    5s    
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campodescripcionnueva}
    Input Text    ${Campodescripcionnueva}    ${Descripcionnuevahasta24000}
    Wait Until Element Is Visible    ${Campoimportenuevo}
    Input Text    ${Campoimportenuevo}    ${Importenuevo}
    Wait Until Element Is Visible    ${Camporangodesdenuevo} 
    Input Text    ${Camporangodesdenuevo}    ${Rangodesde24000}
    Wait Until Element Is Visible    ${Camporangohastanuevo}
    Input Text    ${Camporangohastanuevo}    ${Rangohastanuevo10000}
    Wait Until Element Is Visible    ${Campotabulador}
    Click Element    ${Campotabulador}
    Sleep    5s
    Click Element    ${Tabuladorrepetido}
    Wait Until Element Is Visible    ${Grupos}
    Click Element    ${Grupos}
    Wait Until Element Is Visible    ${Gruponuevo}
    Click Element   ${Gruponuevo}
    Sleep    5s
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Campocodigonuevo}
    Input Text    ${Campocodigonuevo}    ${Codigonuevo}
    Scroll Element Into View    ${Campodescripciontrabajo}
    Wait Until Element Is Visible    ${Descripciontrabajonuevo}
    Input Text    ${Descripciontrabajonuevo}    ${Trabajonuevo}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}
