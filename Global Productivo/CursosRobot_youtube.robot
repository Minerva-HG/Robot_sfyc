** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://www.youtube.com/
${Buscador}    xpath=//input[contains(@id,'search')]
${clic}    xpaht=//button[@id='search-icon-legacy']//yt-icon[@class='style-scope ytd-searchbox']//div





*** Test Cases ***
Ingresar Portal
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep    5s
 
Buscar curso
   Buscar Cursos


*** Keyword ***
 
Buscar Cursos
    Input Text    ${Buscador}  Robotframework curso español
    Sleep    3s
    Click Element    ${clic}  
    Sleep    2s
    