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
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui
@{USERL}=    Create List     joriospe    GFUENTES    JECHEGOLLEN    JHERVERTH    
@{passL}=    Create List     Megajos202    Cisco2019    MegaEne1    sfdg3534
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#########################Screen catalogo de proveedores#################################################################################################
${Botoncontrol}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]
${Operaciones}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li
${Comisiones_a_externos}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]
${Proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]
${Catalogo_proveedores}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[4]/ul/li/ul/li[1]/ul/li[4]/ul/li[1]
${Control_de_comisiones}    xpath=//span[contains(.,'Control de Comisiones')]
##########################Filters#########################################################
${Filtrodescripcion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr/td[2]/div[1]
${Descripcion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Boton_aceptar}    xpath=//span[contains(.,'Aceptar')]
${Filtrociclo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr/td[3]/div[1]
${Ciclo_ha_filtrar}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Filtrorazonsocial}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr/td[4]/div[1]/span[2]
${Razonsocial}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[4]
${Filtrorfc}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr/td[5]/div[1]/span[2]
${RFC}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Filtrodomicilio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr/td[6]/div[1]/span[2]
${Domicilio}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[5]
${Filtroclave}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr/td[7]/div[1]/span[2]
${Clave}    xpath=(//span[@class='dx-checkbox-icon'])[5]
${Filtroestatus}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[5]/div[2]/table/tbody/tr/td[8]/div[1]/span[2] 
${Estatus}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
############################Add proveedor#####################################################
${Iconoaddproveedor}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Fielddescription}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Descriptionnew}    ATRA
${Cicloscontainer}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[3]/div/div/app-ciclo-dropdown/dx-drop-down-box/div[1]/div/div[1]/input
${Ciclo}    xpath=//td[contains(.,'Quincenal')]
${Fieldrazonsocial}    xpath=(//input[@autocomplete='off'])[10]
${Razonsocialnew}    ATRA
${Fieldrfc}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-proveedor-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[5]/div/div/div/div[1]/input
${RFCnew}    HKOS3303333L3
${Fielddomicilio}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-proveedor-grid/div/dx-data-grid/div/div[6]/div[1]/div/div/div/table/tbody/tr[1]/td[6]/div/div/div/div[1]/input
${Domicilionew}    Real de los toronjos N4023
${Estatuscontainer}    xpath=//input[contains(@aria-haspopup,'listbox')]
${Estatusnew}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'Activo')]
############################Icono guardar############################################################
${Iconoguardar}    xpath=(//a[contains(@title,'Guardar')])[2]
############################Icono cancelar###########################################################
${Iconocancelar}    xpath=(//a[contains(@title,'Cancelar')])[2]
############################Icono actualizar#########################################################
${Iconoactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
###########################Repetead records############################################################
${Ciclosemanal}    xpath=//td[@aria-describedby='dx-col-23'][contains(.,'Semanal')]
###########################Checkbox mostrar pendientes de asignar a una cuadrilla#######################
${Checkboxmostrarpendientesdeasignaraunacuadrilla}    xpath=//span[@class='dx-checkbox-text'][contains(.,'Mostrar pendientes de asignar a una cuadrilla')]
###########################Caracteres no validos########################################################
${Caracteresinvalidos}    $%&/@        
#############################RFC Invalido####################################################################
${RFCinvalido}    PFH8792338P3DE
#################################Icono editar#######################################################################
${Iconoedit}    xpath=(//a[contains(@aria-label,'Modificar')])[11]
${Descriptionedit}    PRCT
${Razonsocialedit}    PRCT
${RFCedit}    HKOS2202222L1
${Domicilioedit}    Niños heroes N1306
###############################Cuadrillas en las que esta asignada el proveedor##############################################
${Proveedor}    xpath=(//div[contains(@class,'dx-datagrid-group-closed')])[2]
${Cerrargridproveedor}    xpath=//div[contains(@class,'dx-datagrid-group-opened')]
################################Delete proveedor#################################################################################
${Deleteproveedor}    xpath=(//a[contains(@aria-label,'Eliminar')])[12]
${Si}    xpath=//div[@class='dx-button-content'][contains(.,'Sí')]
#################################Export data cuadrillas#############################################################################
${Iconoexport}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
#################################Edit cuadrilla#####################################################################################
${Iconoeditcuadrillas}    xpath=(//a[contains(@aria-label,'Modificar')])[20]
${Proveedorescuadrilla}    xpath=(//input[contains(@autocomplete,'off')])[9]
${Proveedornew}    xpath=//td[contains(.,'AQUA INFRAESTRUCTURA,SRL de CV')]   
${Deleterecord}    xpath=(//a[contains(@aria-label,'Eliminar')])[16]
##################################Icono colapsar#####################################################################################
${Icono_colapsar}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-proveedor-grid/div/dx-data-grid/div/div[6]/div[2]/table/tbody/tr[1]/td[1]

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validation user

Buscar
    Filtro descripcion
    Filtro ciclo
    Filtro razon social
    Filtro rfc
    Filtro domicilio
    Filtro clave
    #Filtro estatus
    
Add proveedor
    Sleep    7s
    Icon + to add proveedor
    Description
    Ciclo
    Razon social
    RFC
    Domicilio
    Estatus
    Icono guardar

Icono actualizar
    Icono actualizar

Repeated records
    Sleep    7s
    Icon + to add proveedor
    Description
    Ciclo
    Razon social
    RFC
    Domicilio
    Estatus
    Icono guardar

Icono cancelar
    Sleep    7s
    Icono cancelar

Empty fields
    Empty fields

Invalid characters
    Invalid characters

Column RFC
    Column RFC

Edit proveedor
    Edit proveedor

Delete proveedor
    Delete proveedor
    
Cuadrillas en las que esta asignada el proveedor
    Cuadrillas en las que esta asignada el proveedor

Export data cuadrillas
    Export data cuadrillas

Edit cuadrilla
    Edit cuadrilla

Colapsar proveedores
    Colapsar

Mostrar pendientes
    Checkbox Mostrar pendientes de asignar una cuadrilla

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
        Scroll Element Into View    ${Catalogo_proveedores}
        Sleep    3s
        Click Element    ${Catalogo_proveedores}
    #IF    ${counter} <= ${7}
        #Sleep    10s
        #Close Browser
    #END
   END


Filtro descripcion
    Wait Until Element Is Visible    ${Filtrodescripcion} 
    Click Element    ${Filtrodescripcion}   
    Wait Until Element Is Visible    ${Descripcion}
    Click Element    ${Descripcion}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtrodescripcion} 
    Click Element    ${Filtrodescripcion}   
    Wait Until Element Is Visible    ${Descripcion}
    Click Element    ${Descripcion}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Filtro ciclo
    Wait Until Element Is Visible    ${Filtrociclo} 
    Click Element    ${Filtrociclo}   
    Wait Until Element Is Visible    ${Ciclo_ha_filtrar}
    Click Element    ${Ciclo_ha_filtrar}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtrociclo} 
    Click Element    ${Filtrociclo}   
    Wait Until Element Is Visible    ${Ciclo_ha_filtrar}
    Click Element    ${Ciclo_ha_filtrar}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Filtro razon social
    Wait Until Element Is Visible    ${Filtrorazonsocial} 
    Click Element    ${Filtrorazonsocial}   
    Wait Until Element Is Visible    ${Razonsocial}
    Click Element    ${Razonsocial}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtrorazonsocial} 
    Click Element    ${Filtrorazonsocial}   
    Wait Until Element Is Visible    ${Razonsocial}
    Click Element    ${Razonsocial}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar} 

Filtro rfc
    Wait Until Element Is Visible    ${Filtrorfc} 
    Click Element    ${Filtrorfc}   
    Wait Until Element Is Visible    ${RFC}
    Click Element    ${RFC}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtrorfc} 
    Click Element    ${Filtrorfc}   
    Wait Until Element Is Visible    ${RFC}
    Click Element    ${RFC}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar} 

Filtro domicilio
    Sleep    3s
    Scroll Element Into View    ${Filtroestatus}
    Sleep    10s    
    Wait Until Element Is Visible    ${Filtrodomicilio} 
    Click Element    ${Filtrodomicilio}   
    Wait Until Element Is Visible    ${Domicilio}
    Click Element    ${Domicilio}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtrodomicilio} 
    Click Element    ${Filtrodomicilio}   
    Wait Until Element Is Visible    ${Domicilio}
    Click Element    ${Domicilio}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Filtro clave
    Wait Until Element Is Visible    ${Filtroclave} 
    Click Element    ${Filtroclave}   
    Wait Until Element Is Visible    ${Clave}
    Click Element    ${Clave}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtroclave} 
    Click Element    ${Filtroclave}   
    Wait Until Element Is Visible    ${Clave}
    Click Element    ${Clave}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}

Filtro estatus
    Wait Until Element Is Visible    ${Filtroestatus} 
    Click Element    ${Filtroestatus}   
    Wait Until Element Is Visible    ${Estatus}
    Click Element    ${Estatus}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtroestatus} 
    Click Element    ${Filtroestatus}   
    Wait Until Element Is Visible    ${Estatus}
    Click Element    ${Estatus}
    Wait Until Element Is Visible    ${Boton_aceptar}
    Click Element    ${Boton_aceptar}
    

Icon + to add proveedor
    Sleep    6s
    Click Element    ${Iconoaddproveedor}

Description
    Wait Until Element Is Visible    ${Fielddescription}
    Input Text    ${Fielddescription}    ${Descriptionnew}

Ciclo
    Wait Until Element Is Visible    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Sleep    6s
    Click Element    ${Ciclo}

Razon social
    Wait Until Element Is Visible    ${Fieldrazonsocial}
    Input Text    ${Fieldrazonsocial}    ${Razonsocialnew}

RFC
    Wait Until Element Is Visible    ${Fieldrfc}
    Input Text    ${Fieldrfc}    ${RFCnew}

Domicilio
    Wait Until Element Is Visible    ${Fielddomicilio}    
    Input Text    ${Fielddomicilio}    ${Domicilionew}

Estatus
    Wait Until Element Is Visible    ${Estatuscontainer}    
    Click Element    ${Estatuscontainer}
    Sleep    7s
    Click Element    ${Estatusnew}

Icono guardar
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Icono cancelar
    Wait Until Element Is Visible    ${Iconocancelar}
    Click Element    ${Iconocancelar}

Empty fields
    Sleep    6s
    Click Element    ${Iconoaddproveedor}
    Wait Until Element Is Visible    ${Fielddescription}
    Input Text    ${Fielddescription}    ${Descriptionnew}
    Wait Until Element Is Visible    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Sleep    6s
    Click Element    ${Ciclo}
    Wait Until Element Is Visible    ${Fieldrazonsocial}    
    Input Text    ${Fieldrazonsocial}    ${Razonsocialnew}
    Wait Until Element Is Visible    ${Fieldrfc}    
    Input Text    ${Fieldrfc}    ${RFCnew}
    Wait Until Element Is Visible    ${Estatuscontainer}
    Click Element    ${Estatuscontainer}
    Sleep    7s
    Click Element    ${Estatusnew}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}
    Wait Until Element Is Visible    ${Fielddomicilio}
    Click Element    ${Fielddomicilio}
    Sleep    7s
    Click Element    ${Iconocancelar}

Icono actualizar
    Sleep    5s
    Click Element    ${Iconoactualizar}

Ciclo semanal
    Wait Until Element Is Visible    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Sleep    6s
    Click Element    ${Ciclosemanal}

Checkbox Mostrar pendientes de asignar una cuadrilla
    Wait Until Element Is Visible    ${Checkboxmostrarpendientesdeasignaraunacuadrilla}
    Click Element    ${Checkboxmostrarpendientesdeasignaraunacuadrilla}

Invalid characters
    Sleep    6s
    Click Element    ${Iconoaddproveedor}
    Wait Until Element Is Visible    ${Fielddescription}
    Input Text    ${Fielddescription}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Click Element    ${Cicloscontainer}
    Sleep    6s
    Click Element    ${Ciclo}
    Wait Until Element Is Visible    ${Fieldrazonsocial}
    Input Text    ${Fieldrazonsocial}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Fieldrfc}
    Input Text    ${Fieldrfc}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Fielddomicilio}
    Input Text    ${Fielddomicilio}    ${Caracteresinvalidos}
    Wait Until Element Is Visible    ${Estatuscontainer}
    Click Element    ${Estatuscontainer}
    Sleep    7s
    Click Element    ${Estatusnew}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}
    Wait Until Element Is Visible    ${Fielddescription}
    Click Element    ${Fielddescription}
    Sleep    7s
    Click Element    ${Iconocancelar}
    
Column RFC
    Wait Until Element Is Visible    ${Iconoaddproveedor}
    Click Element    ${Iconoaddproveedor}
    Wait Until Element Is Visible    ${Fieldrfc}
    Input Text    ${Fieldrfc}    ${RFCinvalido}
    Wait Until Element Is Visible    ${Fielddescription}    
    Click Element    ${Fielddescription}
    Wait Until Element Is Visible    ${Fieldrfc}
    Click Element    ${Fieldrfc}
    Sleep    5s
    Click Element    ${Iconocancelar}

Edit proveedor
    Sleep    5s
    Click Element    ${Iconoedit}
    Wait Until Element Is Visible    ${Fielddescription}
    Input Text    ${Fielddescription}    ${Descriptionedit}
    Wait Until Element Is Visible    ${Fieldrazonsocial}    
    Input Text    ${Fieldrazonsocial}    ${Razonsocialedit}
    Wait Until Element Is Visible    ${Fieldrfc}
    Input Text    ${Fieldrfc}    ${RFCedit}
    Wait Until Element Is Visible    ${Fielddomicilio}
    Input Text    ${Fielddomicilio}    ${Domicilioedit}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Delete proveedor
    Sleep    5s
    Click Element    ${Deleteproveedor}
    Wait Until Element Is Visible    ${Si}
    Click Element    ${Si}
    
Cuadrillas en las que esta asignada el proveedor
    Sleep    5s
    Click Element    ${Proveedor}

Export data cuadrillas
    Wait Until Element Is Visible    ${Iconoexport}
    Click Element    ${Iconoexport}

Edit cuadrilla
    Sleep    5s
    Click Element    ${Iconoeditcuadrillas}
    Wait Until Element Is Visible    ${Proveedorescuadrilla}
    Click Element    ${Proveedorescuadrilla}
    Sleep    5s    
    Click Element    ${Proveedornew}
    Wait Until Element Is Visible    ${Iconoguardar}
    Click Element    ${Iconoguardar}

Delete record
    Sleep    5s
    Click Element    ${Deleterecord}
    Sleep    3s
    Click Element    ${Si}
    Sleep    3s
    Click Element    ${Cerrargridproveedor}

Colapsar
    Wait Until Element Is Visible    ${Icono_colapsar}
    Click Element    ${Icono_colapsar}
