*** Settings ***
Library           String
Library    RPA.Browser.Selenium   auto_close=${FALSE}
Library          Collections
#Library    RPA.JavaAccessBridge
*** Variables ***

*** Test Cases ***
WindowsTab
    open browser    https://equipos.qa-cluster.sfycnextgen.com.mx/ui/  chrome
    maximize browser window
    sleep    4s
    wait until element is visible   xpath=//input[@id='Username']
    sleep    4s
    click element    xpath=//input[@id='Username']
    @{WindowHandles}=   get window handles
    sleep    4s
    @{WindowIdentifier}=    get window identifiers
    sleep    4s
    @{WindowsNames}=    get window names
    sleep   4s
    @{WindowsTitle}=    open browser
    sleep    4s
    set window position    100  300
    ${x}  ${y}=       get window position
    log    ${x}
    log    ${y}
    sleep    4
    set window size    800  600
    ${width}     ${height}=     get window size
    log     ${width}
    log    ${height}
    sleep    4
    

*** Keywords ***