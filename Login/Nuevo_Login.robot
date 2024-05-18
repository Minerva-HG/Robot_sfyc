*** Settings ***
Library           String
Library    RPA.Browser.Selenium   auto_close=${FALSE}



*** Variables ***
#Login System
${Pagina}  https://global.dev-cluster.sfycnextgen.com.mx/ui/
${user}    xpath=//input[@id='Username']
${pw}    xpath=//input[contains(@type,'password')]
${Botondominio}     xpath=//*[@id="Domain"]/option[3]
${Iniciar}    xpath=//button[@name='button']
#user inventarios
@{USERL}=    Create List     MAGONZALEZ    IESTRADAV    algomezch    ANAVAJ    ARIOS
@{passL}=    Create List     Magcbegs1     Mega123    36994183    160122    pechaguagua
#OPENS
${AGENDA}    xpath=//span[normalize-space()='Atención a Clientes']
${Equipos}    xpath=(//div[contains(.,'Equipos')])[9]
${Ventas}    xpath=//div[@class='dx-item dx-treeview-item dx-state-hover'][contains(.,'Ventas')]
${Control}    xpath=//div[@class='dx-item dx-treeview-item dx-state-hover'][contains(.,'Control')]
${Materiales}    xpath=//span[contains(.,'Operaciones Materiales')]
${Comisiones}    xpath=//span[contains(.,'Operaciones Comisiones')]
${Servicios}    xpath=//div[@class='dx-item dx-treeview-item dx-state-hover'][contains(.,'Servicios')]

#Sub
${Transaction}    xpath=(//span[contains(.,'Transacciones')])[1]
${handles}       https://global.dev-cluster.sfycnextgen.com.mx/ui/

*** Tasks ***
Paso 1
    Login General
Paso 2
    Open Agenda 
    Sleep    2s  
    Open Equipos
    Sleep    2s
    Open Ventas
    Sleep    2s
    Open Control Comisiones
    Sleep    2s
    Open Control Materiales
    Sleep   2s
    Open Servicios

Paso 3
    Abrir un segundo navegador

*** Keywords ***

Login General
    [Tags]    Ingresar usuario
    Open browser    ${Pagina}   Chrome
    Maximize Browser Window
    Sleep   5s
    Click Element    ${Botondominio} 
    Sleep   5s
    Input Text    ${user}     softteck01
    Input Text    ${pw}     123456c    
    Click Element    ${Iniciar}

Open Agenda
    Sleep   5s
    Click Element    ${AGENDA}
    
Open Equipos
    Switch Window    main
    Sleep    3s
    Execute Javascript    window.open()
    Switch Window	locator=NEW
    Go To	https://global.dev-cluster.sfycnextgen.com.mx/ui/equipments/catalog/transactions

Open Ventas
    Switch Window    main
    Sleep    3s
    Execute Javascript    window.open()
    Switch Window	locator=NEW
    Go To	https://global.dev-cluster.sfycnextgen.com.mx/ui/sales/query-request-sale

Open Control Comisiones
    Switch Window    main
    Sleep    3s
    Execute Javascript    window.open()
    Switch Window	locator=NEW
    Go To	https://global.dev-cluster.sfycnextgen.com.mx/ui/commissions/comision-grid

Open Control Materiales
    Switch Window    main
    Sleep    3s
    Execute Javascript    window.open()
    Switch Window	locator=NEW
    Go To	https://global.dev-cluster.sfycnextgen.com.mx/ui/materials/requisitions
Open Servicios
    Switch Window    main
    Sleep    3s
    Execute Javascript    window.open()
    Switch Window	locator=NEW
    Go To	https://global.dev-cluster.sfycnextgen.com.mx/ui/services/cashier



Abrir un segundo navegador
    Open Browser	${Pagina}    chrome	    alias=BrowserB
    Maximize Browser Window
    Sleep   5s
    Click Element    ${Botondominio} 
    Sleep   5s
    Input Text    ${user}     softteck01
    Input Text    ${pw}     123456c    
    Click Element    ${Iniciar}


