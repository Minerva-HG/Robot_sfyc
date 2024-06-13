*** Settings ***
Documentation    Bajas contables 
Library    SeleniumLibrary
Library    XML


*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #LUSANCHEZA    FCURIELF    MARAMIREZ    joriospe                                                                                                       
@{passL}=    Create List    Mega12345    #Enero.2028    Reforma191    Sainz123    Mega12345                                                                                                                                                                                                                                                                                                                                                                                                              
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#################Screen Bajas contables########################
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Botonbajascontables}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[14]
##########################Search#####################################
${Typeofequipment}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Equipment}    xpath=//td[contains(.,'CABLE MODEMS')]
${Checkboxsowall}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
${Iconcalendar}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Month}    xpath=//i[contains(@class,'dx-icon dx-icon-chevronleft')]
${Date}    xpath=(//span[contains(.,'3')])[2]
##########################Date range######################################
${2}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${3}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]
${Buttonconsultar}    xpath=//span[contains(.,'Consultar')]
##########################Checkbox bajas contables###############################
${Checkboxbajascontables}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
##########################Export all##############################################
${Exportall}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
##########################Filters##################################################
${Filterregion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-accounting-write-off-container/div/div[1]/div[2]/app-down-cnr-grid/dx-data-grid/div/div[5]/div[1]/table/tbody/tr[1]/td[2]/div[1]
${Region}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[31]
${Buttonaceptar}    xpath=(//div[contains(.,'Aceptar')])[22]
${Filtersucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-accounting-write-off-container/div/div[1]/div[2]/app-down-cnr-grid/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[3]/div[1]/span[2]
${Sucursal}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[31]
${Filtertypeofequipment}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-accounting-write-off-container/div/div[1]/div[2]/app-down-cnr-grid/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[4]/div[1]/span[2]
${Typeofequipmentfilter}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[31]
${Filtermodel}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-accounting-write-off-container/div/div[1]/div[2]/app-down-cnr-grid/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[5]/div[1]/span[2]
${Model}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[31]
${Filterserie}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-accounting-write-off-container/div/div[1]/div[2]/app-down-cnr-grid/dx-data-grid/div/div[5]/div[2]/table/tbody/tr[1]/td[6]/div[1]/span[2]
${Serie}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[33]
${Filterfechabja}    xpath=(//input[contains(@autocomplete,'off')])[14]
${Fechabaja}    xpath=(//span[contains(.,'1')])[46]
${Filterfechaalta}    xpath=(//input[contains(@autocomplete,'off')])[15]
${Fechaalta}    xpath=(//span[contains(.,'1')])[45]
##################################Upload file######################################################################################################
${Checkboxcargaporarchivo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Buttonseleccionarelarchivo}    xpath=//span[contains(.,'Seleccionar el archivo')]
#################################Fecha baja y alta###################################################################################################
${Fechabajafiltro}    29/11/2022 11:26:04
${Fechaaltafiltro}    01/01/1980 00:00:00
################################Filter search#####################################################################################
${Filtersearch}    xpath=//input[@aria-label='Buscar en la tabla de datos']
${Serie229768141}    229768141
#################################Low of equipment########################################################################################
${Register}    xpath=(//td[contains(.,'Guadalajara')])[3]
${Buttonaceptarbaja}    xpath=(//span[@class='dx-button-text'][contains(.,'Aceptar')])[2]
${Buttonenviar}    xpath=//span[contains(.,'Enviar')]
${Notificationgreen}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
##################################Transactions######################################################
${Buttonmenu1}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Transactions}    xpath=//span[contains(.,'Transacciones')]
${Checkboxmostrarpendientes}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Baja}    xpath=//td[contains(.,'Bajas contables')]
${Buttonejecutar}    xpath=//span[contains(.,'Ejecutar')]
#################################Button cancelar#####################################################
${Buttoncancelar}    xpath=//span[contains(.,'Cancelar')]
##################################Combo tipo equipo#####################################################
${Filtro_tipo_equipo}    xpath=//input[contains(@inputmode,'decimal')]
${Equipo}    11

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Consultar
    Type of equipment
    Checkbox show all
    Icon calendar
    Month
    Month
    Month
    Date
    Sleep    5s
    Button consultar

Date range
    Date range
    Button consultar
    Sleep    5s
    
Filters bajas contables
    Filter region
    Filter region
    Filter sucursal
    Filter sucursal
    Filter tipo de equipo
    Filter tipo de equipo
    Filter modelo
    Filter modelo
    #Filter serie
    #Filter serie
    Filter fecha baja
    Filter fecha alta
    Button consultar

Export all bajas contables
    Checkbox bajas contables
    Button consultar
    Export all

Filter Search bajas contables
    Filter search

Baja por registro
    Low of equipment
    Transactions

Upload file
    Pantallas bajas contables
    Type of equipment
    Checkbox cargar archivo csv
    Button seleccionar el archivo

Baja por archivo
    Boton aceptar
    Confirmar baja
    Transactions
    Pantallas bajas contables

Checkbox bajas contables
    Checkbox bajas contables
    Button consultar

Filtros combo tipo equipo
    Filtro descripcion y tipo equipo


*** Keyword ***
Validacion de usuarios
    #FOR    ${counter}    IN RANGE    1     5 
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
        Click Element    ${Botonequipos}
        Wait Until Element Is Visible    ${Botonoperacionesequipos}
        Click Element    ${Botonoperacionesequipos}
        Sleep    5s
        Scroll Element Into View    ${Botonbajascontables}
        Sleep    7s
        Click Element    ${Botonbajascontables} 
    #IF    ${counter} <= ${3}
        #Sleep    10s
        #Close Browser
    #END
   END

Type of equipment
    Wait Until Element Is Visible    ${Typeofequipment}
    Click Element    ${Typeofequipment}
    Wait Until Element Is Visible    ${Equipment}
    Click Element    ${Equipment}

Checkbox show all
    Wait Until Element Is Visible    ${Checkboxsowall}
    Click Element    ${Checkboxsowall}
    
Icon calendar
    Wait Until Element Is Visible    ${Iconcalendar}
    Click Element    ${Iconcalendar}

Month
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}

Date
    Wait Until Element Is Visible    ${Date}
    Click Element    ${Date}

Date range
    Sleep    15s
    Click Element    ${2}
    Wait Until Element Is Visible    ${3}
    Click Element    ${3}

Button consultar
    Wait Until Element Is Visible    ${Buttonconsultar}
    Click Element    ${Buttonconsultar}

Checkbox bajas contables
    Sleep    15s
    Click Element    ${Checkboxbajascontables}

Export all
    Sleep    15s
    Click Element    ${Exportall}

Filter region
    Sleep    10s
    Scroll Element Into View    ${Buttoncancelar}
    Sleep    7s
    Click Element    ${Filterregion}
    Sleep    5s
    Click Element    ${Region}
    Sleep    5s
    Click Element    ${Buttonaceptar}

Filter sucursal
    Sleep    10s
    Click Element    ${Filtersucursal}
    Sleep    5s
    Click Element    ${Sucursal}
    Wait Until Element Is Visible    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}

Filter tipo de equipo
    Sleep    10s
    Click Element    ${Filtertypeofequipment}
    Sleep    5s
    Click Element    ${Typeofequipmentfilter}
    Wait Until Element Is Visible    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}

Filter modelo
    Sleep    10s
    Click Element    ${Filtermodel}
    Sleep    5s
    Click Element    ${Model}
    Wait Until Element Is Visible    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}

Filter serie
    Sleep    10s
    Click Element    ${Filterserie}
    Sleep    5s
    Click Element    ${Serie}
    Wait Until Element Is Visible    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}

Filter fecha baja
    Sleep    15s
    Click Element    ${Filterfechabja}
    Input Text    ${Filterfechabja}    ${Fechabajafiltro}
    Press Keys    ${Filterfechabja}    ENTER
    Clear Element Text    ${Filterfechabja}	    

Filter fecha alta
    Sleep    5s
    Click Element    ${Filterfechaalta}
    Input Text    ${Filterfechaalta}    ${Fechaaltafiltro}
    Sleep    5s
    Clear Element Text    ${Filterfechaalta}
   
Checkbox cargar archivo csv
    Wait Until Element Is Visible    ${Checkboxcargaporarchivo}
    Click Element    ${Checkboxcargaporarchivo}

Filter search
    Wait Until Element Is Visible    ${Filtersearch}
    Click Element    ${Filtersearch}
    Input Text    ${Filtersearch}    ${Serie229768141}
    Sleep    10s
    Clear Element Text    ${Filtersearch}

Low of equipment
    Sleep    15s
    Click Element    ${Register}
    Wait Until Element Is Visible    ${Buttonaceptarbaja}
    Click Element    ${Buttonaceptarbaja}
    #Wait Until Element Is Visible    ${Buttonenviar}
    Sleep    5s
    Click Element    ${Buttonenviar}
    Sleep    10s
    Click Element    ${Notificationgreen}

Transactions
    Wait Until Element Is Visible    ${Buttonmenu1}
    Click Element    ${Buttonmenu1}
    Wait Until Element Is Visible    ${Transactions}
    Click Element    ${Transactions}
    Wait Until Element Is Visible    ${Checkboxmostrarpendientes}
    Click Element    ${Checkboxmostrarpendientes}
    Wait Until Element Is Visible    ${Baja}
    Click Element    ${Baja}
    Wait Until Element Is Visible    ${Buttonejecutar}    
    Click Element    ${Buttonejecutar}
    Sleep    4s
    Click Element    ${Notificationgreen}
    Sleep    10s
    Click Element    ${Notificationgreen}

Pantallas bajas contables
    Wait Until Element Is Visible    ${Buttonmenu1}
    Click Element    ${Buttonmenu1}
    Sleep    10s
    Click Element    ${Botonequipos}
    Wait Until Element Is Visible    ${Botonoperacionesequipos}
    Click Element    ${Botonoperacionesequipos}
    Sleep    5s
    Scroll Element Into View    ${Botonbajascontables}
    Sleep    7s
    Click Element    ${Botonbajascontables}
    
Button seleccionar el archivo
    Wait Until Element Is Visible    ${Buttonseleccionarelarchivo}
    Click Element    ${Buttonseleccionarelarchivo}
    Sleep    15s

Boton aceptar
    Sleep    5s
    Scroll Element Into View    ${Buttonaceptar}    
    Wait Until Element Is Visible    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}

Confirmar baja
    Sleep    5s
    Click Element    ${Buttonenviar}
    Sleep    10s
    Click Element    ${Notificationgreen}

Filtro descripcion y tipo equipo
    Wait Until Element Is Visible    ${Typeofequipment}
    Click Element    ${Typeofequipment}
    Wait Until Element Is Visible    ${Filtro_tipo_equipo}
    Input Text    ${Filtro_tipo_equipo}    ${Equipo}
    Sleep    6s
    Clear Element Text    ${Filtro_tipo_equipo}
