*** Settings ***
Documentation    Administración de políticas de instalación
Library    SeleniumLibrary
Library    XML
#Library    RPA.Browser.Selenium


*** Variables ***
#########################Validacion de usuarios######################################
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}    Chrome  
${user}    xpath=//input[@id='Username']
${Pagina}   https://global.qa-cluster.sfycnextgen.com.mx/ui/ 
@{USERL}=    Create List    joriospe    #LUSANCHEZA    FCURIELF    MARAMIREZ    joriospe                                                                                                       
@{passL}=    Create List    Mega12345    #Enero.2028    Reforma191    Sainz123    Mega12345                                                                                                                                                                                                                                                                                                                                                                                                              
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#################Screen administración de políticas de instalación########################
${Botoncargadepallets}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[16]   
${Botonequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]
${Botonoperacionesequipos}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]
${Botonadministracionpoliticasdeinstalacion}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]/div/app-side-navigation-menu/div/dx-tree-view/div[3]/div/div/div[1]/ul/li[2]/ul/li[3]/ul/li[13]
###############################Technology field and search in description##############################################################
${Technologyfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Descriptiontechnology}    xpath=//input[contains(@maxlength,'15')]
${HFC}    HFC    
${TechnologyHFC}    xpath=(//td[contains(.,'HFC')])[7]
##############################Available field and search in description################################################################
${Availablefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Descriptionavailable}    xpath=//input[contains(@maxlength,'2')]
${Si}    Si
${Availableyes}    xpath=//td[@aria-describedby='dx-col-12'][contains(.,'Si')]
###############################Customer type field and search in description##############################################################
${Customertypefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Descriptioncustomertype}    xpath=(//input[contains(@autocomplete,'off')])[21]
${Residencial}    Residencial
${Customertyperesidencial}    xpath=//td[@aria-describedby='dx-col-13'][contains(.,'R')]
##############################Multiseleccion customer type#############################################################################################
${Customertypeempresarial}    xpath=//td[contains(.,'Empresarial')]
${Customertypehotel}    xpath=//td[contains(.,'Hotel')]
##############################NSE fiel and search in description#############################################################################
${NSEfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${DescriptionNSE}    xpath=//input[contains(@maxlength,'30')]
${ClaseAltaAlta}    Clase Alta Alta    
${NSEclasealtaalta}    xpath=//td[@aria-describedby='dx-col-15'][contains(.,'A')]
##############################Multiseleccion NSE###################################################################################################
${NSEclasealtobajo}    xpath=//td[@aria-describedby='dx-col-15'][contains(.,'B')]
##############################Type of service field and search in description#################################################################
${Typeofservicefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Descriptiontypeofservice}    xpath=//input[contains(@maxlength,'20')]
${Internet}    Internet
${Typeofserviceinternet}    xpath=(//td[contains(.,'Internet')])[5]
##############################Type of equipment field###############################################################################################
${Typeofequipmentfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Descriptiontypeofequipment}    xpath=//input[contains(@maxlength,'7081')]
${SWITCH}    Cable
${Typeofequipmentswitch}    xpath=//td[contains(.,'CABLE MODEMS')]
#############################Service field and search in description###############################################################################
${Servicefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Descriptionservice}    xpath=//input[contains(@maxlength,'25')]
${Cablemodemresidencial}    Cable modem residencial
${Servicecablemodemresidencial}    xpath=//td[contains(.,'Cable Modem Residencial')]
############################Multiseleccion service##############################################################################################
${Serviceintresilimitado70}    xpath=//td[contains(.,'102')]
${ServiceInternetResid20MbpsLE}    xpath=(//span[@class='dx-checkbox-icon'])[25]
#################################Model field and search in description################################################################################
${Modelfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[9]
${Descriptionmodel}    xpath=//input[contains(@maxlength,'7094')]    
${AMBIT}    3CR29220
${ModelAMBIT}    xpath=//td[contains(.,'3CR29220')]
##################################Multiple selection model#############################################################################################
${Model2500}    xpath=//td[contains(.,'2500')]
##################################Button agregar######################################################################################################
${Buttonagregar}    xpath=//span[contains(.,'Agregar')]
##################################Notification blue##################################################################################################
${warning}    xpath=(//div[contains(.,'¡Aviso del sistema!')])[8]    
${Notificationblue}    xpath=//div[@class='dx-button-content'][contains(.,'Enviar')]
#################################Close notification##################################################################################################
${Closenotification}    xpath=//i[@class='dx-icon dx-icon-close']
################################Button modify###########################################################################################################
${Registeroftable}    xpath=(//td[@aria-describedby='dx-col-4'][contains(.,'Otros Serv Hotel')])[2]
${Service1}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[22]
${Buttonmodify}    xpath=//span[contains(.,'Modificar')]
################################Button exportar todo###################################################################################################
${Buttonexportar}    xpath=//i[@class='dx-icon dx-icon-export-excel-button']
###############################Filters#################################################################################################################
${Buttonaceptarfilter}    xpath=//span[contains(.,'Aceptar')]
${Filtertecnology}    xpath=//td[@id='dx-col-1']/div/span[2]
${GPON}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'GPON')]
${Filtercustomertype}    xpath=//*[@id="dx-col-2"]/div[1]
${.E.}    xpath=(//span[@class='dx-checkbox-icon'])[2] 
${FilterNSE}    xpath=//*[@id="dx-col-3"]/div[1]    
${Filtertypeofservice}    xpath=//*[@id="dx-col-4"]/div[1]
${Filterservice}    xpath=//*[@id="dx-col-5"]/div[1]
${Filtertypeofequipment}    xpath=//td[@id='dx-col-6']/div/span[2]
${Filteravailable}    xpath=//td[@id='dx-col-7']/div/span[2]
${Filtermodel}    xpath=//td[@id='dx-col-8']/div/span[2]
#############################Button clean############################################################################################################
${Buttonclean}    xpath=//span[@class='dx-button-text'][contains(.,'Limpiar')]
############################Button cancelar##########################################################################################################
${Buttoncancelar}    xpath=(//span[contains(.,'Cancelar')])[2]
###########################Excluir politica##########################################################
${Checkbox_todas_sucursales}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[33]
${Combo_sucursales}    xpath=(//input[contains(@autocomplete,'off')])[26]
${Sucursal}    xpath=//td[contains(.,'001')]
${Checkbox_excluir}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[45]
#########################Errores#######################################################################
${Error_Unspecified_network_error}    Unspecified network error

*** Test Cases ***
Usuarios con permisos a la pantalla
    Validacion de usuarios

Technology field and search in description
    Technology field
    Description HFC
    Technology HFC

Available field and search in description
    Available field
    Description available
    Available yes
    
Customer type field and search in description
    Customer type field
    Description customer type
    Customer type residencial
    Customer type field

Multiseleccion customer type
    Customer type field
    Multiseleccion customer type

NSE field and search in description
    NSE field
    Description NSE
    NSE Clase Alta Alta
    NSE field

Multiseleccion NSE
    NSE field
    Multiseleccion NSE

Type of service field and search in description
    Type of service field
    Description type of service
    Type of service internet
    
Type of equipment field and search in description
    Type of equipment field
    Description type of equipment
    Type of equipment SWITCH

Service field and search in description
    Service field
    Description service
    Service cable modem residencial
    Service field

Multiple selection of services
    Service field
    Multiple selection of services
    Service field
    
Model field and search in description
    Model field
    Description model
    Model AMBIT

Multiple selection model
    Multiple selection model

Button add
    Button add
    Close notification  

Button modify
    Close notification
    Select register of table
    Customer type field
    Customer type residencial
    Customer type field
    Button modify

Button export all
    Close notification   
    Button export

Button clear
    Button clean
    
Filters
    Filter technology
    Filter customer type
    Filter NSE
    Filter type of service
    Filter serivice
    Filter type of equipment
    Filter available
    Filter model 

Exclude policy
    Select register of table
    Checkbox todas las sucursales
    Sucursal
    Checkbox excluir
    Button modify
    Close notification

Repeated policy
    Select register of table
    Checkbox todas las sucursales
    Sucursal
    Checkbox excluir
    Button modify
    Close notification
    
Button cancelar
    Button cancelar    

*** Keyword ***
Validacion de usuarios
    #FOR    ${counter}    IN RANGE    1     5 
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
        Scroll Element Into View    ${Botonadministracionpoliticasdeinstalacion}
        Sleep    7s
        Click Element    ${Botonadministracionpoliticasdeinstalacion} 
    #IF    ${counter} <= ${3}
        #Sleep    10s
        #Close Browser
    #END
   END

Technology field
    Wait Until Element Is Visible    ${Technologyfield}
    Click Element    ${Technologyfield}

Description HFC
    Wait Until Element Is Visible    ${Descriptiontechnology}
    Input Text    ${Descriptiontechnology}    ${HFC}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

Technology HFC
    Wait Until Element Is Visible    ${TechnologyHFC}
    Click Element    ${TechnologyHFC}

Available field
    Wait Until Element Is Visible    ${Availablefield}
    Click Element    ${Availablefield}

Description available
    Wait Until Element Is Visible    ${Descriptionavailable}
    #Sleep    5s
    Input Text    ${Descriptionavailable}    ${Si}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

Available yes
    Wait Until Element Is Visible    ${Availableyes}
    Click Element    ${Availableyes}

Customer type field
    Wait Until Element Is Visible    ${Customertypefield}
    Click Element    ${Customertypefield}

Description customer type
    Wait Until Element Is Visible    ${Descriptioncustomertype}
    Input Text    ${Descriptioncustomertype}    ${Residencial}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

Customer type residencial
    Wait Until Element Is Visible    ${Customertyperesidencial}
    Click Element    ${Customertyperesidencial}

Multiseleccion customer type
    Wait Until Element Is Visible    ${Descriptioncustomertype}
    Clear Element Text    ${Descriptioncustomertype}
    Wait Until Element Is Visible    ${Customertypeempresarial}
    Click Element    ${Customertypeempresarial}
    Wait Until Element Is Visible    ${Customertypefield}
    Click Element    ${Customertypefield}

NSE field
    Wait Until Element Is Visible    ${NSEfield}
    Click Element    ${NSEfield}
    
Description NSE
    Wait Until Element Is Visible    ${DescriptionNSE}
    Input Text    ${DescriptionNSE}    ${ClaseAltaAlta}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

NSE Clase Alta Alta
    Wait Until Element Is Visible    ${NSEclasealtaalta}
    Click Element    ${NSEclasealtaalta}

Multiseleccion NSE
    Wait Until Element Is Visible    ${DescriptionNSE}
    Clear Element Text    ${DescriptionNSE}
    #Wait Until Element Is Visible    ${NSEclasealtobajo}
    Sleep    5s
    Click Element    ${NSEclasealtobajo}
    Wait Until Element Is Visible    ${NSEfield}
    Click Element    ${NSEfield}

Type of service field
    Wait Until Element Is Visible    ${Typeofservicefield}
    Click Element    ${Typeofservicefield}

Description type of service
    Wait Until Element Is Visible    ${Descriptiontypeofservice}
    Input Text    ${Descriptiontypeofservice}    ${Internet}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

Type of service internet
    Wait Until Element Is Visible    ${Typeofserviceinternet}
    Click Element    ${Typeofserviceinternet}

Type of equipment field
    Wait Until Element Is Visible    ${Typeofequipmentfield}
    Click Element    ${Typeofequipmentfield}

Description type of equipment
    Wait Until Element Is Visible    ${Descriptiontypeofequipment}
    Input Text    ${Descriptiontypeofequipment}    ${SWITCH}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

Type of equipment SWITCH
    Wait Until Element Is Visible    ${Typeofequipmentswitch}
    Click Element    ${Typeofequipmentswitch}

Service field
    Wait Until Element Is Visible    ${Servicefield}
    Click Element    ${Servicefield}

Description service
    #Wait Until Element Is Visible    ${Descriptionservice}
    Sleep    5s
    Input Text    ${Descriptionservice}    ${Cablemodemresidencial}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

Service cable modem residencial
    Wait Until Element Is Visible    ${Servicecablemodemresidencial}
    #Sleep    5s
    Click Element    ${Servicecablemodemresidencial}

Multiple selection of services
    Wait Until Element Is Visible    ${Descriptionservice}
    Clear Element Text    ${Descriptionservice}
    #Wait Until Element Is Visible    ${NSEclasealtobajo}
    Sleep    5s
    Click Element    ${Serviceintresilimitado70}

Model field
    Wait Until Element Is Visible    ${Modelfield}
    Click Element    ${Modelfield}

Description model
    #Wait Until Element Is Visible    ${Descriptionmodel}
    Sleep    5s
    Input Text    ${Descriptionmodel}    ${AMBIT}
    Sleep    5s
    ${Contiene_errores}=    Run Keyword And Return Status    Wait Until Page Contains    ${Error_Unspecified_network_error}
    IF    '${Contiene_errores}' == 'True'
        Capture Page Screenshot
    ELSE
        Sleep    3s
    END

Model AMBIT
    #Wait Until Element Is Visible    ${ModelAMBIT}
    Sleep    7s
    Click Element    ${ModelAMBIT}

Multiple selection model
    Wait Until Element Is Visible    ${Descriptionmodel}
    Clear Element Text    ${Descriptionmodel}
    #Wait Until Element Is Visible    ${Model2500}
    Sleep    5s
    Click Element    ${Model2500}
    Wait Until Element Is Visible    ${Modelfield}
    Click Element    ${Modelfield}

Button add
    Wait Until Element Is Visible    ${Buttonagregar}
    Click Element    ${Buttonagregar}

Close notification blue
    Wait Until Element Is Visible    ${Notificationblue}
    Click Element    ${Notificationblue}

Close notification
    Sleep    15s
    ${Bandera_notificacion}=    Run Keyword And Return Status    Click Element    ${Closenotification}
    IF    '${Bandera_notificacion}' == True   
        Sleep    5s
    END  
    #Wait Until Element Is Visible    ${Closenotification}

Select register of table
    Wait Until Element Is Visible    ${Registeroftable}
    Click Element    ${Registeroftable}
    Sleep    5s

Modify parameter
    Wait Until Element Is Visible    ${Servicefield}
    Click Element    ${Servicefield}    
    Wait Until Element Is Visible    ${Service1}
    Click Element    ${Service1}
    Click Element    ${Servicefield}

Button modify
    Wait Until Element Is Visible    ${Buttonmodify}
    Click Element    ${Buttonmodify}

Button export
    Wait Until Element Is Visible    ${Buttonexportar}
    Click Element    ${Buttonexportar}

Filter technology
    #Wait Until Element Is Visible    ${Filtertecnology}
    Sleep    5s
    Click Element    ${Filtertecnology}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtertecnology}
    Click Element    ${Filtertecnology}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}

Filter customer type
    Wait Until Element Is Visible    ${Filtercustomertype}
    Click Element    ${Filtercustomertype}
    Sleep    5s
    Click Element    ${.E.}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtercustomertype}
    Click Element    ${Filtercustomertype}
    Sleep    5s
    Click Element    ${.E.}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}

Filter NSE
    Wait Until Element Is Visible    ${FilterNSE}
    Click Element    ${FilterNSE}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${FilterNSE}
    Click Element    ${FilterNSE}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}

Filter type of service
    Wait Until Element Is Visible    ${Filtertypeofservice}
    Click Element    ${Filtertypeofservice}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtertypeofservice}
    Click Element    ${Filtertypeofservice}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}

Filter serivice
    Wait Until Element Is Visible    ${Filterservice}
    Click Element    ${Filterservice}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${Filterservice}
    Click Element    ${Filterservice}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    
Filter type of equipment
    #Wait Until Element Is Visible    ${Filtertypeofequipment}
    Sleep    5s
    Click Element    ${Filtertypeofequipment}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtertypeofequipment}
    Click Element    ${Filtertypeofequipment}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}

Filter available
    Wait Until Element Is Visible    ${Filteravailable}
    Click Element    ${Filteravailable}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${Filteravailable}
    Click Element    ${Filteravailable}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}

Filter model
    Wait Until Element Is Visible    ${Filtermodel}
    Click Element    ${Filtermodel}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}
    Sleep    7s
    Wait Until Element Is Visible    ${Filtermodel}
    Click Element    ${Filtermodel}
    Sleep    5s
    Click Element    ${GPON}
    Wait Until Element Is Visible    ${Buttonaceptarfilter}
    Click Element    ${Buttonaceptarfilter}

Button clean
    Wait Until Element Is Visible    ${Buttonclean}
    Click Element    ${Buttonclean}    

Button cancelar
    Wait Until Element Is Visible    ${Buttoncancelar}
    Click Element    ${Buttoncancelar}

Checkbox todas las sucursales
    Wait Until Element Is Visible    ${Checkbox_todas_sucursales}
    Click Element    ${Checkbox_todas_sucursales}

Sucursal
    Wait Until Element Is Visible    ${Combo_sucursales}
    Click Element    ${Combo_sucursales}
    Sleep    6s
    Click Element    ${Sucursal}

Checkbox excluir
    Wait Until Element Is Visible    ${Checkbox_excluir}
    Click Element    ${Checkbox_excluir}
