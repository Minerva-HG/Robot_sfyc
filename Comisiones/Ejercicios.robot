** Settings ***
Documentation    Automatizacion de EJERCICIOS     
Library    SeleniumLibrary
Library    XML    

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
########################Pantalla ejercicios############################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Ejercicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[7]
${Ejercicios}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[7]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros########################################################
${Filtroaño}    xpath=//input[contains(@max,'32767')]
${Año}    2023
${Filtroproveedor}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Proveedor}    IVAN ROGELIO PALAFOX GUZMAN	   
${Filtropresupuestoinicial}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Presupuestoinicial}    0  
${Filtroejercicio}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Ejercicio}    0   
${Fechacontrol}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-ejercicio-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[2]/td[5]/div/div[2]/div/div/div/div[2]/div[2]/div/div
${Fecha}    xpath=(//span[contains(.,'1')])[1]
#####################Agregar ejercicio##################################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campoaño}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Campoproveedor}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Proveedornuevo}    xpath=//td[contains(.,'ADAR SERVICIOS Y PROYECTOS SA DE CV')]
${Campopresupuestoinicial}    xpath=(//input[contains(@autocomplete,'off')])[9]
${Presupuestoinicialnuevo}    214748
${Campoejercicio}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Ejercicionuevo}    120000
${Campofechacontrol}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Fechacontrol}    xpath=//div[@id='dx-b16eb141-f354-280c-cf8b-7b8d2752135c']/div/div/div/div/table/tbody/tr[2]/td[4]/span
####################################Icono cancelar##############################################################
${Iconocancelar}    xpath=(//a[contains(@class,'dx-link dx-link-cancel dx-icon-revert dx-link-icon')])[2]
#####################################Icono guardar############################################################
${Iconoguardar}    xpath=(//a[contains(@class,'dx-link dx-link-save dx-icon-save dx-link-icon')])[2]
#####################################Editar registro########################################################
${Iconoeditarregistro}    xpath=(//a[@aria-label='Modificar'])[4]
${Presupuestoinicialeditado}    8970    
${Ejercicioeditado}    9768    
${Presupuestoinicialregistro}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Campoejercicioregistro}    xpath=(//input[contains(@autocomplete,'off')])[8]
#####################################Icono eliminar#######################################################
${Iconoeliminar}    xpath=(//a[@aria-label='Eliminar'])[4]
${SI}    xpath=//span[contains(.,'Sí')]
####################################registros repetidos###########################################################
${Proveedorrepetido}    xpath=//td[contains(.,'ADAR SERVICIOS Y PROYECTOS SA DE CV')] 


*** Test Cases ***
Usuarios con permisos a la pantalla 
    Validacion usuarios

Icono actualizar
    Icono actualizar

Buscar Ejercicios
    Filtro año
    Filtro proveedor
    Filtro presupuesto incial
    Filtro ejercicio
    #Filtro fecha control

Agregar Ejercicios
    Agregar ejercicio

Registros repetidos
    #Agregar ejercicio
    Agregar ejercicio repetido

Icono cancelar
    Icono cancelar
    
Editar Ejercicios
    Editar ejercicio
    
Eliminar Ejercicios
    Eliminar ejercicio

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
        Scroll Element Into View    ${Ejercicios}
        Sleep    3s
        Click Element    ${Ejercicios}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END

Icono actualizar
    Wait Until Element Is Visible    ${Iconoactualizar}
    Click Element    ${Iconoactualizar}

Filtro año
    Sleep    10s
    Input Text    ${Filtroaño}    ${Año}
    Sleep    5s
    Clear Element Text    ${Filtroaño}

Filtro proveedor
    Wait Until Element Is Visible    ${Filtroproveedor}
    Input Text    ${Filtroproveedor}    ${Proveedor}
    Sleep    5s
    Clear Element Text    ${Filtroproveedor}

Filtro presupuesto incial
    Wait Until Element Is Visible    ${Filtropresupuestoinicial} 
    Input Text    ${Filtropresupuestoinicial}    ${Presupuestoinicial}
    Sleep    5s
    Clear Element Text    ${Filtropresupuestoinicial}

Filtro ejercicio
    Wait Until Element Is Visible    ${Filtroejercicio}
    Input Text    ${Filtroejercicio}    ${Ejercicio}
    Sleep    5s
    Clear Element Text    ${Filtroejercicio}

Filtro fecha control
    Wait Until Element Is Visible    ${Fechacontrol}
    Click Element    ${Fechacontrol}
    Sleep    5s
    Click Element    ${Fecha}

Agregar ejercicio
    Sleep    10s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Set Selenium Implicit Wait    20
    Wait Until Element Is Visible    ${Proveedornuevo}
    Click Element    ${Proveedornuevo}
    Wait Until Element Is Visible    ${Campoejercicio}
    Input Text    ${Campoejercicio}    ${Ejercicionuevo}
    Press Keys    ${Campofechacontrol}    ENTER  
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}  
    #Sleep    30s
    #Click Element When Visible    ${Iconocancelar}

Icono cancelar
    Sleep    30s
    Click Element    ${Iconocancelar}

Editar ejercicio
    Sleep    5s
    Click Element    ${Iconoeditarregistro}
    Wait Until Element Is Visible    ${Presupuestoinicialregistro}
    Input Text    ${Presupuestoinicialregistro}    ${Presupuestoinicialeditado}
    Wait Until Element Is Visible    ${Campoejercicioregistro}
    Input Text    ${Campoejercicioregistro}    ${Ejercicioeditado}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}
    
Eliminar ejercicio
    Sleep    5s
    Click Element    ${Iconoeliminar}
    Sleep    5s
    Click Element    ${SI}

Agregar ejercicio repetido
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campoproveedor}
    Click Element    ${Campoproveedor}
    Set Selenium Implicit Wait    20
    #Sleep    15s
    Wait Until Element Is Visible    ${Proveedorrepetido}
    Click Element    ${Proveedorrepetido}
    Wait Until Element Is Visible    ${Campoejercicio}
    Input Text    ${Campoejercicio}    ${Ejercicionuevo}
    Press Keys    ${Campofechacontrol}    ENTER   
    Wait Until Element Is Visible    ${Iconoguardar} 
    Click Element    ${Iconoguardar} 
