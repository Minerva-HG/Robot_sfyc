*** Settings ***
Documentation    
Library    SeleniumLibrary


*** Variables ***
################################Inicio de sesion############################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
#######################################Ingresar a pantalla minimo y maximo de cis##############################################################
${Botonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Operacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[3]
${Minimo y maximo de cis}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[3]/ul/li[17]
######################################Nuevo registro##########################################################################
${Icon_add}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Sucursales}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Sucursal}    xpath=(//td[contains(.,'Tlaquepaque')])[1]
${Todos_Cis}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Cis}    xpath=//td[contains(.,'CIS TLAQUEPAQUE')]
${Checkbox_es_articulo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]    
${Tipos_equipos}    xpath=(//input[contains(@autocomplete,'off')])[14]
${Equipo}    xpath=//td[contains(.,'002')]
${Articulos}    xpath=(//input[contains(@autocomplete,'off')])[15]
${Articulo}    xpath=//td[contains(.,'3COM3CR292')]
${Campominima}    xpath=(//input[contains(@autocomplete,'off')])[18]    
${Campomaxima}    xpath=(//input[contains(@autocomplete,'off')])[19]    
${Minima}    15
${Maxima}    100
${Iconoguardar}    xpath=(//a[contains(@aria-label,'Guardar')])[2]
###################################Icono cancelar#######################################################################
${Icono_cancelar}    xpath=(//a[contains(@aria-label,'Cancelar')])[2]
##################################Editar registro##########################################################################
${Icono_editar}    xpath=(//a[contains(@aria-label,'Modificar')])[12]
${Sucursal_tonala}    xpath=//td[contains(.,'Tonala')]
${Cis_walmart}    xpath=//td[contains(.,'CIS WALMART')]
#################################Icono eliminar######################################################
${Iconoeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[11]
${Si}    xpath=//span[contains(.,'Sí')]
################################Filtros########################################################
${Campo_filtro_sucursal}    xpath=//div[2]/div/div/div/input 
${Guadalajara}    Guadalajara
${Campo_filtro_CIS}    xpath=//td[2]/div/div[2]/div/div/div/input
${CIS_GOB_CURIEL}    CIS L
${Campo_filtro_tipo_equipo}    xpath=//td[4]/div/div[2]/div/div/div/input
${SET_TOPS}    SET TOPS
${Campo_filtro_articulo}    xpath=//td[5]/div/div[2]/div/div/div/input
${DPX110}    DPX110    
${Campo_filtro_maxima}    xpath=//td[9]/div/div[2]/div/div/div/input
${Campo_filtro_usuario}    xpath=//td[6]/div/div[2]/div/div/div/input    
${softteck01}    Softteck01
${Campo_filtro_minima}    xpath=//td[9]/div/div[2]/div/div/div/input   
${16}    16
${40}    40

*** Test Cases ***
#Función para la espera de los elementos
Ingresar usuario
    [Documentation]    Validacion de usuario
    [Tags]    test_uno
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla catalogo de transportistas
    [Documentation]    Pantalla catalogo de transprtistas
    [Tags]    test_dos
    Operaciones equipos
    Minimo y maximo de CIS

Nuevo registro
    [Documentation]    Nuevo registro
    [Tags]    test_tres
    Registro nuevo

Registro repetido
    [Documentation]    Registro repetido
    [Tags]    test_cuatro
    Registro nuevo
    #Icono cancelar

Editar registro
    [Documentation]    Editar repetido
    [Tags]    test_cinco
    Editar registro

Eliminar registro
    [Documentation]    Eliminar registro
    [Tags]    test_seis
    Eliminar registro

Filtros
    [Documentation]    Filtros
    [Tags]    test_siete
    Filtro sucursal
    Filtro CIS
    Filtro tipo equipo
    Filtro articulo
    Filtro usuario
    Filtro minima
    Filtro maxima

*** Keywords ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Sleep    5s
    Click Element   name:button

Operaciones equipos
    Sleep    10s
    Click element  ${Operacionesequipos}

Minimo y maximo de CIS
    Sleep    5s
    Scroll Element Into View    ${Minimo y maximo de cis}
    Wait Until Element Is Visible    ${Minimo y maximo de cis}
    Click element  ${Minimo y maximo de cis}

Registro nuevo    
    Sleep    5s
    Click Element    ${Icon_add}
    #Wait Until Element Is Visible    ${Sucursales}
    Sleep    5s
    Click Element    ${Sucursales}
    Wait Until Element Is Visible    ${Sucursal}
    Click Element    ${Sucursal}
    Wait Until Element Is Visible    ${Todos_Cis}
    Click Element    ${Todos_Cis}
    Wait Until Element Is Visible    ${Cis}
    Click Element    ${Cis}
    Wait Until Element Is Visible    ${Checkbox_es_articulo}
    Click Element    ${Checkbox_es_articulo}
    Sleep    5s
    Click Element    ${Checkbox_es_articulo}
    Wait Until Element Is Visible    ${Tipos_equipos}
    Click Element    ${Tipos_equipos}
    Wait Until Element Is Visible    ${Equipo}
    Click Element    ${Equipo}
    Wait Until Element Is Visible    ${Articulos}
    Click Element    ${Articulos}
    Sleep    7s
    Click Element    ${Articulo}
    Sleep    5s
    Scroll Element Into View    ${Campomaxima}
    Input Text    ${Campominima}    ${Minima}
    Input Text    ${Campomaxima}    ${Maxima}
    Sleep    10s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    5s
    Click Element    ${Icono_cancelar}

Editar registro
    Sleep    5s
    Click Element    ${Icono_editar}
    Sleep    5s
    Click Element    ${Sucursales}
    Wait Until Element Is Visible    ${Sucursal_tonala}
    Click Element    ${Sucursal_tonala}
    Wait Until Element Is Visible    ${Todos_Cis}
    Click Element    ${Todos_Cis}
    Wait Until Element Is Visible    ${Cis_walmart}
    Click Element    ${Cis_walmart}
    Sleep    10s
    Click Element    ${Iconoguardar}

Eliminar registro
    Sleep    5s
    Click Element    ${Iconoeliminar}
    Sleep    5s
    Click Element    ${Si}

Filtro sucursal
    Sleep    5s
    Input Text    ${Campo_filtro_sucursal}    ${Guadalajara}
    Sleep    7s
    Clear Element Text    ${Campo_filtro_sucursal}

Filtro CIS
    Sleep    5s
    Input Text    ${Campo_filtro_CIS}    ${CIS_GOB_CURIEL}
    Sleep    7s
    Clear Element Text    ${Campo_filtro_CIS}

Filtro tipo equipo
    Sleep    5s
    Input Text    ${Campo_filtro_tipo_equipo}    ${SET_TOPS}
    Sleep    7s
    Clear Element Text    ${Campo_filtro_tipo_equipo}

Filtro articulo
    Sleep    5s
    Input Text    ${Campo_filtro_articulo}    ${DPX110}
    Sleep    7s
    Clear Element Text    ${Campo_filtro_articulo}

Filtro usuario
    Sleep    7s
    Scroll Element Into View    ${Campo_filtro_maxima}
    Wait Until Element Is Visible    ${Campo_filtro_usuario}
    Input Text    ${Campo_filtro_usuario}    ${softteck01}
    Sleep    7s
    Clear Element Text    ${Campo_filtro_usuario}

Filtro minima
    Sleep    5s
    Input Text    ${Campo_filtro_minima}    ${16}
    Sleep    7s
    Clear Element Text    ${Campo_filtro_minima}

Filtro maxima
    Sleep    5s
    Input Text    ${Campo_filtro_maxima}    ${40}
    Sleep    7s
    Clear Element Text    ${Campo_filtro_maxima}
