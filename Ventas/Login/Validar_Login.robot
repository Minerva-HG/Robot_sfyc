*** Settings ***
Documentation     Demonstrating a while-like loop.
Library           String
Library    RPA.Browser.Selenium   auto_close=${FALSE}

*** Variables ***
#Login System
${Pagina}  https://servicios.dev-cluster.sfycnextgen.com.mx/ui/
${user}    xpath=//input[@id='Username']
${pw}    xpaht=//input[contains(@type,'password')]
${Botondominio}    xpath=//select[contains(@id,'Domain')]
@{USERL}=    Create List     AGARCIA    AJIMENEZD    algomezch    ANAVAJ    ARIOS
@{passL}=    Create List     Jeshua1982    Pollo123    36994183    160122    pechaguagua




*** Tasks ***
Steep Open
    VALUE login

Steep open 2
    VALUE login 2
    
*** Keyword ***
VALUE login
    FOR    ${counter}    IN RANGE    1     5 
        Open Chrome Browser    ${Pagina}
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text     name:Password     ${passL}[${counter}]

        FOR    ${i}    IN   ${counter}
            Click Element    ${Botondominio}
            Sleep    2s
            Click Element When Visible   xpath=//*[@id="Domain"]/option[ ${i} ] 
            Click Element    name:button
            Log    ${i}
            
        END
    Close All Browsers
   END
VALUE login 2
    FOR    ${counter}    IN RANGE    1     5 
        Open Chrome Browser    ${Pagina}
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERL}[${counter}]
        Sleep    2s
        Input Text     name:Password     ${passL}[${counter}]
        Click Element    ${Botondominio}
        Sleep    2s
        Click Element When Visible   xpath=//*[@id="Domain"]/option[ 2] 
        Click Element    name:button    
   END
