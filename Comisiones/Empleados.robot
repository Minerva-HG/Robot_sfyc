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
########################Pantalla regiones############################################
${Empleados}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]/ul/li[8]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Comisiones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li[1]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
#######################Filtros############################################################
${Filtroensfyc}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-empleado-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[1]/div[1]/span[2]
${Verdadero}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Botonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Campofiltronombre}    xpath=(//input[contains(@autocomplete,'off')])[2]
${Nombrehafiltrar}    Alex Ramirez
${Campofiltrocorreo}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Correohafiltrar}    afuentes@megacable.com.mx    
${Campofiltropuesto}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Puestohafiltrar}    ADMIN
${Campofiltrojefeinmediato}    xpath=//input[contains(@inputmode,'decimal')]
${Jefeinmediatohafiltrar}    1
${Campofiltrodepartamento}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Departamentohafiltrar}    COORPORATIVO   
${Campoofiltroficina}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Oficinahafiltrar}    COORPORATIVO
#########################Agregar empleado############################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${EnSfyc}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Camponombre}    xpath=(//input[contains(@autocomplete,'off')])[9]
${Nombrenuevo}    Edgar Vazquez    
${Campocorreo}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Correo}    Edvaz@megacable.com.mx
${Campopuesto}    xpath=(//input[contains(@autocomplete,'off')])[11]
${Puesto}    SUP
${Campojefeinmediato}    xpath=(//input[contains(@autocomplete,'off')])[12]
${Jefeinmediato}    1
${Campodepartamento}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Departamento}    INFRAESTRUCTURA    
${Campooficina}    xpath=(//input[contains(@autocomplete,'off')])[14]
${Oficina}    COORPORATIVO    
${Campofechabaja}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3] 
########################Icono guardar###########################################################   
${Iconoguardar}    xpath=(//a[@title='Guardar'])[2]
#######################Editar empleado########################################################
${Iconoeditar}    xpath=(//a[contains(@aria-label,'Modificar')])[4]
${Nombreeditado}    Alfredo Espinoza 
${Correoeditado}    Alfes@megacable.com.mx
${Puestoeditado}    SOP
${Jefeinmediatoeditado}    1
${Departamentoeditado}    SOPORTE
${Oficinaeditada}    CORPORATIVO
##########################Icono cancelar##############################################################
${Iconocancelar}    xpath=(//a[contains(@aria-label,'Cancelar')])[2]
##########################Eliminar empleado####################################################
${Iconoeliminar}    xpath=(//a[contains(@aria-label,'Eliminar')])[4]
${Si}    xpath=//span[contains(.,'Sí')]

*** Test Cases ***
User and Screen empleados
    Validacion usuarios

Icon actualizar
    Icono actualizar
    
Filters
    Filtro en SFYC
    Filtro nombre
    Filtro correo
    Filtro puesto
    Filtro jefe inmediato
    Filtro departamento
    Filtro oficina

Add empleado
    Agregar un empleado

Icon guardar
    Icono guardar

Repeated records
    Sleep    7s
    Agregar un empleado
    Icono guardar

Icon cancelar
    Icono cancelar

Edit empleado
    Editar un empleado

Delete empleado
    Eliminar registro


*** Keywords ***
Validacion usuarios
    FOR    ${counter}    IN RANGE    1     5 
    #FOR    ${counter}    IN RANGE    1     2
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
        Sleep    5s
        Scroll Element Into View    ${Empleados}
        Sleep    5s  
        Wait Until Element Is Visible    ${Empleados}
        Click Element    ${Empleados}
    IF    ${counter} <= ${3}
        Sleep    10s
        Close Browser
    END
   END

F_scroll
    [Documentation]
    [Arguments]    ${x}    ${y}
    execute javascript    window.scrollTo(${x},${y})

Icono actualizar
    Wait Until Element Is Visible   ${Iconoactualizar}
    Click Element   ${Iconoactualizar}

Filtro en SFYC
    Sleep    15s
    Click Element    ${Filtroensfyc}
    Wait Until Element Is Visible    ${Verdadero}
    Click Element    ${Verdadero}
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}
    Sleep    7s
    Click Element    ${Filtroensfyc}
    Wait Until Element Is Visible    ${Verdadero}
    Click Element    ${Verdadero}
    Wait Until Element Is Visible    ${Botonaceptar}
    Click Element    ${Botonaceptar}

Filtro nombre
    Sleep    5s
    Wait Until Element Is Visible    ${Campofiltronombre}
    Input Text    ${Campofiltronombre}    ${Nombrehafiltrar}
    Sleep    7s    
    Clear Element Text    ${Campofiltronombre}

Filtro correo
    Sleep    5s
    Wait Until Element Is Visible    ${Campofiltrocorreo}
    Input Text    ${Campofiltrocorreo}    ${Correohafiltrar}
    Sleep    7s    
    Clear Element Text    ${Campofiltrocorreo}

Filtro puesto
    Sleep    5s
    Wait Until Element Is Visible    ${Campofiltropuesto}
    Input Text    ${Campofiltropuesto}    ${Puestohafiltrar}
    Sleep    7s    
    Clear Element Text    ${Campofiltropuesto}

Filtro jefe inmediato
    Sleep    5s
    Wait Until Element Is Visible    ${Campofiltrojefeinmediato}
    Input Text    ${Campofiltrojefeinmediato}    ${Jefeinmediatohafiltrar}
    Sleep    7s    
    Clear Element Text    ${Campofiltrojefeinmediato}

Filtro departamento
    Sleep    5s
    Wait Until Element Is Visible    ${Campofiltrodepartamento}
    Input Text    ${Campofiltrodepartamento}    ${Departamentohafiltrar}
    Sleep    7s    
    Clear Element Text    ${Campofiltrodepartamento}

Filtro oficina
    Sleep    5s
    Wait Until Element Is Visible    ${Campoofiltroficina}
    Input Text    ${Campoofiltroficina}    ${Oficinahafiltrar}
    Sleep    7s    
    Clear Element Text    ${Campoofiltroficina}

Agregar un empleado
    Wait Until Element Is Visible    ${Iconoagregar}
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${EnSfyc}
    Click Element    ${EnSFyc}
    Wait Until Element Is Visible    ${Camponombre}
    Input Text    ${Camponombre}    ${Nombrenuevo}
    Wait Until Element Is Visible    ${Campocorreo}
    Input Text    ${Campocorreo}    ${Correo}
    Wait Until Element Is Visible    ${Campopuesto}
    Input Text    ${Campopuesto}    ${Puesto}
    Wait Until Element Is Visible    ${Campojefeinmediato}
    Input Text    ${Campojefeinmediato}    ${Jefeinmediato}
    Wait Until Element Is Visible    ${Campodepartamento}
    Input Text    ${Campodepartamento}    ${Departamento}
    Wait Until Element Is Visible    ${Campooficina}
    Input Text    ${Campooficina}    ${Oficina}
    Scroll Element Into View    ${Campofechabaja}
    Sleep    5s

Icono guardar
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Editar un empleado
    Wait Until Element Is Visible    ${Iconoeditar}
    Click Element    ${Iconoeditar}
    Input Text    ${Camponombre}    ${Nombreeditado}
    Wait Until Element Is Visible    ${Campocorreo}
    Input Text    ${Campocorreo}    ${Correoeditado}
    Wait Until Element Is Visible    ${Campopuesto}
    Input Text    ${Campopuesto}    ${Puestoeditado}
    Wait Until Element Is Visible    ${Campojefeinmediato}
    Input Text    ${Campojefeinmediato}    ${Jefeinmediatoeditado}
    Wait Until Element Is Visible    ${Campodepartamento}
    Input Text    ${Campodepartamento}    ${Departamentoeditado}
    Wait Until Element Is Visible    ${Campooficina}
    Input Text    ${Campooficina}    ${Oficinaeditada}
    Sleep    5s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    7s
    Click Element    ${Iconocancelar}

Eliminar registro    
    Sleep    5s
    Click Element    ${Iconoeliminar}
    Sleep    5s
    Click Element    ${Si}