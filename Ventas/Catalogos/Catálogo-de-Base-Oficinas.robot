*** Settings ***
Library  SeleniumLibrary
Library      String    
#Library      RPA.Browser.Selenium   auto_close=${FALSE}


*** Variables ***
#Login System
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://ventas.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[3]
#drops de Ventas
${ventas}    xpath=//div[@class='dx-item-content dx-treeview-item-content'][contains(.,'Ventas')]
#menu
${menu}    xpath=//i[contains(@class,'dx-icon dx-icon-menu')]
${Catalogo}    xpath=(//div[contains(.,'Catálogos')])[9]
${BOficinas}    xpath=//span[contains(.,'Base Ofic. y/o Grupos de Ventas')]
#Sucursales
${sucursal}    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-header/div/header/dx-toolbar/div/div[2]/div/div/div/div[2]/app-branch-dropdown/dx-drop-down-box/div[1]/div/div[2]/div[2]/div/div
${InputS}    xpath=//input[@role='spinbutton']
${Descrip}    2
${Selectsucursal}    xpath=//td[contains(.,'2')]
${Refrescar}    xpath=//input[contains(@role,'combobox')]
#buscar
${Buscar}    xpath=//input[@aria-label='Buscar en la tabla de datos']
#Agrega
${Agregarbotton}    xpath=//i[@class='dx-icon dx-icon-edit-button-addrow']
${Iden}    xpath=//input[@name='identifier']
@{Identificador}=    Create List       Soriana    Elektra    Suburbia 
${Tipoinput}    xpath=//input[@name='type']
@{TipoOficina}=    Create List    Sor-MEG01    ELE-MEG01    Sub-MEG01
${DesInput}    xpath=//input[@name='description']
@{Descripcion}=    Create List    ABCVD    ABCXD    ABCYD
${DirInput}    xpath=//input[@name='address']
@{Direccion}=    Create List    Z01    Z02    z03
${ACEPTAR}    xpath=//span[@class='dx-button-text'][contains(.,'Aceptar')]
${Cancelar}    xpath=//span[@class='dx-button-text'][contains(.,'Cancelar')]
#Eliminar
${Cesto}    xpath=(//a[contains(@aria-label,'Eliminar')])[1]
#Editar
${Lapiz}    xpath=(//a[@aria-label='Modificar'])[1]
@{TipoOficina2}=    Create List    MINE-01    MINE-02    MINE-03
@{Descripcion2}=    Create List    SSA    SSB    SSC
@{Direccion2}=    Create List    Z01a    Z02a    z03a
${pregunta}    xpath=//strong[contains(.,'¿Estás seguro de continuar el proceso?')]
${Enviar}    xpath=//span[@class='dx-button-text'][contains(.,'Enviar')]

#mensajes
${mensaje}    xpath=(//div[contains(.,'¡Aviso del sistema!')])[8]
${Etiqueta}    xpath=//strong[contains(.,'Proceso terminado con éxito')]
${Etiqueta2}    xpath=//strong[normalize-space()='El nivel de vendedor ya existe']
${Cerrar}    xpath=//i[@class='dx-icon dx-icon-close']
${Cerrar2}    xpath=/html/body/div/div/div[1]/div/div[3]/div/div/div/div/i
#mensaje de confirmacion
${mensajeE}    xpath=//div[@class='dx-dialog-message'][contains(.,'¿Estás seguro de continuar el proceso?')]
${Si}    xpath=(//div[contains(.,'Sí')])[10]
${time}    10s


*** Tasks ***
Validacion de usuarios e ingreso a la pantalla
    [Tags]    Validar inicio de sesion y navegación a la pantalla
    Ingresar al Navegador
    Ingresar usuario contrasena
    #Ingresar a Catalogos Generales
    Ingresar a Catalogos

#Steep 3.1 
#    Cambiar de sucursal
Validar CRUD Base de Oficinas y Grupos Ventas
    [Tags]    Validar la nueva lista
    Sleep    4s
    FOR    ${counter}    IN RANGE    1    4    
        Ingresar Lista de Oficina    ${Identificador}[${counter}]   ${TipoOficina}[${counter}]    ${Descripcion}[${counter}]    ${Direccion}[${counter}]    
        Sleep    ${time}
        #Wait Until Element Is Visible       ${mensaje}
        Cerrar mensaje
        Click Element    ${Cancelar} 
        
    END
       
    
#Buscar
    FOR    ${counter2}    IN RANGE    1    4   
        Sleep    2s
        Click Element    ${Buscar}
        Input Text    ${Buscar}    ${Identificador}[${counter2}]
        Sleep    2s  
        #Click Element    xpath=//span[contains(@class,'dx-icon dx-icon-clear')]

    END


#Editar
    #[Tags]    Validar la nueva lista
    Sleep    4s
    FOR    ${counter}    IN RANGE    1    4    
        Sleep    2s
        Editar oficna       ${TipoOficina}[${counter}]    ${Descripcion}[${counter}]    ${Direccion}[${counter}]    
        Sleep    ${time}
        Wait Until Element Is Visible       ${mensaje}
        Cerrar mensaje
        Click Element    ${Cancelar} 
        
    END

    



*** Keywords ***
Ingresar al Navegador
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   ${time}
    
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text     name:Username   ${Usuario}
    Input Text     name:Password   ${Pass}
    Click Element    ${Botondominio}
    Click Element    ${SFyC}
    Click Element    name:button

Ingresar a Catalogos Generales
    [Documentation]    Ingresamos a SFYC General
    Sleep    5s
    Click Element    ${ventas}

Ingresar a Catalogos
    [Documentation]    Ingresamos al modulo de Catalogos
    Sleep    ${time}
    #Click Element    ${menu}
    #Sleep    ${time}
    Click Element    ${Catalogo}
    Sleep    ${time}
    Click Element    ${BOficinas}



Cambiar de sucursal
    Sleep    3s
    Click Element    ${sucursal}
    Click Element    ${InputS}
    Sleep    3s
    Input Text    ${InputS}    ${Descrip}
    #Wait Until Element Is Visible    ${Selectsucursal} 
    Click Element    ${Selectsucursal} 
    Sleep    3s
    Click Element    ${Refrescar}
    
Ingresar Lista de Oficina
    [Documentation]    Agregar una nueva oficina o un grupo ventas
    [Arguments]     ${Identificador}   ${TipoOficina}    ${Descripcion}    ${Direccion}
    Sleep    10s
    Click Element    ${Agregarbotton}
    Input Text    ${Iden}    ${Identificador}
    Input Text    ${Tipoinput}      ${TipoOficina}
    Input Text     ${DesInput}   ${Descripcion}     
    Input Text     ${DirInput}     ${Direccion} 
    Sleep    ${time} 
    Click Element    xpath=//dx-drop-down-box[@id='officeGroupSalesDropdown']//input[@role='combobox']
    Sleep    2s
    Click Element    xpath=//td[normalize-space()='Atención Domiciliaria'] 
    Sleep    2s
    Click Element    xpath=//dx-drop-down-box[@id='activeOptionDropdown']//input[@role='combobox']
    Sleep    2s
    Click Element    xpath=//td[normalize-space()='N']
    Click Element    ${ACEPTAR}
    


Cerrar mensaje
    [Documentation]    Cerrar los mensajes
    #Wait Until Element Is Visible    ${mensaje}
    Sleep    2s 
    Click Element    ${Cerrar}
    
Editar oficna
    [Documentation]    Editar el nivel de vendedor que no se pudo agregar
    [Arguments]      ${TipoOficina2}    ${Descripcion2}    ${Direccion2}
    Click Element    ${Lapiz}
    Sleep    ${time}
    Click Element    ${Tipoinput} 
    Input Text    ${Tipoinput}    ${TipoOficina2}
    Click Element    ${DesInput} 
    Input Text    ${DesInput}     ${Descripcion2}
    Click Element    ${DirInput}
    Input Text    ${DirInput}    ${Direccion2}
    Sleep    ${time} 
    Click Element    xpath=//dx-drop-down-box[@id='officeGroupSalesDropdown']//input[@role='combobox']
    Sleep    2s
    Click Element    xpath=//td[normalize-space()='Atención Domiciliaria'] 
    Sleep    2s
    Click Element    xpath=//dx-drop-down-box[@id='activeOptionDropdown']//input[@role='combobox']
    Sleep    2s
    Click Element    xpath=//td[normalize-space()='N']
    Click Element    ${ACEPTAR}
    Wait Until Element Is Visible    xpath=//dx-button[@id='notificationLink']//div[@class='dx-button-content']
    Click Element    xpath=//dx-button[@id='notificationLink']//div[@class='dx-button-content']
#    Sleep    2s
#    Click Element    ${Cancelar}

Eliminar nivel
    [Documentation]    Eliminar el nivel de vendedor agregador 
    Wait Until Element Is Visible    ${Cesto} 
    Click Element    ${Cesto} 
    Wait Until Element Is Visible    ${mensajeE}
    Click Element    ${Si}