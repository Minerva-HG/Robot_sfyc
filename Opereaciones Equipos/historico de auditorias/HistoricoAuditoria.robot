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
${Pagina}  https://servicios.dev-cluster.sfycnextgen.com.mx/ui/
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Bottonhistoricodeauditoria}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[15]
#########################Desde fecha##############################################
${Combodesdefecha}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[1]
${Month}    xpath=//i[contains(@class,'dx-icon dx-icon-chevronleft')]
${Date}    xpath=(//span[contains(.,'9')])[1]
#############################Hasta fecha###################################################
${Combohastafecha}    xpath=(//i[contains(@class,'dx-icon dx-icon-event')])[2]
#############################Button buscar##################################################
${Buttonbuscar}    xpath=//span[contains(.,'Buscar')]
#############################Export all######################################################
${Buttonexport}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
#############################Button actualizar###############################################
${Buttonactualizar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
##############################Filters########################################################
${Filterserie}    xpath=//input[contains(@maxlength,'35')]        
${Serie}    G8X6H22000510
${Filtertypeofequipment}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Typeofequipment}    4
${Filtergroupbranch}    xpath=(//input[contains(@autocomplete,'off')])[6]    
${groupbranch}    54
${Filterprocess}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-logbook-equipment-down-grid/div/div[2]/dx-data-grid/div/div[5]/div/table/tbody/tr[1]/td[4]/div[1]/span[2]
${Process}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[3]
${Buttonaceptar}    xpath=//span[contains(.,'Aceptar')]
${Filtermodel}    xpath=//input[@maxlength='10']
${Model}    UBC1307
${Filterregion}    xpath=//input[contains(@maxlength,'100')]
${Region}    TCO    
${Filterbranch}    xpath=//input[contains(@maxlength,'20')]
${Branch}    Yurecuaro    
${Barraespaciadora}    xpath=(//div[@class='dx-scrollable-container'][contains(.,'Z43719100281719433Registro de movimientoB826C-A12 TCOMoreliaCLI9/6/2022HMORALESPZTEGC8F3AEEF233Registro de movimientoF670LV11  TCOMoreliaCLI24/6/2022LPEDRAZAZ412201104263644436Registro de movimientoB866V2    TCOMoreliaCLI7/6/2022JOVARGASSZ41220110238811433Asignación de equipos a cuadrillaB866V2    TCOMoreliaCLI20/6/2022JGARCIAYJ647Q21007235233Registro de movimientoUBC1310BA1TCOMoreliaCLI16/6/2022ALMARTINEZALM90914FXK939454Asignación de equipos a cuadrillaDCT700    TCOMoreliaCNR30/6/2022HHUERTAM1604EJ015144156Registro de movimientoDTA101u   TCOCadereytaCLI17/6/2022MMARTINEZMJ1W6E12007431233Registro de movimientoUBC1310   TCOMoreliaCLI23/6/2022JOVARGASSMA1209EN6775433Registro de movimientoDTA101    TCOMoreliaCLI27/6/2022JOVARGASSZ43719100280943433Asignación de equipos a cuadrillaB826C-A12 TCOMoreliaCLI4/7/2022JZEPEDA')])[2]
${Filterubicacion}    xpath=//td[8]/div/div[2]/div/div/div/input
${Ubicacion}    CNR
${Filterdate}    xpath=//input[contains(@maxlength,'9')]    
${datefilter}    24/6/2022    
${Filteruser}    xpath=//input[contains(@maxlength,'15')]
${User}    JOVARGASS

*** Test Cases ***
Enter user
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Enter user and password

Screen histórico de auditoría
    Menu
    Operaciones equipos
    Histórico de auditoría
    
Combo desde fecha
    Combo desde fecha
    Month june
    
Combo hasta fecha
    Combo hasta fecha

Button buscar
    Button buscar

Export alll
    Button export

Button actualizar
    Button actualizar

Filters    
    Filter serie
    Filter type of equipment
    Filter group branch
    Filter process
    Filter model
    Filter region
    Filter branch
    Filter ubicacion
    Filter date
    Filter user

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

Histórico de auditoría
    Sleep    5s
    Scroll Element Into View    ${Bottoncargadepallets}
    Wait Until Element Is Visible    ${Bottonhistoricodeauditoria}
    Click Element    ${Bottonhistoricodeauditoria}

Combo desde fecha
    Wait Until Element Is Visible    ${Combodesdefecha}
    Click Element    ${Combodesdefecha}

Month june
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Month}
    Click Element    ${Month}
    Wait Until Element Is Visible    ${Date}
    Click Element    ${Date}

Combo hasta fecha
    Wait Until Element Is Visible    ${Combohastafecha}
    Click Element    ${Combohastafecha}
    Sleep    7s
    Click Element    ${Combohastafecha}

Button buscar
    Wait Until Element Is Visible    ${Buttonbuscar}
    Click Element    ${Buttonbuscar}

Button export
    Sleep    5s
    Click Element    ${Buttonexport}

Button actualizar
    Wait Until Element Is Visible    ${Buttonactualizar}
    Click Element    ${Buttonactualizar}

Filter serie
    Wait Until Element Is Visible    ${Filterserie}
    Click Element    ${Filterserie}
    Input Text    ${Filterserie}    ${Serie}
    Press Keys    ${Filterserie}    ENTER
    Sleep    7s
    Clear Element Text    ${Filterserie}

Filter type of equipment
    Wait Until Element Is Visible    ${Filtertypeofequipment}
    Click Element    ${Filtertypeofequipment}
    Input Text    ${Filtertypeofequipment}    ${Typeofequipment}
    Press Keys    ${Filtertypeofequipment}    ENTER
    Sleep    7s
    Clear Element Text    ${Filtertypeofequipment}

Filter group branch
    Wait Until Element Is Visible    ${Filtergroupbranch}
    Click Element    ${Filtergroupbranch}
    Input Text    ${Filtergroupbranch}    ${groupbranch}
    Press Keys    ${Filtergroupbranch}    ENTER
    Sleep    7s
    Clear Element Text    ${Filtergroupbranch}

Filter process
    #Wait Until Element Is Visible    ${Filterprocess}
    Sleep    7s
    Click Element    ${Filterprocess}
    Wait Until Element Is Visible    ${Process}
    Click Element    ${Process}
    Wait Until Element Is Visible    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}
    Sleep    7s
     Wait Until Element Is Visible    ${Filterprocess}
    Click Element    ${Filterprocess}
    Wait Until Element Is Visible    ${Process}
    Click Element    ${Process}
    Wait Until Element Is Visible    ${Buttonaceptar}
    Click Element    ${Buttonaceptar}

Filter model
    Wait Until Element Is Visible    ${Filtermodel}
    Click Element    ${Filtermodel}
    Input Text    ${Filtermodel}    ${Model}
    Press Keys    ${Filtermodel}    ENTER
    Sleep    10s
    Clear Element Text    ${Filtermodel}

Filter region
    Wait Until Element Is Visible    ${Filterregion}
    Click Element    ${Filterregion}
    Input Text    ${Filterregion}    ${Region}
    Press Keys    ${Filterregion}    ENTER
    Sleep    10s
    Clear Element Text    ${Filterregion}

Filter branch
    Wait Until Element Is Visible    ${Filterbranch}
    Click Element    ${Filterbranch}
    Input Text    ${Filterbranch}    ${Branch}
    Press Keys    ${Filterbranch}    ENTER
    Sleep    10s
    Clear Element Text    ${Filterbranch}

Filter ubicacion
    #Wait Until Element Is Visible    ${Filterubicacion}
    Sleep    10s
    Click Element    ${Filterubicacion}
    Input Text    ${Filterubicacion}    ${Ubicacion}
    Press Keys    ${Filterubicacion}    ENTER
    Sleep    10s
    Clear Element Text    ${Filterubicacion}

Filter date
    Wait Until Element Is Visible    ${Filterdate}
    Click Element    ${Filterdate}
    Input Text    ${Filterdate}    ${datefilter}
    Press Keys    ${Filterdate}    ENTER
    Sleep    10s
    Clear Element Text    ${Filterdate}

Filter user
    Wait Until Element Is Visible    ${Filteruser}
    Click Element    ${Filteruser}
    Input Text    ${Filteruser}    ${user}
    Press Keys    ${Filteruser}    ENTER
    Sleep    10s
    Clear Element Text    ${Filteruser}