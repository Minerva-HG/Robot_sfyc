

*** Settings ***
#Documentation    Opciones de Click
#Library    RPA.Browser.Selenium    auto_close=${FALSE}
#Library    XML
#Library    RPA.Windows
#Library    RPA.Robocloud.Items
#Library    RPA.Excel.Files
#Library    RPA.Dialogs
Library    SeleniumLibrary
Library    XML
Library    RPA.RobotLogListener
#Library    RPA.Browser.Selenium


*** Variables ***
#################Screen administración de políticas de instalación########################   
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Buttonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Buttonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Buttonadministracionpoliticasdeinstalacion}    xpath=//span[contains(.,'Admin Politicas de Instalación')]
###############################Technology field and search in description##############################################################
${Technologyfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Descriptiontechnology}    xpath=//input[contains(@maxlength,'15')]
${HFC}    HFC    
${TechnologyHFC}    xpath=(//td[contains(.,'HFC')])[7]
##############################Available field and search in description################################################################
${Availablefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Descriptionavailable}    xpath=//input[contains(@maxlength,'2')]
${Si}    Si
${Availableyes}    xpath=//td[@aria-describedby='dx-col-10'][contains(.,'Si')]
###############################Customer type field and search in description##############################################################
${Customertypefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Descriptioncustomertype}    xpath=(//input[contains(@autocomplete,'off')])[21]
${Residencial}    Residencial
${Customertyperesidencial}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[2]
##############################Multiseleccion customer type#############################################################################################
${Customertypeempresarial}    xpath=//td[contains(.,'Empresarial')]
${Customertypehotel}    xpath=//td[contains(.,'Hotel')]
##############################NSE fiel and search in description#############################################################################
${NSEfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[5]
${DescriptionNSE}    xpath=//input[contains(@maxlength,'30')]
${ClaseAltaAlta}    Clase Alta Alta    
${NSEclasealtaalta}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[6]
##############################Multiseleccion NSE###################################################################################################
${NSEclasealtobajo}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[7]
##############################Type of service field and search in description#################################################################
${Typeofservicefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[6]
${Descriptiontypeofservice}    xpath=//input[contains(@maxlength,'20')]
${Internet}    Internet
${Typeofserviceinternet}    xpath=(//td[@aria-describedby='dx-col-16'][contains(.,'Internet')])[1]
##############################Type of equipment field###############################################################################################
${Typeofequipmentfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[8]
${Descriptiontypeofequipment}    xpath=//input[contains(@maxlength,'7081')]
${SWITCH}    CABLE MODEMS
${Typeofequipmentswitch}    xpath=//td[@aria-describedby='dx-col-18'][contains(.,'CABLE MODEMS')]
#############################Service field and search in description###############################################################################
${Servicefield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[7]
${Descriptionservice}    xpath=//input[contains(@maxlength,'25')]
${Cablemodemresidencial}    Cable modem residencial
${Servicecablemodemresidencial}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[12]
############################Multiseleccion service##############################################################################################
${Serviceintresilimitado70}    xpath=//td[contains(.,'102')]
${ServiceInternetResid20MbpsLE}    xpath=(//span[@class='dx-checkbox-icon'])[25]
#################################Model field and search in description################################################################################
${Modelfield}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[9]
${Descriptionmodel}    xpath=//input[contains(@maxlength,'7094')]    
${AMBIT}    3CR29220
${ModelAMBIT}    xpath=(//span[@class='dx-checkbox-icon'])[23]
##################################Multiple selection model#############################################################################################
${Model2500}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[23]
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
${GPON}    xpath=(//span[@class='dx-checkbox-icon'])[2]
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

*** Test Cases ***
Enter user
    Open Browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Enter user and password

Screen administracion de politicas de instalación
    Menu
    Operaciones equipos
    administracion de politicas de instalación

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

NSE fiel and search in description
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
    Run Keyword If    "${Notificationblue}" == "${Notificationblue}"
    ...    Close notification blue
    ...  ELSE
    ...    Close notification    

Button modify
    Close notification
    Select register of table
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
    
Button cancelar
    Button cancelar    

*** Keyword ***
Enter user and password
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text    name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element   name:button

Menu
    Sleep    15s
    Click Element    ${Buttonmenu}

Operaciones equipos
    Wait Until Element Is Visible    ${Buttonoperacionesequipos}
    Click Element  ${Buttonoperacionesequipos}

Administracion de politicas de instalación
    Wait Until Element Is Visible    ${Buttonadministracionpoliticasdeinstalacion}
    Click Element    ${Buttonadministracionpoliticasdeinstalacion}

Technology field
    Wait Until Element Is Visible    ${Technologyfield}
    Click Element    ${Technologyfield}

Description HFC
    Wait Until Element Is Visible    ${Descriptiontechnology}
    Input Text    ${Descriptiontechnology}    ${HFC}

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

Available yes
    Wait Until Element Is Visible    ${Availableyes}
    Click Element    ${Availableyes}

Customer type field
    Wait Until Element Is Visible    ${Customertypefield}
    Click Element    ${Customertypefield}

Description customer type
    Wait Until Element Is Visible    ${Descriptioncustomertype}
    Input Text    ${Descriptioncustomertype}    ${Residencial}

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

Type of service internet
    Wait Until Element Is Visible    ${Typeofserviceinternet}
    Click Element    ${Typeofserviceinternet}

Type of equipment field
    Wait Until Element Is Visible    ${Typeofequipmentfield}
    Click Element    ${Typeofequipmentfield}

Description type of equipment
    Wait Until Element Is Visible    ${Descriptiontypeofequipment}
    Input Text    ${Descriptiontypeofequipment}    ${SWITCH}

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
    #Wait Until Element Is Visible    ${Closenotification}
    Sleep    5s
    Click Element    ${Closenotification}

Select register of table
    Wait Until Element Is Visible    ${Registeroftable}
    Click Element    ${Registeroftable}

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