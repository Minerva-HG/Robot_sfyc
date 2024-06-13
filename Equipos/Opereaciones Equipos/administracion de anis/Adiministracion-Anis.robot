** Settings ***
Documentation    Administracion de anis
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
Library    SeleniumLibrary


*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #RDURANM    joriospe                                                                                                       
@{passL}=    Create List    Mega12345    #Enero.2020    Mega12345                                                                                                                                                                                                                                                                                                                                                                                                              
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#################Screen Administración de anis########################   
${Botoncargadepallets}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[16]
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Botonadministraciondeanis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[11]
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
Usuarios con permisos a la pantalla
    Validacion de usuarios

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
Validacion de usuarios
        #FOR    ${counter}    IN RANGE    1     3 
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
        Scroll Element Into View    ${Botonadministraciondeanis}
        Sleep    7s
        Click Element    ${Botonadministraciondeanis} 
    #IF    ${counter} <= ${1}
        #Sleep    10s
        #Close Browser
    #END
   END


Combo states
    Wait Until Element Is Visible    ${Combostates}
    Click Element    ${Combostates}

Combo type
    Sleep    5s
    Click Element    ${Combotype}

Numeric ranges from and to
    Wait Until Element Is Visible    ${Desde}
    Click Element    ${Desde}
    Input Text    ${Desde}    ${1300}
    Wait Until Element Is Visible    ${Hasta}
    Click Element    ${Hasta}
    Input Text    ${Hasta}    ${13000000}

Local code
    Wait Until Element Is Visible    ${Localcode}
    Click Element    ${Localcode}
    Input Text    ${Localcode}    ${312}

Status range all
    Wait Until Element Is Visible    ${Combostates}
    Click Element    ${Combostates}
    Wait Until Element Is Visible    ${Todosstates}    
    Click Element    ${Todosstates}

Type all
    Wait Until Element Is Visible    ${Combotype}
    Click Element    ${Combotype}
    Wait Until Element Is Visible    ${Todostype}
    Click Element    ${Todostype}

Button search range
    Wait Until Element Is Visible    ${Buttonsearchrange}    
    Click Element    ${Buttonsearchrange}

Desde
    Wait Until Element Is Visible    ${Desde}
    Click Element    ${Desde}
    Input Text    ${Desde}    ${13000000}

Hasta
    Wait Until Element Is Visible    ${Hasta}
    Click Element    ${Hasta}
    Input Text    ${Hasta}    ${1200000}
    
Validation of letters in local code
    Sleep    7s
    Click Element    ${Localcode}
    Wait Until Element Is Visible    ${Localcode}
    Input Text    ${Localcode}    ${ADA}

Button create range
    Sleep    5s
    Click Element    ${Createrange}

Close notification
    Wait Until Element Is Visible    ${Notificacion}
    Click Element    ${Notificacion}

Button limpiar  
    Wait Until Element Is Visible    ${Buttonlimpiar}  
    Click Element    ${Buttonlimpiar}

From 1200000
    Wait Until Element Is Visible    ${Desde}    
    Click Element    ${Desde}
    Input Text    ${Desde}    ${1209000}
    Wait Until Element Is Visible    ${Hasta}
    Click Element    ${Hasta}
    Input Text    ${Hasta}    ${13000000}
    Wait Until Element Is Visible    ${Localcode}
    Click Element    ${Localcode}
    Input Text    ${Localcode}    ${312}
    Wait Until Element Is Visible    ${Combostates}
    Click Element    ${Combostates}
    Wait Until Element Is Visible    ${Todosstates}
    Click Element    ${Todosstates}
    Wait Until Element Is Visible    ${Combotype}
    Click Element    ${Combotype}
    Wait Until Element Is Visible    ${Todostype}
    Click Element    ${Todostype}
