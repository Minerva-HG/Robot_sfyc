*** Settings ***
Documentation    Cajero
Library    String
Library    SeleniumLibrary
Library    RPA.Desktop
Library    RPA.PDF


*** Variables ***
#login   
${username}    xpath=//input[contains(@id,'Username')]
${password}    xpath=//input[contains(@type,'password')]
${server}      xpath=//select[contains(@id,'Domain')]
${Navegador}  Chrome
${Pagina}  https://servicios.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  JMARQUEZG                                          
${Pass}  sfyc123    
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
#menu
${Services}   xpath=(//div[contains(.,'Servicios')])[9]
${cajero}    xpath=(//span[contains(.,'Cajero')])[1]
#suscriptor
${dropsuscriptor}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${plus}    xpath=//i[@class='dx-icon dx-icon-plus']
${Inputsuscriptor}    xpath=(//input[contains(@role,'textbox')])[6]
${suscriptor}    0440601389
${Consultar}    xpath=//div[@class='dx-button-content'][contains(.,'Consultar')]
${Csuscriptor}    xpath=(//td[contains(@role,'gridcell')])[5] 
#cajero
${Dropsucursal}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${inputsucursal}    xpath=(//input[@type='text'])[18]
${sucursal}    GUADALAJARA
${SelectSucursal}    xpath=//td[contains(.,'Guadalajara')]

${DropCis}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${inputcis}     xpath=(//input[@type='text'])[20]
${CIS}    INGRESOS
${seleccionarCis}    xpath=//td[contains(.,'CIS DEPTO INGRESOS')]

${DropCajero}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${InputCajero}    xpath=(//input[contains(@autocomplete,'off')])[22]
${InputC}    00099
${ClicInputC}    xpath=//td[contains(.,'00099')]

${inputContraseña}    xpath=//input[contains(@type,'password')]
${contraseña}    1nf0r
${acept}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
#calcular
${calcular}    xpath=//div[@class='dx-button-content'][contains(.,'Calcular')]
#Calendario
${calendario}    xpath=(//i[contains(@class,'dropdown-icon dx-icon dx-icon-event dx-template-wrapper dx-button-content')])[1]
${Fecha01}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]
${Fecha02}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]/td[2]
${Fecha03}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[3]/td[2]
${Fecha04}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[4]/td[2]
${Fecha05}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[5]/td[2]
${Fecha06}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[6]/td[2]
${Fecha07}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[7]/td[2]
${Fecha08}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[8]/td[2]
${Fecha09}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[9]/td[2]
${Fecha10}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[10]/td[2]
${Fecha11}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[11]/td[2]
${Fecha12}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[12]/td[2]
${Fecha13}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[13]/td[2]
${Fecha14}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[14]/td[2]
${Fecha15}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[15]/td[2]
${Fecha16}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[16]/td[2]
${Fecha17}    xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/dx-data-grid[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[17]/td[2]
#Guardar pago
${guardarPago}    xpath=//span[@class='dx-button-text'][contains(.,'Guardar Pago')]
${efectivo}    xpath=//span[@class='dx-button-text'][contains(.,'Efectivo')]
${inputEfectivo}    xpath=(//input[contains(@autocomplete,'off')])[23]
${cambio}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/app-charge-save-payment-summary[1]/div[1]/div[2]/div[2]/dx-number-box[1]
${total}    xpath=//body/div[2]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[2]/div[1]/app-charge-save-payment-summary[1]/div[1]/div[2]/div[3]/dx-number-box[1]
${imprimir}    xpath=(//span[@class='dx-button-text'][contains(.,'Imprimir')])[2]
*** Test Cases ***
Enter User
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Enter to cashier
    [Tags]    Ingresar cajero
    Ingresar a Servicios
    Consultar suscriptor
    Ingresar Cajero

Calculate balances
    [Tags]    Calcular saldos
    Consultar Saldo fin de mes
    Sleep    5s
    Consultar Saldo hoy
    Sleep    5s
    Consultar Saldo un mes adeudo
    Sleep    5s
    Consultar Saldo un mes natural
    Sleep    5s
    Consultar Saldo dos meses
    Sleep    5s
    Consultar Saldo dos meses naturales
    Sleep    5s
    Consultar Saldo tres meses
    Sleep    5s
    Consultar Saldo tres meses naturales
    Sleep    5s
    Consultar Saldo seis meses
    Sleep    5s
    Consultar Saldo seis meses naturales
    Sleep    5s
    Consultar Saldo nueve meses
    Sleep    5s
    Consultar Saldo doce meses
    Sleep    5s
    Consultar Saldo quince meses
    Sleep    5s
    Consultar Saldo 18 meses
    Sleep    5s
    Consultar Saldo 24 meses
    Sleep    5s
    Consultar Saldo 36 meses
    Sleep    5s


*** Keywords ***
Ingresar usuario contrasena
    Sleep    5s
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button
Ingresar a Servicios
    Sleep    7s
  #  Click Element    ${Services}
  #  Sleep    5s
    Click Element    ${cajero}

Consultar suscriptor
    Sleep    5s
    Click Element    ${dropsuscriptor}
    Sleep    3s
    Click Element    ${plus}
    Sleep    3s
    Input Text    ${Inputsuscriptor}   ${suscriptor}
    Sleep    3s
    Click Element    ${Consultar}
    Sleep    7s
   # Click Element    ${Csuscriptor} 
Ingresar Cajero
    Sleep    5s
    Click Element    ${Dropsucursal}
    Sleep    2s
    Input Text    ${inputsucursal}    ${sucursal} 
    Sleep    3s
    Click Element     ${SelectSucursal} 
    Sleep    5s
        ### Verificar o mejorar esta parte
        Click Element    ${Dropsucursal} 
        Sleep    2s
    Click Element     ${DropCis} 
    Sleep    2s
    Input Text    ${inputcis}    ${CIS}     
    Sleep    2s
    Click Element     ${seleccionarCis}
    Sleep    3s
    Click Element     ${DropCajero}
    Sleep    3s
    Input Text   ${InputCajero}    ${InputC}
    Sleep    3s
    Click Element   ${ClicInputC}    
    Sleep    3s
    Input Text    ${inputContraseña}    ${contraseña} 
    Sleep    3s
    Click Element    ${acept}

Guardar Pago
    Click Element    ${guardarPago}
    Sleep    5s
    Click Element    ${efectivo}
    Sleep    5s
    Wait Until Page Contains Element    ${total}
    Sleep    2s
    #Ingresa efectivo => total
    Get Text    ${total}
    Sleep    2s
    Convert To Number    ${total}
    ${inputEfectivo}    Evaluate    ${total} + 10
    Input Text    ${inputEfectivo}    ${inputEfectivo}
    Sleep    5s
    Click Element    ${imprimir}
    Sleep    5s    

Consultar Saldo hoy
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha01}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s
Consultar Saldo fin de mes
   Sleep    10s
   Click Element    ${calcular}

Consultar Saldo un mes adeudo
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha03}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s

Consultar Saldo un mes natural
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha04}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s

Consultar Saldo dos meses
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha05}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s

Consultar Saldo dos meses naturales
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha06}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s    

Consultar Saldo tres meses
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha07}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s    

Consultar Saldo tres meses naturales
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha08}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s        

Consultar Saldo seis meses
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha09}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s  

Consultar Saldo seis meses naturales
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha10}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s  

Consultar Saldo nueve meses
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha11}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s      

Consultar Saldo doce meses 
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha12}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s      

Consultar Saldo doce meses naturales
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha13}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s      

Consultar Saldo quince meses 
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha14}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s  

Consultar Saldo 18 meses 
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha15}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s      

Consultar Saldo 24 meses
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha16}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s      

Consultar Saldo 36 meses
    Sleep    5s
    Click Element    ${calendario}
    Sleep    1s
    Wait Until Element Is Enabled    ${calcular}
    Click Element    ${Fecha17}
    Sleep    5s
    Click Element    ${calcular}
    Sleep    30s      