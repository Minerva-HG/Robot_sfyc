*** Settings ***
#Documentation    Opciones de Click
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
#Library    XML
#Library    RPA.Windows
#Library    RPA.Robocloud.Items
#Library    RPA.Excel.Files
#Library    RPA.Dialogs
Library    SeleniumLibrary
#Library    RPA.Browser.Selenium


*** Variables ***
#################Screen Recoger equipos a cuadrilla########################   
${Bottoncargadepallets}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[16]
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui/
${Usuario}  mihernandezg
${Pass}  ATENEAmini03
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonoperacionesequipos}  xpath=//span[contains(.,'Operaciones Equipos')]
${Bottonrecogerequiposacuadrilla}    xpath=//span[contains(.,'Recoger Equipos a Cuadrilla')]
############################pick up equipment from another branch###############################
${Buttontypecuadrilla}    xpath=(//div[@class='dx-dropdowneditor-icon'])[2]
${Inputtexttipocuadrilla}    xpath=//input[contains(@maxlength,'7094')]
${REC}    REC
${Typecuadrilla}    xpath=//td[contains(.,'REC Recuperadores')]
${Buttoncuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Inputtextcuadrilla}    xpath=//input[contains(@max,'9999')]
${0170}    0170
${Cuadrilla}    xpath=//td[contains(.,'0170')]
${Inputtextserie}    xpath=//dx-text-box/div/div/input
${Serie}    280587057
${Buttonaceptar}    xpath=(//span[contains(.,'Aceptar')])[2]
${Closenotification}    xpath=(//i[@class='dx-icon dx-icon-close'])[2]
############################Pick up equipment###################################################
${Sucursales}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[1]
${Id}    xpath=//input[contains(@max,'32767')]
${1}    1
${Branch}    xpath=//td[contains(.,'Hermosillo')]
${Buttonaceptar2}    xpath=(//span[contains(.,'Aceptar')])[1]
###########################Equipos ya enviados anteriormente####################################
${Buttonlimpiar}    xpath=//span[contains(.,'Limpiar')]
${Addseriesent}    0HYTV0YD4B35    
###########################Seriesdoesnotexist####################################################
${Seriesdoesnotexist}    0HYTV0YD1997
###########################Crew type and empty crew##############################################
${Emptycrew}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
${Typecrewempty}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[1]
############################Add serie with character limit#######################################
${seriewithcharacterlimit}    237004105237004105237004105237004105        

*** Test Cases ***
Enter user
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Enter user and password

Screen recoger equipos a cuadrilla
    #Menu
    Operaciones equipos
    Recoger equipos a cuadrilla

Pick up equipment from another branch 
    Type cuadrilla
    Cuadrilla
    Add serie
    Grid reception validation
    #Run Keyword If    "${Buttonaceptar}" == "${Buttonaceptar}"
    #...    Grid reception validation   
    #...  ELSE
    #...    Notification
    

Pick up equipment
    Notification
    Branch
    Type cuadrilla
    Cuadrilla
    Add serie
    Grid reception validation
    Button aceptar

Teams sent
    Button limpiar
    Type cuadrilla
    Cuadrilla
    Add serie sent
    Grid reception validation
    #Run Keyword If    "${Buttonaceptar}" == "${Buttonaceptar}"
    #...    Grid reception validation   
    #...  ELSE
    #...    Notification
    Notification

    
Series does not exist
    Series does not exist
    Grid reception validation
    Notification

Empty fields
    Crew type and empty crew

Character limit
    Type cuadrilla
    Cuadrilla
    Add serie with character limit
    Grid reception validation
    

*** Keyword ***
Enter user and password
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text    name:Password   ${Pass}
    #Click Element    ${Botondominio}
    #Click Element    ${SFyC}
    Click Element   name:button

Menu
    Sleep    15s
    Click Element    ${Bottonmenu}

Operaciones equipos
    Wait Until Element Is Visible    ${Bottonoperacionesequipos}
    Click Element  ${Bottonoperacionesequipos}
    Sleep    5s
    Click Element    ${Bottonrecogerequiposacuadrilla}

Recoger equipos a cuadrilla
    Sleep    5s
    Scroll Element Into View    ${Bottoncargadepallets}
    Wait Until Element Is Visible    ${Bottonrecogerequiposacuadrilla}
    Click Element    ${Bottonrecogerequiposacuadrilla}

Type cuadrilla
    Wait Until Element Is Visible    ${Buttontypecuadrilla}
    Click Element    ${Buttontypecuadrilla}
    Set Selenium Implicit Wait    15
    Input Text   ${Inputtexttipocuadrilla}    ${REC}
    Wait Until Element Is Visible    ${Typecuadrilla}
    Click Element    ${Typecuadrilla}

Cuadrilla
    Wait Until Element Is Visible    ${Buttoncuadrilla}
    Click Element    ${Buttoncuadrilla}
    Wait Until Element Is Visible    ${Inputtextcuadrilla}
    Input Text     ${Inputtextcuadrilla}    ${0170}
    Wait Until Element Is Visible    ${Cuadrilla}
    Click Element    ${Cuadrilla}

Add serie
    Wait Until Element Is Visible    ${Inputtextserie}
    Click Element     ${Inputtextserie}
    Input Text     ${Inputtextserie}    ${Serie}
    Press Keys    ${Inputtextserie}    ENTER

Grid reception validation
    Wait Until Element Is Visible    ${Buttonaceptar}
    Sleep    3s
    #Double Click Element    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}

Notification
    Sleep    15s
    Click Element    ${Closenotification}

Branch
    Wait Until Element Is Visible    ${Sucursales}
    Click Element    ${Sucursales}
    #Input Text When Element Is Visible    ${Id}    ${1}
    Wait Until Element Is Visible    ${Branch}
    Click Element    ${Branch}

Button aceptar
    #Wait Until Element Is Visible    ${Buttonaceptar2}
    Wait Until Page Contains    ${Serie}
    #Wait Until Page Contains Element    ${Buttonaceptar}
    Click Element    ${Buttonaceptar2}

Button limpiar
    Sleep    5s
    Click Element    ${Buttonlimpiar}

Add serie sent
    Wait Until Element Is Visible    ${Inputtextserie}
    Click Element     ${Inputtextserie}
    Input Text     ${Inputtextserie}    ${Addseriesent}
    Press Keys    ${Inputtextserie}    ENTER

Series does not exist
    Wait Until Element Is Visible    ${Inputtextserie}
    Click Element     ${Inputtextserie}
    Input Text     ${Inputtextserie}    ${Seriesdoesnotexist}
    Press Keys    ${Inputtextserie}    ENTER

Crew type and empty crew
    Wait Until Element Is Visible    ${Typecrewempty}
    Click Element    ${Typecrewempty}
   
Add serie with character limit
    Wait Until Element Is Visible    ${Inputtextserie}
    Click Element     ${Inputtextserie}
    Input Text     ${Inputtextserie}    ${seriewithcharacterlimit}
    Press Keys    ${Inputtextserie}    ENTER