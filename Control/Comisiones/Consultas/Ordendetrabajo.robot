** Settings ***
Documentation     TrabajosAutorizados
Library    SeleniumLibrary

*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome 
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.dev-cluster.sfycnextgen.com.mx/ui
@{USERL}=    Create List     EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
########################Pantalla ordenes de trabajo############################################
${Gruposdetrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[3]/ul/li[6]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Comisiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]
${Consultas}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[9]
${Ordenesdetrabajo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[9]/ul/li
#######################Icono fecha######################################################################################
${Iconofechadesde}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-orden-trabajo-grid/div/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[1]/dx-date-box/div[1]/div/div[2]/div[2]/dx-button/div/i
${Fechadesde}    xpath=(//span[contains(.,'1')])[1]
${Iconofechahasta}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-orden-trabajo-grid/div/dx-data-grid/div/div[4]/div/div/div[1]/div/div/div[2]/dx-date-box/div/div/div[2]/div[2]/dx-button/div/i
${Fechahasta}    xpath=(//span[contains(.,'7')])[16]
########################Botón buscar############################################################################################
${Botonbuscar}    xpath=//span[contains(.,'Buscar')]
###########################Icono excel###############################################################################
${Iconoexcel}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
###########################Icono actualizar##################################################################################
${Iconoactualizar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-orden-trabajo-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i
###########################Scroll##############################################################################################
${Servicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[5]

*** Test Cases ***
User and Screen ordenes de trabajo
    [Documentation]    Validacion de usuarios
    [Tags]    test_uno
    Validacion usuarios

Icono fecha
    [Documentation]    Icono fecha
    [Tags]    test_dos
    Fecha desde
    Fecha hasta

Boton buscar
    [Documentation]    Boton buscar
    [Tags]    test_tres
    Boton buscar

Icono excel
    [Documentation]    Icono excel
    [Tags]    test_cuatro
    Icono excel

Icono actualizar
    [Documentation]    Icono actualizar
    [Tags]    test_cinco
    Icono actualizar

*** Keywords ***
Validacion usuarios
    #FOR    ${counter}    IN RANGE    1     5 
    FOR    ${counter}    IN RANGE    1     2
        Open Browser    ${Pagina}    ${Navegador}    options=add_argument("--ignore-certificate-errors")
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text     name:Password     ${passL}[${counter}]
        Wait Until Page Contains Element    ${Botondominio}
        #Click Element    ${Botondominio}
        #Click Element   ${SFyC}
        Click Element    name:button
        Sleep    20s
        Click Element    ${Bottonmenu}
        Wait Until Page Contains Element    ${Comisiones}
        Click Element    ${Comisiones}
        Sleep    5s
        Scroll Element Into View    ${Servicios}
        Wait Until Element Is Visible    ${Consultas}
        Click Element    ${Consultas}
        Sleep    5s  
        Wait Until Element Is Visible    ${Ordenesdetrabajo}
        Click Element    ${Ordenesdetrabajo}
    #IF    ${counter} <= ${3}
        #Sleep    10s
        #Close Browser
    #END
   END

Fecha desde
    Sleep    5s
    Click Element    ${Iconofechadesde}
    Sleep    5s
    Click Element    ${Fechadesde}

Fecha hasta
    Sleep    5s
    Click Element    ${Iconofechahasta}
    Sleep    5s
    Click Element    ${Fechahasta}

Boton buscar
    Sleep    5s
    Click Element    ${Botonbuscar}

Icono excel
    Sleep    5s
    Click Element    ${Iconoexcel}

Icono actualizar
    Sleep    5s
    Click Element    ${Iconoactualizar}