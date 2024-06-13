*** Settings ***
Documentation    Configuracion de settops
#Library    RPA.Windows
Library    SeleniumLibrary

*** Variables ***
#######################################Variables de inicio de sesion tanto para dev como para QA######################################################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    AHERNANDEZSI    RCUEVASE    AJMARELLANOA    NHERNANDEZB    LSANTOSH    PJNAVARROR    JMADRIGAL    joriospe                                                                                                                                                                   
@{passL}=    Create List    Megacable2022*    Ulises1986    M1aYaretz1    Megacable2022    Mega2023    Enero.2020    Megacable.2020    Mega12345                                                                                                                                                                                     
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
########################################################################################################################################################################################
${Bottonadministraciondeanis}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[11]
${Bottonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Bottonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/div[1]
${Bottonconfiguracionsettops}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[6]
${Campobuscarserie}    xpath=//input[contains(@maxlength,'35')]
${Serietipoequipo2}    06KXRHVKYSW8                           
${Cerrarnotificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Serietipoequipo4}    167199929                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
${Checkboxrefrescar}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[3]
${Botonaceptar}    xpath=//div[@class='dx-button-content'][contains(.,'Aceptar')]
${Notificacionfinalizoelprocesodevalidacion}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${SerieconubicacionCLI}    125000445                          
${Nuevaserietipoequipo4}    167199967                                 
${IconoDCX3400}    xpath=(//div[contains(@class,'dx-radiobutton-icon')])[5]
${Seriehaquemar}    167200066    

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Configuracion equipo tipo 2
    Equipo tipo 2
    Cerrar notificacion

Configuracion equipo tipo 4
    Equipo tipo 4

Serie ya agregada
    Equipo tipo 4
    Cerrar notificacion

Configurar
    Checkbox refrescar
    Boton aceptar
    Cerrar notificacion finalizo el proceso de validacion

Ubicacion CLI
    Equipo con ubicacion CLI
    Cerrar notificacion finalizo el proceso de validacion

Validar DCX3400
    Nueva serie tipo equipo 4
    Icono validar DCX3400 y DCX3510m
    Boton aceptar
    Cerrar notificacion finalizo el proceso de validacion

Quemar
    Serie ha quemar
    Boton aceptar
    Cerrar notificacion finalizo el proceso de validacion

*** Keyword ***
Validacion de usuarios
    FOR    ${counter}    IN RANGE    1     9 
    #FOR    ${counter}    IN RANGE    1     2
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
        Click Element    ${Bottonequipos}
        Wait Until Element Is Visible    ${Bottonoperacionesequipos}
        Click Element    ${Bottonoperacionesequipos}
        Sleep    5s
        Scroll Element Into View    ${Bottonadministraciondeanis}
        Wait Until Element Is Visible    ${Bottonconfiguracionsettops}
        Click Element    ${Bottonconfiguracionsettops}   
    IF    ${counter} <= ${7}
        Sleep    10s
        Close Browser
    END
   END

Equipo tipo 2
    Sleep    7s
    Input Text    ${Campobuscarserie}    ${Serietipoequipo2} 
    Wait Until Element Is Visible    ${Campobuscarserie}
    Press Keys    ${Campobuscarserie}    ENTER

Cerrar notificacion
    Sleep    7s
    Click Element    ${Cerrarnotificacion}

Equipo tipo 4
    Sleep    5s
    Input Text     ${Campobuscarserie}    ${Serietipoequipo4}
    Wait Until Element Is Visible    ${Campobuscarserie}
    Press Keys    ${Campobuscarserie}    ENTER

Checkbox refrescar
    Wait Until Element Is Visible    ${Checkboxrefrescar}
    Click Element   ${Checkboxrefrescar}

Boton aceptar
    Sleep    5s
    Click Element    ${Botonaceptar}

Cerrar notificacion finalizo el proceso de validacion
    Sleep    10s
    Click Element    ${Notificacionfinalizoelprocesodevalidacion}

Equipo con ubicacion CLI
    Sleep    5s
    Input Text    ${Campobuscarserie}    ${SerieconubicacionCLI}
    Press Keys    ${Campobuscarserie}    ENTER    

Nueva serie tipo equipo 4
    Sleep    5s
    Input Text    ${Campobuscarserie}    ${Nuevaserietipoequipo4}
    Wait Until Element Is Visible    ${Campobuscarserie}
    Press Keys    ${Campobuscarserie}    ENTER

Icono validar DCX3400 y DCX3510m
    Wait Until Element Is Visible    ${IconoDCX3400}
    Click Element    ${IconoDCX3400}

Serie ha quemar
    Sleep    5s
    Input Text    ${Campobuscarserie}    ${Seriehaquemar}
    Wait Until Element Is Visible    ${Campobuscarserie}
    Press Keys    ${Campobuscarserie}    ENTER
