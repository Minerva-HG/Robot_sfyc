*** Settings ***
Documentation    Recoger equipos a cuadrilla
Library    SeleniumLibrary
#Library    RPA.Browser.Selenium


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
#################Screen Recoger equipos a cuadrilla########################   
${Botoncargadepallets}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[16]
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Botonrecogerequiposacuadrilla}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[12]
${Buttoncancelar}    xpath=(//span[contains(.,'Cancelar')])[1]
############################pick up equipment from another branch###############################
${Buttontypecuadrilla}    xpath=(//div[@class='dx-dropdowneditor-icon'])[2]
${Inputtexttipocuadrilla}    xpath=//input[contains(@maxlength,'7094')]
${REC}    REC
${Typecuadrilla}    xpath=//td[contains(.,'REC Recuperadores')]
${Buttoncuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Inputtextcuadrilla}    xpath=//input[contains(@max,'9999')]
${0170}    0108
${Cuadrilla}    xpath=//td[contains(.,'0108')]
${Inputtextserie}    xpath=//dx-text-box/div/div/input
${Serie}    273988605                     
${seriecorrespondecontrato}                                                                         
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
${Typecrewempty}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[2]
############################Add serie with character limit#######################################
${seriewithcharacterlimit}    237004105237004105237004105237004105        
############################Delete register################################################################
${Icon_delete}    xpath=//a[@href='#']
############################Notificacion amarilla###################################################################
${Notificacion_yellow}    xpath=/html/body/div[2]/div/div[1]/div/div[3]/div/div/div


*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Pick up equipment from another branch 
    Type cuadrilla
    Cuadrilla
    Add serie
    Grid reception validation
    Validando si existe alguna notificacion
    
Pick up equipment
    Branch
    Type cuadrilla
    Cuadrilla
    Add serie
    Grid reception validation
    Validando si existe alguna notificacion

Teams sent
    Add serie
    Validando si existe alguna notificacion

Reporte de equipos
    Button aceptar
    Validando si existe alguna notificacion

Test Delete register
    Delete register

Series does not exist
    Series does not exist
    Grid reception validation
    Validando si existe alguna notificacion

Empty fields
    Crew type and empty crew

Character limit
    Type cuadrilla
    Cuadrilla
    Add serie with character limit
  
Validar Botón Limpiar
    Boton limpiar

Botón cancelar
    Boton cancelar
    

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
        Scroll Element Into View    ${Botonrecogerequiposacuadrilla}
        Sleep    7s
        Click Element    ${Botonrecogerequiposacuadrilla} 
    #IF    ${counter} <= ${1}
        #Sleep    10s
        #Close Browser
    #END
   END

Type cuadrilla
    Sleep    10s
    Click Element    ${Buttontypecuadrilla}
    Set Selenium Implicit Wait    15
    Input Text   ${Inputtexttipocuadrilla}    ${REC}
    Wait Until Element Is Visible    ${Typecuadrilla}
    Click Element    ${Typecuadrilla}

Cuadrilla
    Wait Until Element Is Visible    ${Buttoncuadrilla}
    Click Element    ${Buttoncuadrilla}
    Sleep    5s
    Input Text     ${Inputtextcuadrilla}    ${0170}
    Sleep    5s
    Click Element    ${Cuadrilla}

Add serie
    Wait Until Element Is Visible    ${Inputtextserie}
    Click Element     ${Inputtextserie}
    Input Text     ${Inputtextserie}    ${Serie}
    Press Keys    ${Inputtextserie}    ENTER

Grid reception validation
    Sleep    7s
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
    Sleep    15s
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

Delete register
    Sleep    15s
    Click Element    ${Icon_delete}

Validando si existe alguna notificacion    
    Sleep    10s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Click Element    ${Closenotification}
    IF    '${Bandera_notificacion}' == True   
        Sleep    5s
    END   

Boton limpiar
    Wait Until Element Is Visible    ${Buttonlimpiar}
    Click Element    ${Buttonlimpiar}

Boton cancelar
    Wait Until Element Is Visible    ${Buttoncancelar}
    Click Element    ${Buttoncancelar}

Agregar serie corresponda a contrato
    Wait Until Element Is Visible    ${Inputtextserie}
    Click Element     ${Inputtextserie}
    Input Text     ${Inputtextserie}    ${seriecorrespondecontrato}
    Press Keys    ${Inputtextserie}    ENTER
