*** Settings ***
Documentation    Cajero
Library    String
Library    SeleniumLibrary


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
...                    #(//td[contains(@role,'gridcell')])[10]
#cajero
${Dropsucursal}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${inputsucursal}    xpath=(//input[@type='text'])[18]
${sucursal}    GUADALAJARA
${SelectSucursal}    xpath=//td[contains(.,'Guadalajara')]
${DropCis}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${ClicInputCIS}    xpath=//input[contains(@aria-invalid,'true')]
${inputcis}     CIS DEPTO INGRESOS  
${CIS}    xpath=//td[@aria-describedby='dx-col-302'][contains(.,'CIS DEPTO INGRESOS')]
${seleccionarCis}    xpath=//td[@aria-describedby='dx-col-41'][contains(.,'CIS P INDEPENDENCIA')]
${DropCajero}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${InputCajero}    xpath=(//input[contains(@autocomplete,'off')])[22]
${InputC}    02578
${ClicInputC}    xpath=//td[contains(.,'02578')]

${inputContraseña}    xpath=//input[contains(@type,'password')]
${contraseña}    mega123
${acept}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
#calcular
${calcular}    xpath=//div[@class='dx-button-content'][contains(.,'Calcular')]
#Calendario
${calendario}    xpath=(//i[contains(@class,'dropdown-icon dx-icon dx-icon-event dx-template-wrapper dx-button-content')])[1]
${Fecha01}    xpath=(//td[contains(@aria-describedby,'dx-col-77')])[1]
${Fecha02}    xpath=//td[@aria-describedby='dx-col-42'][contains(.,'00  Fin de mes')]
${Fecha03}    xpath=//td[@aria-describedby='dx-col-77'][contains(.,'00  Fin de mes')]
${Fecha04}    xpath=//td[@aria-describedby='dx-col-77'][contains(.,'16-Dic-2023')]
${Fecha05}    xpath=(//td[@aria-describedby='dx-col-42'][contains(.,'02  Meses')])[1]
${Fecha06}    xpath=//td[@aria-describedby='dx-col-42'][contains(.,'02  Meses naturales')]
${Fecha07}    xpath=(//td[@aria-describedby='dx-col-42'][contains(.,'03  Meses')])[1]
${Fecha08}    xpath=//td[@aria-describedby='dx-col-42'][contains(.,'03  Meses naturales')]

*** Test Cases ***
Enter User
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Enter to cashier
    Ingresar a Servicios
    Consultar suscriptor
    Ingresar Cajero

#calculate balances
  #  Consultar Saldo fin de mes
#    Sleep   5s
#    Consultar Saldo hoy
#    Sleep   2m

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
    Sleep    5s
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
    Sleep    5s
   # Click Element    ${Csuscriptor} 
Ingresar Cajero
    Sleep    3s
    Click Element    ${Dropsucursal}
    Sleep    2s
    Input Text    ${inputsucursal}    ${sucursal} 
    Sleep    2s
    Click Element     ${SelectSucursal} 
    Sleep    3s
        ### Verificar o mejorar esta parte
        Click Element    ${Dropsucursal} 
        Sleep    2s
    Click Element     ${DropCis} 
    Sleep    2s
    Input Text    ${ClicInputCIS}     ${inputcis}
    Sleep    2s
    Click Element     ${CIS}
    Sleep    3s
   # Click Element     ${DropCajero}
   # Sleep    3s
   # Input Text   ${InputCajero}    ${InputC}
   # Sleep    3s
   # Click Element   ${ClicInputC}    
   # Sleep    3s
   # Input Text    ${inputContraseña}    ${contraseña} 
   # Sleep    3s
   # Click Element    ${acept}

Consultar Saldo hoy
    Sleep    5s
    Click Element    ${calendario}
    #Sleep    5s
    Wait Until Element Is Enabled    ${Fecha04}
    Click Element    ${Fecha04}
    Sleep    5s
    Click Element    ${calcular}
     Sleep    1m

#Consultar Saldo fin de mes
#   Sleep    90s
#   Click Element    ${calcular}








