** Settings ***
Documentation     Pruebas automatizadas contactos
Library    SeleniumLibrary
Library    XML    

** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${user}    xpath=//input[@id='Username']
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui    
${Navegador}    Chrome   
@{USERL}=    Create List     joriospe    #EZFLORES    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Megajos202    #Miranda2020    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
########################Pantalla contactos############################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Contactos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[8]
#######################Icono actualizar##################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
######################Filters##################################################################
${Filtroapellidopaterno}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Apellidopaterno}    PEREZ
${Filtroapellidomaterno}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Apellidomaterno}    LAGUNA	    
${Filtronombre}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Nombre}    ESTEBAN    
${Filtrotelefonocelular}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Telefonocelular}    3314216726    
${Filtrocorreo}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Correo}    112003300@megacable.com
${Filtroestatus}    xpath=(//input[contains(@autocomplete,'off')])[9]
${Estatus}    ACT
${Filtrofechacontrol}    xpath=//input[contains(@aria-expanded,'false')]
${Fechacontrol}    (//span[contains(.,'1')])[2]    
######################Agregar contacto##########################################################
${Iconoagregar}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campoapellidopaterno}    xpath=(//input[contains(@autocomplete,'off')])[12]   
${Apellidopaternonuevo}    ESQUIVIAS
${Campoapellidomaterno}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Apellidomaternonuevo}    HUERTA
${Camponombre}    xpath=(//input[contains(@autocomplete,'off')])[14]
${Nombrenuevo}    JONATHAN
${Campotelefonocelular}    xpath=(//input[contains(@autocomplete,'off')])[15]
${Telefonocelularnuevo}    33143177566    
${Campocorreo}    xpath=(//input[contains(@autocomplete,'off')])[16]
${Correonuevo}    223004400@megacable.com    
${Campoestatus}    xpath=//input[contains(@aria-haspopup,'listbox')]
${Estatusnuevo}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'ACT')]
${Campofechacontrol}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-contacto-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[8]/div/div/div[1]/div/div[2]/div[2]
${Fechacontrol}    xpath=(//span[contains(.,'2')])[32]
${Campofechacontroll}    xpath=//div[@class='dx-show-invalid-badge dx-datebox dx-textbox dx-texteditor dx-dropdowneditor-button-visible dx-editor-underlined dx-texteditor-empty dx-widget dx-visibility-change-handler dx-dropdowneditor dx-datebox-date dx-datebox-calendar dx-state-hover']//div[@class='dx-dropdowneditor-icon']
#########################Editar contacto####################################################################################################
${Iconoeditar}    xpath=(//a[@aria-label='Modificar'])[8]
${Apellidopaternoeditado}    PEREZ
${Apellidomaternoeditado}    PEREZ
${Nombreeditado}    MANUEL
${Telefonocelulareditado}    33474344446    
${Correoeditado}    cfuentes@megacable.com	    
${Iconoguardar}    xpath=(//a[contains(@class,'dx-link dx-link-save dx-icon-save dx-link-icon')])[2]
#########################Icono cancelar###########################################################################
${Iconocancelar}    xpath=(//a[contains(@class,'dx-link dx-link-cancel dx-icon-revert dx-link-icon')])[2]
#########################Delete from########################################################################
${Iconoeliminar}    xpath=(//a[@aria-label='Eliminar'])[8]
${SI}    xpath=//div[@class='dx-button-content'][contains(.,'Sí')]

*** Test Cases ***
Usuarios con permisos a la pantalla 
    Validacion usuarios

Icono actualizar
    Icono actualizar

Buscar Contactos
    Filtro apellido paterno
    Filtro apellido materno
    Filtro nombre
    #Filtro telefono celular
    Filtro correo
    Filtro estatus
    #Filtro fecha control

Agregar Contactos
    Contacto nuevo
    Icono guardar

Registros repetidos
    Contacto nuevo
    Icono guardar

Icono cancelar
    Icono cancelar

Editar Contactos
    Editar contacto

Eliminar Contactos
    Eliminar contacto


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
        Scroll Element Into View    ${Contactos}
        Sleep    3s
        Click Element    ${Contactos}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Icono actualizar
    Wait Until Element Is Visible    ${Iconoactualizar}    
    Click Element    ${Iconoactualizar}

Filtro apellido paterno
    Wait Until Element Is Visible    ${Filtroapellidopaterno}
    Input Text    ${Filtroapellidopaterno}    ${Apellidopaterno}
    Sleep    5s
    Clear Element Text    ${Filtroapellidopaterno}

Filtro apellido materno
    Wait Until Element Is Visible    ${Filtroapellidomaterno}
    Input Text    ${Filtroapellidomaterno}    ${Apellidomaterno}
    Sleep    5s
    Clear Element Text    ${Filtroapellidomaterno}

Filtro nombre
    Wait Until Element Is Visible    ${Filtronombre}
    Input Text    ${Filtronombre}    ${Nombre}
    Sleep    5s
    Clear Element Text    ${Filtronombre}

Filtro telefono celular
    Wait Until Element Is Visible    ${Filtrotelefonocelular} 
    Input Text    ${Filtrotelefonocelular}    ${Telefonocelular}
    Sleep    5s
    Clear Element Text    ${Filtrotelefonocelular}    

Filtro correo
    Wait Until Element Is Visible    ${Filtrocorreo}
    Input Text    ${Filtrocorreo}    ${Correo}
    Sleep    5s
    Clear Element Text    ${Filtrocorreo}

Filtro estatus
    Wait Until Element Is Visible    ${Filtroestatus}
    Input Text    ${Filtroestatus}    ${Estatus}
    Sleep    5s
    Clear Element Text    ${Filtroestatus}

Filtro fecha control
    Scroll Element Into View    ${Filtrofechacontrol}
    Sleep    5s
    Scroll Element Into View    ${Filtrofechacontrol}

Contacto nuevo
    Sleep    5s
    Click Element    ${Iconoagregar}
    Wait Until Element Is Visible    ${Campoapellidopaterno}
    Input Text    ${Campoapellidopaterno}    ${Apellidopaternonuevo}
    Wait Until Element Is Visible    ${Campoapellidomaterno}
    Input Text    ${Campoapellidomaterno}    ${Apellidomaternonuevo}
    Wait Until Element Is Visible    ${Camponombre}
    Input Text    ${Camponombre}    ${Nombrenuevo}
    Wait Until Element Is Visible    ${Campotelefonocelular}
    Input Text    ${Campotelefonocelular}    ${Telefonocelularnuevo}
    Sleep    3s
    Scroll Element Into View    ${Campofechacontrol}
    Sleep    3s
    Wait Until Element Is Visible    ${Campocorreo}
    Input Text    ${Campocorreo}    ${Correonuevo}
    Wait Until Element Is Visible    ${Campoestatus}
    Click Element    ${Campoestatus}
    Sleep    5s
    Click Element    ${Estatusnuevo}
    Sleep    5s
    Scroll Element Into View    ${Campofechacontrol}
    Sleep    5s
    Scroll Element Into View    ${Campofechacontrol}
    Sleep    3s
    Click Element    ${Campofechacontrol}
    Sleep    4s
    Press Keys    ${Campofechacontrol}    ENTER

Editar contacto
    Sleep    5s
    Click Element    ${Iconoactualizar}
    Sleep    5s
    Click Element    ${Iconoeditar}
    Wait Until Element Is Visible    ${Campoapellidopaterno}
    Input Text    ${Campoapellidopaterno}    ${Apellidopaternoeditado}
    Wait Until Element Is Visible    ${Campoapellidomaterno}
    Input Text    ${Campoapellidomaterno}    ${Apellidomaternoeditado}
    Wait Until Element Is Visible     ${Camponombre}
    Input Text    ${Camponombre}    ${Nombreeditado}
    Wait Until Element Is Visible    ${Campotelefonocelular}
    Input Text    ${Campotelefonocelular}    ${Telefonocelulareditado}
    Wait Until Element Is Visible    ${Campocorreo}
    Input Text    ${Campocorreo}    ${Correoeditado}
    Sleep    5s
    Click Element    ${Iconoguardar}

Icono cancelar
    Sleep    5s
    Click Element    ${Iconocancelar}

Eliminar contacto
    Sleep    5s
    Click Element   ${Iconoeliminar}
    Sleep    5s
    Click Element    ${SI}

Icono guardar
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}
