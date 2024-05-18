*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
#Library    RPA.Robocloud.Items
Library    RPA.Excel.Files
Library    RPA.Dialogs
*** Variables ***
#################Screen Datos facturacion y reparacion########################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottonadministraciondeanis}    xpath=//span[contains(.,'Administración de Anis')]
#################Active combos##################################################
${Combostates}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Combotype}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
###################Dedes / Hasta################################################
${Desde}    xpath=//input[contains(@name,'anisFrom')]
${1300}    1300
${Hasta}    xpath=//input[contains(@name,'anisTo')]
${13000000}    13000000    
####################Local code###################################################
${Localcode}    xpath=//input[contains(@maxlength,'3')]
${312}    312
####################Search range#################################################
${Todosstates}    xpath=//td[@aria-describedby='dx-col-7'][contains(.,'Todos')]
${Todostype}    xpath=//td[@aria-describedby='dx-col-8'][contains(.,'Todos')]
${Buttonsearchrange}    xpath=//span[contains(.,'Buscar rango')]
#####################Validation from , all and code##############################
${13000000}    13000000
${1200000}    1200000
${ADA}    ADA
#####################Create range################################################
${Buttonlimpiar}    xpath=//div[@class='dx-button-content'][contains(.,'Limpiar')]
${Createrange}    xpath=//div[@class='dx-button-content'][contains(.,'Crear rango')]
${Notificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${1209000}    1209000


*** Test Cases ***
Enter user
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Enter user and password

Screen administracion de anis
    Menu
    Operaciones equipos
    Administracion de anis

Combo state and type
    Combo states
    Sleep    10s
    Combo states
    Combo type 
    Sleep    10s
    Combo type

Desde / Hasta
    Numeric ranges from and to
    
Local code
    Local code

Search range
    Status range all
    Type all
    Button search range

Validation from , to and code
    Desde
    Hasta
    Validation of letters in local code

Create range
    Button limpiar
    From 1200000
    Button create range
    Close notification

*** Keyword ***
Enter user and password
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}
    Click Element If Visible   name:button

Menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Operaciones equipos
    Click element  ${Bottonoperacionesequipos}

Administracion de anis
    Click Element When Visible    ${Bottonadministraciondeanis}

Combo states
    Click Element When Visible    ${Combostates}

Combo type
    Sleep    5s
    Click Element When Visible    ${Combotype}

Numeric ranges from and to
    Click Element When Visible    ${Desde}
    Input Text When Element Is Visible    ${Desde}    ${1300}
    Click Element When Visible    ${Hasta}
    Input Text When Element Is Visible    ${Hasta}    ${13000000}

Local code
    Click Element When Visible    ${Localcode}
    Input Text When Element Is Visible    ${Localcode}    ${312}

Status range all
    Click Element When Visible    ${Combostates}
    Click Element When Visible    ${Todosstates}

Type all
    Click Element When Visible    ${Combotype}
    Click Element When Visible    ${Todostype}

Button search range
    Click Element When Visible    ${Buttonsearchrange}

Desde
    Click Element When Visible    ${Desde}
    Input Text When Element Is Visible    ${Desde}    ${13000000}

Hasta
    Click Element When Visible    ${Hasta}
    Input Text When Element Is Visible    ${Hasta}    ${1200000}
    
Validation of letters in local code
    Sleep    7s
    Click Element When Visible    ${Localcode}
    Input Text When Element Is Visible    ${Localcode}    ${ADA}

Button create range
    Sleep    5s
    Click Element When Visible    ${Createrange}

Close notification
    Click Element When Visible    ${Notificacion}

Button limpiar    
    Click Element When Visible    ${Buttonlimpiar}

From 1200000
    Click Element When Visible    ${Desde}
    Input Text When Element Is Visible    ${Desde}    ${1209000}
    Click Element When Visible    ${Hasta}
    Input Text When Element Is Visible    ${Hasta}    ${13000000}
    Click Element When Visible    ${Localcode}
    Input Text When Element Is Visible    ${Localcode}    ${312}
    Click Element When Visible    ${Combostates}
    Click Element When Visible    ${Todosstates}
    Click Element When Visible    ${Combotype}
    Click Element When Visible    ${Todostype}
