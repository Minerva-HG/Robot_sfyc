*** Settings ***
Documentation    Carga de pallets
Library    String
Library    SeleniumLibrary
Library    OperatingSystem
#Library    csvLibrary.py
Library    RPA.Email.ImapSmtp
Library    RPA.Windows

*** Variables ***
#######login###########
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}    https://global.qa-cluster.sfycnextgen.com.mx/ui    #https://servicios.qa-cluster.sfycnextgen.com.mx/ui 
${Usuario}  joriospe                                          
${Pass}  Mega12345                       
${Botondominio}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select
${SFyC}    xpath=/html/body/div/div/div/div/div/div[2]/div[2]/form/div/div/div/section[1]/label/div/select/option[3]
${BotondominioQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select
${SFyCQA}    xpath=/html/body/div/div/div/div/div/div[3]/div[2]/form/div/div/section/label/div/select/option[2]
################################################################################################
${Equi_operation}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Operations}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
#enter pallet charge
${Pallet_charge}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[16]/div/div/span
${equi_type}    xpath=//dx-drop-down-box[@id='typeEquipmentDropdown']//input[@role='combobox']
${equi_type_input}   xpath=//input[contains(@inputmode,'decimal')]
${input1}    002
${selector_input_type}   xpath=//td[@aria-describedby='dx-col-9'][contains(.,'002')]
#warning System
${warning}   xpath=(//div[contains(.,'¡Aviso del sistema!')])[8] 
${close_warning}   xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div/div
${Warningblue}     xpath=//div[@class='dx-toolbar-items-container'][contains(.,'¡Aviso del sistema!')]
${close_warnigblue}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#confirmation message
${close_message2}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${close_message}    xpath=//i[@class='dx-icon dx-icon-close'] 
#begin pallet
${staring}    xpath=//i[contains(@class,'dx-icon dx-icon-exportselected')]
#Creat id box
${new_box}    xpath=//i[contains(@class,'dx-icon dx-icon-box')]
#Add serie manual
${Serie_field}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-pallet-id-main-container/div/div[1]/div[2]/div[2]/div[2]/app-pallet-form-component/form/div/div[2]/dx-text-box/div/div[1]/input    
${Serietipo2}    06H7GR2VY4P6
#Button aceptar
${Botonaceptar}    xpath=(//div[contains(.,'Aceptar')])[12]
#Add serie by file
${Icon_by_file}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-pallet-id-main-container/div/div[2]/div[2]/app-pallet-form-component/form/div/div[3]/div/dx-check-box/div/span
${Button_seleccionar_archivo}    xpath=//span[contains(.,'Seleccionar el archivo')]
${csv}    Get File    Equipos.csv
#Transactions
${Refresh_transaction}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
${Processfilter}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[5]/div/table/tbody/tr[1]/td[3]/div[1]/span[2]
${Buscarproceso}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Text_agregar_series_pallet}    Agregar series pallet    
${Icon_agregar_series_pallet}    xpath=(//span[@class='dx-checkbox-icon'])[53]
${Button_acept_filter}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
${Register}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-main-container/app-main-transactions-grid/div/dx-data-grid/div/div[6]/div/div/div/div/table/tbody/tr[1]
${Button_descargar_detalle_de_validaciones}    xpath=//span[contains(.,'Descargar detalle de validaciones')]
${Button_ejecutar}    xpath=//div[@class='dx-button-content'][contains(.,'Ejecutar')] 
#Return screen carga de pallets
${Button_regresar_menu}    xpath=//i[contains(@class,'dx-icon dx-icon-chevrondoubleleft')]
${Equi_operation2}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Operations_2}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/div[1]/div/span
${Pallet_charge2}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[16]/div/div/span
#Close caja
${Notification_se_continuara_en_pallet}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div
${Iconfinalizarcaja}    xpath=//i[contains(@class,'dx-icon dx-icon-product')]
#Close pallet
${Icon_close_pallet}    xpath=//i[contains(@class,'dx-icon dx-icon-remove')]
#Close message finish
${close_message_finish}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
#Notification no se puede cerrar la caja sin antes agregar equipos
${Notification_no_se_han_agregado_series}    xpath=/html/body/div[2]/div/div[1]/div/div[3]/div/div/div
#Filtros
${Filtropalletid}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-pallet-id-main-container/div/div[2]/div[1]/app-pallet-grid-component/div/dx-data-grid/div/div[5]/div/table/tbody/tr/td[1]/div[1]/span[2]
${Palletid}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Botonaceptarfiltro}    xpath=(//span[contains(.,'Aceptar')])[2]
${Filtrocajaid}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-pallet-id-main-container/div/div[2]/div[1]/app-pallet-grid-component/div/dx-data-grid/div/div[5]/div/table/tbody/tr/td[2]/div[1]/span[2]
${Cajaid}    xpath=/html/body/div/div/div[1]/div/div[2]/div/div[1]/div[2]/div[2]/div[1]/div/div
${Filtromodelo}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-pallet-id-main-container/div/div[2]/div[1]/app-pallet-grid-component/div/dx-data-grid/div/div[5]/div/table/tbody/tr/td[3]/div[1]/span[2]
${Modelo}    xpath=/html/body/div/div/div[1]/div/div[2]/div/div[1]/div[2]/div[2]/div[1]/div/div/span
${Filtroserie}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/app-pallet-id-main-container/div/div[2]/div[1]/app-pallet-grid-component/div/dx-data-grid/div/div[5]/div/table/tbody/tr/td[4]/div[1]/span[2]
${Serie}    xpath=/html/body/div/div/div[1]/div/div[2]/div/div[1]/div[2]/div[2]/div[1]/div/div/span
#Icon export all
${Iconexportall}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
#Icon eliminar
${Iconeliminar}    xpath=//i[contains(@class,'dx-icon dx-icon-trash')]
${Campopalltid}    xpath=/html/body/div/div/div[2]/app-delete-pallet-component/form/div/div[1]/div[2]/dx-text-box/div[1]/div[1]/input
${Palletidhaeliminar}    0541170423USV    
${Botonenviar}    xpath=//div[@class='dx-button-content'][contains(.,'Enviar')]
#Inicio
${Inicio}    xpath=//img[@src='assets/img/logo-side-menu-megacable.png']
#Notificacion
${Notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
#Megacable
${Megacable}    xpath=//img[@src='assets/img/logo-side-menu-megacable.png']

*** Test Cases ***
Pantalla carga de pallets
    [Documentation]    Pantalla carga de pallets
    [Tags]    test_uno
    Open browser    ${Pagina}   ${Navegador}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Ingresar usuario contrasena
    Menu
    Sleep    5s
 
Drop tipo equipo
    [Documentation]    Drop tipo equipo
    [Tags]    test_tres
    Initial Screen  

#Test icon delete
    #[Documentation]    Icono eliminar
    #[Tags]    test_tres
    #Icon delete  
     
#YA QUE SE AGREGA EL EQUIPO, SE HABILITA EL DE INICIAR PALLET y lo selecciono
Crear pallet
    [Documentation]    Iniciar pallet
    [Tags]    test_cuatro
    Pallet begin
    Cerrar confirmacion

#Seleccionamos botón crear caja
Crear caja id
    [Documentation]    Crear caja id
    [Tags]    test_cinco
    Create box
    Cerrar confirmacion

#Test add serie manual
    #[Documentation]    Agregando serie manual 
    #[Tags]    test_seis
    #Add serie manual
    #Cerrar confirmacion

Add serie by file
    [Documentation]    Agregando serie por archivo
    [Tags]    test_siete
    Add serie by file

Agregar series con ubicación Cli
    [Documentation]    Carga de archivo .csv
    [Tags]    test_ocho
    File upload
    
Transactions
    [Documentation]    Transaccion pendiente
    [Tags]    test_nueve
    Transactions    
    Flags notifications   

Agregar series de otro tipo de equipo
    [Documentation]    Carga de archivo .csv
    [Tags]    test_ocho
    Close message se continuara trabajando en la actual
    Add serie by file
    File upload
    Transactions    
    Flags notifications  

Archivo con campos vacios
    [Documentation]    Carga de archivo .csv
    [Tags]    test_ocho
    Close message se continuara trabajando en la actual
    Add serie by file
    File upload
    Transactions    
    Flags notifications 

Agregará los números de serie con las validaciones antes mencionadas
    [Documentation]    Carga de archivo .csv
    [Tags]    test_ocho
    Close message se continuara trabajando en la actual
    Add serie by file
    File upload
    Transactions    
    Flags notifications 
    
Close caja
    [Documentation]    Cerrar la caja
    [Tags]    test_diez
    Close message se continuara trabajando en la actual
    Close caja
    Close message se continuara trabajando en la actual
    While for validations of message no se puede cerrar la caja sin antes agregar equipos
    
Close pallet
    [Documentation]    Finalizar pallet
    [Tags]    test_once
    Close pallet
    Close message finish

Filters
    [Documentation]    Filtros
    [Tags]    test_doce
    Filter pallet id
    Filter caja id
    Filter modelo
    Filtro serie
    
Export all
    [Documentation]    Icono exportar todo
    [Tags]    test_trece
    Icon export all


*** Keyword ***
Ingresar usuario contrasena
    Wait Until Element Is Visible    ${Localizadorpagina}  
    Click Element     ${Botondominio}
    #Click Element When Visible    ${BotondominioQA}
    Wait Until Element Is Visible    ${SFyC} 
    Click Element    ${SFyC}  
    #Click Element When Visible    ${SFyCQA}
    Input Text    name:Username   ${Usuario}
    Input Text    name:Password   ${Pass}
    Click Element   name:button

Menu
    Sleep    17s
    Click Element    ${Equi_operation}
    Sleep    5s
    Click Element    ${Operations}
    Sleep    5s
    Scroll Element Into View    ${Pallet_charge}
    Sleep    5s
    Click Element    ${Pallet_charge}
   
#Aqui seleccionó el equipo para poder habilitar el boton INICIAR PALLET 
Initial Screen
    Wait Until Element Is Visible    ${equi_type}
    Sleep    5s
    Click Element    ${equi_type}
    Sleep    5s 
    Input Text      ${equi_type_input}    ${input1} 
    Sleep    5s
    Click Element    ${selector_input_type}

#Icono eliminar
Icon delete
    Sleep    4s
    Click Element    ${Iconeliminar}
    Wait Until Element Is Visible    ${Campopalltid}
    Input Text    ${Campopalltid}    ${Palletidhaeliminar}
    Sleep    3s
    Click Button    ${Botonenviar}
    Wait Until Element Is Visible    ${Notification_se_continuara_en_pallet}
    Click Element    ${Notification_se_continuara_en_pallet}


#YA QUE SE AGREGA EL EQUIPO, SE HABILITA EL DE INICIAR PALLET
Pallet begin 
    Click Element    ${staring} 

#MOSTRARA EL SIGUIENTE MENSAJE EN AZUL de confirmacion
Cerrar confirmacion
    Sleep    5s
    Click Element    ${close_message} 

#Crear la nueva caja
Create box
    Click Element    ${new_box}

#Agregando serie manual
Add serie manual
    Wait Until Element Is Visible    ${Serie_field}
    Input Text    ${Serie_field}    ${Serietipo2}
    Wait Until Element Is Visible    ${Botonaceptar}
    Scroll Element Into View    ${Botonaceptar}
    Click Element    ${Botonaceptar}

#Agregando serie por archivo
Add serie by file
    Wait Until Element Is Visible    ${Icon_by_file}
    Click Element    ${Icon_by_file}
    
#Cargar el archivo .csv   
File upload
    Sleep    7s
    #Choose File    ${Button_seleccionar_archivo}    ${csv}
    Click Element    ${Button_seleccionar_archivo}
    Sleep    15s
    Click Element    ${Botonaceptar}
    Sleep    15s
    Click Element    ${Notificacion}

#Ingresa a las transacciones para proceder con agregar los pallets
Transactions
    Sleep    15s
    Click Element    ${Refresh_transaction} 
    Sleep    5s
    Wait Until Element Is Visible    ${Register}
    Click Element    ${Register}

############# Se agregan las banderas para cada una de las notificaciones #######################################
Flags notifications
    Sleep    5s
    ${Banderatransactionverde}=  Run Keyword And Return Status    Click Element   ${Button_ejecutar}
    ${Banderatransactionyellow}=  Run Keyword And Return Status    Click Element   ${Button_descargar_detalle_de_validaciones}
    #Log To Console    ${Banderatransactionverde}   
    Run Keyword If    '${Banderatransactionverde}' == 'True'
    ...    Cerrar notificaciones agregar pallets
    ...  ELSE IF    '${Banderatransactionyellow}' == 'True'
    ...    Return screen carga de pallets    
    ...  ELSE
    ...    Return screen carga de pallets

#Banderas
Transaction yellow
    Sleep    5s
    Click Element    ${Button_descargar_detalle_de_validaciones}

Transaction green    
    Sleep    5s
    Click Element    ${Button_ejecutar}

#Regresa a la pantalla carga de pallets
Return screen carga de pallets
    Sleep    5s
    Click Element    ${Button_regresar_menu}
    Sleep    5s
    Click Element    ${Megacable}
    Sleep    5s
    Click Element    ${Button_regresar_menu}
    Sleep    5s
    Click Element    ${Equi_operation}
    Sleep    5s
    Click Element    ${Operations}
    Sleep    5s
    Scroll Element Into View    ${Pallet_charge}
    Sleep    5s
    Click Element    ${Pallet_charge}

#Cierre de notificaciones
Cerrar notificaciones agregar pallets
    Wait Until Element Is Visible    ${close_message}    
    Click Element    ${close_message}
    Sleep    15s
    Click Element    ${close_message2}
    Sleep    5s
    Click Element    ${Button_regresar_menu}
    Sleep    5s
    Click Element    ${Inicio}
    Sleep    5S
    Click Element    ${Button_regresar_menu}
    Sleep    5s
    Click Element    ${Equi_operation2}
    Sleep    5s
    Click Element    ${Operations_2}
    Sleep    5s
    Scroll Element Into View    ${Pallet_charge2}
    Sleep    5s
    Click Element    ${Pallet_charge2}
    
#Se cierra la caja
Close caja
    Sleep    5s
    Wait Until Element Is Visible    ${Iconfinalizarcaja}
    Click Element    ${Iconfinalizarcaja}

#Se cierra el pallet
Close pallet
    Sleep    5s
    Wait Until Element Is Visible    ${Icon_close_pallet}
    Click Element    ${Icon_close_pallet}

#Se cierra el mensaje final proceso terminado con exito
Close message finish
    Sleep    3s
    Click Element    ${close_message_finish}

Close message se continuara trabajando en la actual
    Sleep    5s    
    Click Element    ${Notification_se_continuara_en_pallet}

#Se agrega un while para validar que el existan series agregadas dentro de la caja, si existen pasa a la siguiente keyword sino, vuelve a ejecutar el proceso para cargar las series
While for validations of message no se puede cerrar la caja sin antes agregar equipos
    Sleep    5s
    ${Bandera_no_se_han_agregado_series}=    Run Keyword And Return Status    Click Element    ${Iconfinalizarcaja}
    Sleep    5s
    Log To Console    ${Bandera_no_se_han_agregado_series}
    Sleep    5s    
    WHILE    '${Bandera_no_se_han_agregado_series}' == 'True'
        Click Element    ${Notification_se_continuara_en_pallet}
        Add serie by file
        File upload
        Transactions
        Flags notifications
        Close message se continuara trabajando en la actual
        Close caja
        Close message se continuara trabajando en la actual
        While for validations of message no se puede cerrar la caja sin antes agregar equipos
    END
    Sleep    3s

Filter pallet id
    Sleep    3s
    Click Element    ${Filtropalletid}
    Wait Until Element Is Visible    ${Palletid}
    Click Element    ${Palletid}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtropalletid}
    Wait Until Element Is Visible    ${Palletid}
    Click Element    ${Palletid}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filter caja id
    Sleep    3s
    Click Element    ${Filtrocajaid}
    Wait Until Element Is Visible    ${Cajaid}
    Click Element    ${Cajaid}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtrocajaid}
    Wait Until Element Is Visible    ${Cajaid}
    Click Element    ${Cajaid}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filter modelo
    Sleep    3s
    Click Element    ${Filtromodelo}
    Wait Until Element Is Visible    ${Modelo}
    Click Element    ${Modelo}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtromodelo}
    Wait Until Element Is Visible    ${Modelo}
    Click Element    ${Modelo}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Filtro serie
    Sleep    3s
    Click Element    ${Filtroserie}
    Wait Until Element Is Visible    ${Serie}
    Click Element    ${Serie}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}
    Sleep    5s
    Click Element    ${Filtroserie}
    Wait Until Element Is Visible    ${Serie}
    Click Element    ${Serie}
    Wait Until Element Is Visible    ${Botonaceptarfiltro}
    Click Element    ${Botonaceptarfiltro}

Icon export all
    Sleep    3s
    Click Element    ${Iconexportall}
