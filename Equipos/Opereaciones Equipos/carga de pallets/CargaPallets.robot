*** Settings ***
Documentation    Carga de imagenes
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
#Library    XML
#Library    RPA.Windows
#Library    RPA.Robocloud.Items
#Library    RPA.Excel.Files
#Library    RPA.Dialogs
Library    String
Library    SeleniumLibrary

*** Variables ***
${Verificararchivo}    xpath=//*[@id="fileuploader-container"]/dx-file-uploader/div/div/div/div[2]/div/div/div[1]/div[1]
${Archivoacargar}    C://Proyectos//Robot_sfyc//Inventarios//Operaciones Equipos//Cambio masivo de ubicacion//Pruebass.xlsx 
${CSV_FILE}    C:/Proyectos/Robot_sfyc/Inventarios/Operaciones Equipos/Cambio masivo de ubicacion/Pruebass.xlsx 
#Begin systemn   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
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
#begin pallet
${staring}    xpath=//i[contains(@class,'dx-icon dx-icon-exportselected')]
#Creat id box
${new_box}    xpath=//i[contains(@class,'dx-icon dx-icon-box')]
#file upload
${select_file}    xpath=//span[@class='dx-button-text'][contains(.,'Seleccionar el archivo')]
${verify}    xpath=//div[contains(@class,'dx-fileuploader-file-name')]
${name_file}    Equipos.csv

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Menu de Carga de Pallets
    Menu
    Sleep    5s
#CIERRO CUALQUIER MENSAJE DE AVISO AMARILLO
Pantalla en pallets
    Mostrar avisos
    Run KeyWord if   "${warning}" == "${warning}"   Cerrar avisos
    ...    ELSE   Initial Screen 

 #qui seleccionó el equipo para poder habilitar el boton INICIAR PALLET 
Step 1
    Initial Screen  
     
#YA QUE SE AGREGA EL EQUIPO, SE HABILITA EL DE INICIAR PALLET y lo selecciono
Star new pallet
    Pallet begin
#aparece primer mensaje de confirmacion
Close confirmation blue 
    mostrar confirmacion
    cerrar confirmacion

#seleccionamos botón crear caja
Star new box
    Create box

Close confirmation blue 2
    mostrar confirmacion
    cerrar confirmacion

#MOSTRARA UN AVISO DE COLOR AZUL
#TRATAREMOS DE CERRAR CON ESTE IF-ELSE
#Step 2
#   Look warning blue
#    Run KeyWord if   "${Warningblue}" == "${Warningblue}"   Closes warnigs
#    ...   ELSE IF    Create box
#    ...    ELSE   File upload  
step 3
    File upload

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
    Wait Until Element Is Visible    ${warning} 

Cerrar avisos
    Click Element    ${close_warning}    

 #qui seleccionó el equipo para poder habilitar el boton INICIAR PALLET 
Initial Screen
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

#MOSTRARA EL SIGUIENTE MENSAJE EN AZUL de confirmacion
mostrar confirmacion 
    Wait Until Element Is Visible   ${confi_message}
cerrar confirmacion
    Click Element    ${close_message} 
#crear la nueva caja
Create box
  Click Element    ${new_box}

#vuelve aparecer el mensaje azul

#Ya podemos cargar el archivo .csv   
 # AL CERRAR EL MENSAJE y SE AGREGA EL ARCHIVO
File upload
    Sleep    10s
    Choose File    ${select_file}     C:/Proyectos/Robocorp/Robot_sfyc/Files/serie.csv
#    Wait Until Element Is Visible    ${verify}

#MOSTRARA EL SIGUIENTE MENSAJE EN AZUL warning
#Look warning blue
#    Wait Until Element Is Visible   ${Warningblue}   
#Closes warnigs
#    Click Element    ${close_warnigblue}
    














