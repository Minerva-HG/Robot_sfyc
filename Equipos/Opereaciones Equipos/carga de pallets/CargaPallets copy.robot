*** Settings ***
Documentation    This a charge of series by equiment pallets
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
#Library    XML
#Library    RPA.Windows
#Library    RPA.Robocloud.Items
#Library    RPA.Excel.Files
#Library    RPA.Dialogs
Library    String
Library    SeleniumLibrary
#Library    RPA.JavaAccessBridge

*** Variables ***
#Begin systemn   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  AAMEDINAM
${Pass}  Juanpi1049
${Botondominio}    xpath=//select[@id='Domain']
#enter systemn
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Equi_operation}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[1]/app-side-navigation-menu[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/dx-tree-view[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/li[1]/ul[1]/li[5]/div[1]/div[1]/span[1]
#enter pallet charge
${Pallet_charge}    xpath=//span[normalize-space()='Carga de Pallets']
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
${confi_message}    xpath=(//div[contains(.,'¡Aviso del sistema!')])[8]
${close_message}    xpath=//i[@class='dx-icon dx-icon-close']
#pallet open
${open_pallet}    xpath=//*[@id="dx-97482c53-c9c7-e5bc-55da-3b400189a782"]
${message_opne_pallet}    xpath=//strong[contains(.,'El pallet: 0141200223USV esta abierto, se continuará trabajando en el actual')]
#begin pallet
${staring}    xpath=//i[contains(@class,'dx-icon dx-icon-exportselected')]
#Creat id box
${new_box}    xpath=//i[contains(@class,'dx-icon dx-icon-box')]
#close box
${close_box}    xpath=//i[contains(@class,'dx-icon dx-icon-product')]
#Agregar Serie
${input_serie}    xpath=//input[contains(@maxlength,'35')]
${series}         4857544308FD80AA      
${Aceptar_Green}  xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]       
${start}    10  
${contenedoresvacios}    xpath=//div[contains(@class,'dx-buttongroup-wrapper dx-widget dx-collection')]  

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Menu de Carga de Pallets
    Menu
    Sleep    5s
#CIERRO CUALQUIER MENSAJE DE AVISO AMARILLO y azul
Screen en pallets
    Pantalla Inicial
    No Mostrar avisos 
    Run Keyword If    "${contenedoresvacios}" == "${contenedoresvacios}"    Pantalla Inicial
    ...  ELSE IF       "${staring}"=="${staring}"    Pallet begin 
    ...  ELSE     Mostrar avisos
Si aparece los avisos    
    Mostrar avisos
    Run Keyword if   "${warning}" == "${warning}"   Cerrar avisos
    ...   ELSE IF    "${close_message}" == "${close_message}"    cerrar confirmacion
    ...    ELSE    Pallet begin  
#si no hay ningun mensaje
 
Start Charges
    Pallet begin
    Series manual
    FOR    ${start}    IN RANGE    1    2
        Series manual add 
        Mostrar avisos
    Run Keyword if   "${warning}" == "${warning}"   Cerrar avisos
    ...   ELSE IF    "${close_message}" == "${close_message}"    cerrar confirmacion
    ...    ELSE   Mostrar avisos  
    END




*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}
    Wait Until Element Is Visible    ${Equi_operation}
    Sleep    15s
    Click Element    ${Equi_operation}
    Wait Until Element Is Visible    ${Pallet_charge}
    Sleep    15s
    Click Element    ${Pallet_charge}

#CIERRO CUALQUIER MENSAJE DE AVISO AMARILLO
Mostrar avisos
    Page Should Not Contain    ${warning} 
 ###crear una bandera para cuando no aparesca los mensajes    
No Mostrar avisos
   Wait Until Element Is Visible   ${contenedoresvacios} 
Cerrar avisos
    Page Should Not Contain     ${close_warning} 
    #Click Element    ${close_warning}    

 #qui seleccionó el equipo para poder habilitar el boton INICIAR PALLET 
Pantalla Inicial
    Wait Until Element Is Visible    ${equi_type}
    Sleep    5s
    Click Element    ${equi_type}
    Sleep    5s 
    Input Text      ${equi_type_input}    ${input1} 
    Sleep    5s
    Click Element    ${selector_input_type}

#YA QUE SE AGREGA EL EQUIPO, SE HABILITA EL DE INICIAR PALLET
Pallet begin 
    Click Element    ${staring} 

#Agregar series manual mente
Series manual
    Sleep    5s
    Wait Until Element Is Visible     ${input_serie}
    Click Element    ${input_serie}
    Sleep    5s
Series manual add
    Input Password    ${input_serie}    ${series}
    Sleep    5s
    Click Element    ${Aceptar_Green}

#MOSTRARA EL SIGUIENTE MENSAJE EN AZUL de confirmacion
mostrar confirmacion 
    Wait Until Element Is Visible   ${confi_message}
cerrar confirmacion
    Click Element    ${close_message} 

