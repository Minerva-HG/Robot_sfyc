*** Settings ***
Library  SeleniumLibrary
Library  String  

*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}   https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
<<<<<<< HEAD
${Usuario}  MBELTRANG
${Pass}  Mega2022
${Cajadetextoserie}  xpath=//input[@name='subscriber']
${Contrato}  0120063814
${BotonConsultar}  Xpath: //div[@class='add-subscriber-buttons']

=======
${Usuario}  dhernandezd
${Pass}  Omega12345
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
${Combo_suscriptor}    xpath=(//input[@name='subscriber'])
${Campo_suscriptor}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/dx-accordion[1]/div[1]/div[1]/dxi-item[1]/div[1]/form[1]/div[1]/app-subscriber-search-contract-form[1]/form[1]/div[1]/dx-text-box[1]/div[1]/div[1]/input[1]
${Suscriptor}    0120063814   
${Boton_consultar}    xpath=/html[1]/body[1]/div[2]/div[1]/div[2]/div[1]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-subscriber-search-container[1]/div[1]/div[1]/dx-button[1]/div[1]/span[1]
${Suscriptor_cargado}    xpath=/html/body/div/div/div/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]
>>>>>>> cb0a305dc01d8a0aa9e3531f00fac8545d8bcb7d


*** Test Cases ***
Ingresar Sistema
    Open browser    ${Pagina}   ${Navegador}
    Sleep   5s
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena
    Sleep   5s
    Ingresa numero suscriptor
    Sleep   10s
    Close browser


*** Keyword ***
Ingresar usuario contrasena
    Sleep    5s
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresa numero suscriptor
    Sleep    3s
    Click Element    ${Combo_suscriptor} 
    Sleep    3s
    Input Text    ${Campo_suscriptor}    ${Suscriptor}
    Sleep    5s
    Click Element    ${Boton_consultar}
    Sleep    5s

