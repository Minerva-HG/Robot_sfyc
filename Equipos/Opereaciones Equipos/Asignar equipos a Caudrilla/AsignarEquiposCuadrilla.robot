*** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML
Library    RPA.Windows
#Library    RPA.Robocloud.Items

*** Variables ***
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}  https://equipos.qa-cluster.sfycnextgen.com.mx/ui
${Usuario}  softteck01
${Pass}  123456c
${Botondominio}    xpath=//select[@id='Domain']
${SFyC}    xpath=//*[@id="Domain"]/option[2]
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${Bottonasignarequiposacuadrilla}    xpath=//span[contains(.,'Asignar Equipos a Cuadrilla')]
${Desplegartipodeequipos}    xpath=//dx-drop-down-box[@id='typeEquipmentDropdown']/div/div/div[2]/div/div/div
${Equipo}    xpath=//td[contains(.,'CABLE MODEMS')]
${Desplegartipocuadrilla}    xpath=//dx-drop-down-box[@id='typeCrewDropdown']/div/div/div[2]/div/div/div
${Tipocuadrillaauditoria}    xpath=(//td[@aria-describedby='dx-col-11'])[2]
${Desplegarcuadrilla}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[4]
${Cuadrilla0001}    xpath=//td[contains(.,'0001')]
${Cerrarnotificacion}    xpath=//i[contains(@class,'dx-icon dx-icon-close')]
${Tipocuadrillaalm}    xpath=//td[contains(.,'ALM Almacen')]
${Cajadetextoagregarserie}    xpath=//input[@maxlength='35']
${Serie}    249602323        
${Checkboxporubicacion}    xpath=(//span[contains(@class,'dx-checkbox-icon')])[1]
${Desplegarubicaciones}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Ubicacion120}    xpath=//td[contains(.,'PRE UBI OBLATOS')]
${Desplegarinformacion}    xpath=//div[contains(@class,'dx-datagrid-group-closed')]
${Filtroestado}    xpath=//*[@id="dx-col-387"]/div[1]/span[2]    
${Botoncacelarfiltroestado}    xpath=(//span[@class='dx-button-text'][contains(.,'Cancelar')])[2]
${Cuadrillavacia}    xpath=(//span[contains(@class,'dx-icon dx-icon-clear')])[3]
${Registro}    xpath=//td[contains(.,'249602323')]
${Botondesasignar}    xpath=//span[contains(.,'Desasignar')]
${Botonenviar}    xpath=//span[contains(.,'Enviar')]
${Notificacionprocesoterminadoconexito}    xpath=//i[@class='dx-icon dx-icon-close']
${Botonlimpiar}    xpath=//span[contains(.,'Limpiar')]
${Serieconlimitedecaracteres}    24960232324960232324960232324       
${Seriemasde8años}    00028995    
${Iconoexcel}    xpath=//i[contains(@class,'dx-icon dx-icon-export-excel-button')]
${Iconoimprimir}    xpath=//i[contains(@class,'dx-icon dx-icon-print')]
${Serie07MJ968D3HS8}    07MJ968D3HS8    
${Bottonfiltrarserie}    xpath=//td[@id='dx-col-325']/div/span[2]
${Cajadetextobuscar}    xpath=//input[contains(@aria-label,'Buscar en la tabla de datos')]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena

Pantalla asignar equipos a cuadrilla
    Seleccionar menu
    Seleccionar operaciones equipos
    Seleccionar asignar equipos a cuadrilla

Buscar cuadrilla con antiguedad mayor a 10 dias
    Tipo de equipo
    Tipo cuadrilla A auditoria
    Cuadrilla 0001

Por ubicacion
    Cerrar notificacion
    Checbox por ubicacion
    Tipo de equipo 
    Ubicacion 120

Buscar cuadrilla
    Checbox por ubicacion
    Tipo de equipo
    Tipo cuadrilla ALM
    Cuadrilla 0001

Agregar serie
    Serie 249602323
    
Exportar excel
    Icono excel

Boton imprimir
    Icono imprimir

Datos generales
    Mostrar datos generales

Filtros
    Serie 07MJ968D3HS8
    Mostrar datos generales
    Filtro buscar

Campos vacios
    Campo vacio cuadrilla

Combos
    Combo tipo de equipo
    Combo tipo de cuadrilla
    Combo cuadrilla

Serie repetida
    Serie 249602323
    Cerrar notificacion

Desasignar
    Mostrar datos generales
    Desasignar
    
Limpiar
    Boton limpiar
    
Serie con limite de caracteres
    Combo tipo de equipo
    Combo tipo de cuadrilla
    Combo cuadrilla
    Serie con limite de caracteres

Equipo mayor a 8 años
    Serie mas de 8 años
    Cerrar notificacion


*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element When Visible    ${Botondominio}
    Click Element When Visible    ${SFyC}
    Click Element If Visible   name:button

Seleccionar menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Seleccionar operaciones equipos
    Click element  ${Bottonoperacionesequipos}

Seleccionar asignar equipos a cuadrilla
    Click Element When Visible    ${Bottonasignarequiposacuadrilla}

Tipo de equipo
    Sleep    5s
    Click Element If Visible    ${Desplegartipodeequipos}
    Click Element When Visible    ${Equipo}

Tipo cuadrilla A auditoria
    Sleep    5s
    Click Element If Visible   ${Desplegartipocuadrilla}
    Click Element When Visible     ${Tipocuadrillaauditoria}
    
Cuadrilla 0001
    Sleep    5s
    Click Element If Visible    ${Desplegarcuadrilla}
    Click Element When Visible    ${Cuadrilla0001}    

Cerrar notificacion
    Sleep    5s
    Click Element When Visible    ${Cerrarnotificacion}

Tipo cuadrilla ALM
    Sleep    5s
    Click Element If Visible   ${Desplegartipocuadrilla}
    Click Element When Visible     ${Tipocuadrillaalm}

Serie 249602323
    Sleep    5s
    Input Text When Element Is Visible    ${Cajadetextoagregarserie}    ${Serie}
    Press Keys    ${Cajadetextoagregarserie}    ENTER

Checbox por ubicacion
    Click Element When Visible    ${Checkboxporubicacion}

Ubicacion 120
    Sleep    5s
    Click Element If Visible    ${Desplegarubicaciones}
    Click Element When Visible    ${Ubicacion120}

Mostrar datos generales
    Sleep    5s
    Click Element When Visible    ${Desplegarinformacion}

Campo vacio cuadrilla    
    Sleep    3s
    Click Element When Visible    ${Cuadrillavacia}

Combo tipo de equipo
    Click Element If Visible    ${Desplegartipodeequipos}
    Sleep    7s
    Click Element When Visible    ${Equipo}

Combo tipo de cuadrilla
    Click Element If Visible   ${Desplegartipocuadrilla}
    Sleep    7s
    Click Element When Visible     ${Tipocuadrillaalm}

Combo cuadrilla    
    Click Element If Visible    ${Desplegarcuadrilla}
    Sleep    7s
    Click Element When Visible    ${Cuadrilla0001}  

Desasignar
    Sleep    7s
    Click Element When Visible    ${Registro}
    Click Element When Visible    ${Botondesasignar}
    Sleep    5s
    Click Element When Visible    ${Botonenviar}
    Sleep    7s
    Click Element When Visible    ${Notificacionprocesoterminadoconexito}

Boton limpiar
    Sleep    5s
    Click Element When Visible    ${Botonlimpiar}

Serie con limite de caracteres
    Sleep    5s      
    Input Text When Element Is Visible    ${Cajadetextoagregarserie}    ${Serieconlimitedecaracteres}

Serie mas de 8 años
    Sleep    5s
    Clear Element Text    ${Cajadetextoagregarserie}
    Input Text When Element Is Visible    ${Cajadetextoagregarserie}    ${Seriemasde8años}
    Press Keys    ${Cajadetextoagregarserie}    ENTER    

Icono excel
    Sleep    5s
    Click Element When Visible    ${Iconoexcel}

Icono imprimir
    Sleep    5s
    Click Element When Visible    ${Iconoimprimir}

Serie 07MJ968D3HS8
    Input Text When Element Is Visible    ${Cajadetextoagregarserie}    ${Serie07MJ968D3HS8}
    Press Keys    ${Cajadetextoagregarserie}    ENTER

Filtro buscar
    Sleep    5s
    Input Text When Element Is Visible    ${Cajadetextobuscar}    ${Serie}
    Sleep    7s
    Clear Element Text    ${Cajadetextobuscar}
