*** Settings ***
Library           String
Library    RPA.Browser.Selenium   auto_close=${FALSE}
Library          Collections


*** Variables ***
#Login System
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui/
${page2}    https://agenda.qa-cluster.sfycnextgen.com.mx/ui/
${page3}    https://ventas.qa-cluster.sfycnextgen.com.mx/ui/
${user}    xpath=//input[@id='Username']
${pw}    xpath=//input[contains(@type,'password')]
${Botondominio}    xpath=//select[contains(@id,'Domain')]
#user inventarios
@{USERL}=    Create List     MAGONZALEZ    IESTRADAV    algomezch    ANAVAJ    ARIOS
@{passL}=    Create List     Magcbegs1     Mega123    36994183    160122    pechaguagua
#menu
${menu}    xpath=//i[@class='dx-icon dx-icon-menu']
${Transaccion}    xpath=//span[normalize-space()='Transacciones']
#operaciones
${operaciones}    xpath=//span[contains(.,'Operaciones Equipos')]
${Ubicaciones}    xpath=//span[contains(.,'Consulta Ubicación de Equipos')]
#****VENTAS************************
@{USERV}=    Create List     softteck01    AGARCIA    WASESMA    EVELAZQUEZ    MECUENT
@{passV}=    Create List     123456c    Jeshua1982    Megacable4    Megacable1    Enero2020


#*************Agenda***************
#user agenda
@{USERA}=    Create List     AFRAGOSO    JAFUENTESM    WASESMA    EVELAZQUEZ    MECUENT
@{passA}=    Create List     Omega123    Megacable2    Megacable4    Megacable1    Enero2020
#/////Suscriptores
@{Suscriptores}=     Create List    0060073682    0440601389     0430070646     0070100322    0120421150
#agregar suscriptor
${suscinput}    xpath=//input[@name='subscriber']
${Consultar}    xpath=//div[@class='dx-button-content'][contains(.,'Consultar')]
#mensajes
${mensajes}    xpath=(//div[contains(.,'MENSAJES ASOCIADOS AL SUSCRIPTOR')])[8]
${mensajes2}    xpath=//strong[contains(.,'¡Ofrece Mega Móvil y haz CRECER tu comi$ión, con tan solo $50 de anticipo parcial puedes darle 22GB X $100 al mes durante 4 meses!')]
${MensajeG}    xpath=//strong[contains(.,'Estás atendiendo a un cliente MEGACABLE SELECT Se amable...')]    
   
${cerrar}    xpath=(//i[contains(@class,'dx-icon dx-icon-close')])[2]
${cerrar2}    xpath=/html/body/div[2]/div/div[1]/div/div[3]/div/div/div
${Cerrar3}    xpath=//div[@class='dx-closebutton dx-button dx-button-normal dx-button-mode-contained dx-widget dx-button-has-icon dx-state-hover']//i[@class='dx-icon dx-icon-close']
#agregar 
${agregarS}    xpath=//i[contains(@class,'dx-icon dx-icon-plus subscriber-tab-title-button')]
${plus}        xpath= //*[@id="dx-5a887a98-7d23-5843-ce92-3d75e8ad885d"]/app-agenda360-subscriber-tab-title/div/i[3]
*** Tasks ***

#Steep Open
#    VALUE login

Abrir el modulo de Inventarios/transaccion
   Transacciones
   Sleep    2s
Abrir el modulo de Inventarios/
    Consulta de Ubicacion
    Sleep    2s
Abrir modulo de ventas
    Consulta de Ventas
    Sleep    2s


Abrir el modulo de AGENDA
    Agenda
    Sleep    2s
Cerrar aviso 1
    Mostrar mensajes
    Run Keyword If    "${mensajes}" == "${mensajes}"   Cerrar mensajes
    ...  ELSE IF      "${mensajes2}" == "${mensajes2}"    Cerrar mensajes 2
    ...  ELSE IF    "${mensajes}" ==  "${mensajes}"    Cerrar mensajes 3
    ...  ELSE   Agregar suscriptor
    Sleep    2s
Cerrar aviso 2
    Mostrar mensaje 2
    Run Keyword If    "${mensajes}" == "${mensajes}"   Cerrar mensajes
    ...  ELSE IF      "${mensajes2}" == "${mensajes2}"    Cerrar mensajes 2
    ...  ELSE IF    "${mensajes}" ==  "${mensajes}"    Cerrar mensajes 3
    ...  ELSE   Agregar suscriptor
     Sleep    5s
Consultar otro contrato
    Wait Until Element Is Visible    ${agregarS}
    Agregar suscriptor
    Sleep    2s
    Agregar mas contratos
Cerrar aviso 3
    Mostrar mensajes 
    Run Keyword If    "${mensajes}" == "${mensajes}"   Cerrar mensajes
    ...  ELSE IF      "${mensajes2}" == "${mensajes2}"    Cerrar mensajes 2
    ...  ELSE IF    "${mensajes}" ==  "${mensajes}"    Cerrar mensajes 3
    ...  ELSE   Agregar suscriptor
    Sleep    2s
Consultar otro contrato 2       
    Wait Until Element Is Visible    ${agregarS}
    Agregar suscriptor
    Sleep    2s
    Agregar mas contratos
No hay mas avisos
    Element Should Not Be Visible    "${mensajes}"
    Element Should Not Be Visible    "${mensajes2}"
    Element Should Not Be Visible    "${MensajeG}"
    Sleep    2s
    Wait Until Element Is Visible    ${agregarS}
    Run Keyword If    "${agregarS}" == "${agregarS}"   Agregar suscriptor
    ...  ELSE IF     "${plus}" == "${plus}"     Agregar suscriptor
    ...  ELSE IF     "${agregarS}" NOT IN "${agregarS}"     Mostrar mensajes
    ...  ELSE   Agregar suscriptor
    Agregar mas contratos
            
        




*** Keyword ***
#VALUE login
#    FOR    ${counter}    IN RANGE    1     5 
#        Open Chrome Browser    ${Pagina}
#        Maximize Browser Window
#        Wait Until Page Contains Element    ${user}
#        Input Text    ${user}      ${USERL}[${counter}]
#        Sleep    2s
#        Input Text     name:Password     ${passL}[${counter}]

#        FOR    ${i}    IN   ${counter}
#            Click Element    ${Botondominio}
#            Sleep    2s
#            Click Element When Visible   xpath=//*[@id="Domain"]/option[ ${i} ] 
#            Click Element    name:button
#            Log    ${i}
#            
#        END
#    Close All Browsers
#   END
  

Transacciones
    FOR    ${counter}    IN RANGE    1     2 
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
        #menu
        Sleep    2s
        Click Element    ${menu}
        Sleep    2s
        Click Element    ${Transaccion}
        Sleep    2s
        
            
        

   END

Consulta de Ubicacion
    FOR    ${counter}    IN RANGE    1     2
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
        Sleep    2s
        #menu
        Click Element    ${menu}
        Sleep    2s
        #operaciones
        Click Element    ${operaciones}
        Sleep    2s
        Click Element    ${Ubicaciones} 
   END

Consulta de Ventas
    FOR    ${counter}    IN RANGE    1     2
        Open Chrome Browser    ${page3}
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERV}[${counter}]
        Sleep    2s
        Input Text     name:Password     ${passV}[${counter}]
        Click Element    ${Botondominio}
        Sleep    2s
        Click Element When Visible   xpath=//*[@id="Domain"]/option[ 2] 
        Click Element    name:button
        Sleep    2s
        #menu
        Click Element    ${menu}
        Sleep    2s
        #operaciones

   END


Agenda
    FOR    ${counter}    IN RANGE    1     2 
        Open Chrome Browser    ${page2}
        Maximize Browser Window
        Wait Until Page Contains Element    ${user}
        Input Text    ${user}      ${USERA}[${counter}]
        Sleep    2s
        Input Text     name:Password     ${passA}[${counter}]
        Click Element    ${Botondominio}
        Sleep    2s
        Click Element When Visible   xpath=//*[@id="Domain"]/option[ 3] 
        Sleep    2s
        Click Element    name:button
        #ingresar suscriptor
        Sleep    2s
        Wait Until Element Contains    //label[@class='field-label']    N° de suscriptor 
        Click Element    ${suscinput}
        Input Text    ${suscinput}    ${Suscriptores}[1]
        Click Element When Visible    ${Consultar}
                

   END

#****mostrar mensajes***
Mostrar mensajes 
    Wait Until Element Contains    ${mensajes}    MENSAJES ASOCIADOS AL SUSCRIPTOR 
Mostrar mensaje 2  
    Wait Until Element Contains    ${mensajes2}    ¡Ofrece Mega Móvil y haz CRECER tu comi$ión, con tan solo $50 de anticipo parcial puedes darle 22GB X $100 al mes durante 4 meses!
Mostrar mensaje 3
    Element Should Contain    xpath=//strong[contains(text(),'Estás atendiendo a un cliente MEGACABLE SELECT Se ')]    MEGACABLE SELECT
Cerrar mensajes
    Sleep    2s
    Click Element  ${cerrar}
Cerrar mensajes 2
    Click Element    ${cerrar2} 


Cerrar mensajes 3
    Click Element If Visible    ${Cerrar3}
#***Agregar nuevo contrato (+)
    
Agregar suscriptor
    Click Element If Visible    ${agregarS}


Agregar mas contratos
    FOR    ${counter2}    IN RANGE    2    5
        #para agregar el nuevo contrato anterior mente ya dio click en + (agregar suscriptor)
        Wait Until Element Contains    //label[@class='field-label']    N° de suscriptor 
        Sleep    2s
        Click Element    ${suscinput}
        Sleep    2s
        Input Text    ${suscinput}    ${Suscriptores}[${counter2}]
        Sleep    1s
        Click Element When Visible    ${Consultar} 
        RETURN
    END
    
