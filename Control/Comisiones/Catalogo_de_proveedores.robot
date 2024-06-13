** Settings ***
Documentation    Opciones de Click
Library    RPA.Browser.Selenium    auto_close=${FALSE}
Library    XML

*** Variables ***
${Localizadorpagina}    xpath=//input[contains(@id,'Username')]
${Navegador}  Chrome
${Pagina}   https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Comisiones}    xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[4]
${Proveedores}    xpath=(//span[contains(.,'Proveedores')])[1]
${Catalogoproveedores}    xpath=//span[contains(.,'Catálogo Proveedores')]
${Filtrodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[2]
${Textodescripcion}    VEINTECERODOS S DE RL DE CV    
${Filtrociclo}    xpath=(//input[contains(@autocomplete,'off')])[3]
${Textociclo}    Quincenal    
${Filtrorazonsocial}    xpath=(//input[contains(@autocomplete,'off')])[4]
${Textorazonsocial}    Cuevas Tovar Maura    
${Filtrorfc}    xpath=(//input[contains(@autocomplete,'off')])[5]
${Textorfc}    VEI170125M33    
${Filtrodomicilio}    xpath=(//input[contains(@autocomplete,'off')])[6]
${Textodomicilio}    HERIBERTO VALDEZ PTE170281247, Los Pinos, SIN, MX
${Filtroestatus}    xpath=(//input[contains(@autocomplete,'off')])[7]
${Textostatus}    Can
${Bottoncerrarsesion}    xpath=//i[contains(@class,'dx-icon dx-icon-chevrondown')]
${Cerrarsesion}    xpath=//div[@class='a2'][contains(.,'Cerrar sesión')]
${Usuarioezflores}    EZFLORES
${Passezflores}    Miranda2020
${Usuariogfuentes}    GFUENTES    
${Passgfuentes}    Cisco2019
${Usuariojechegollen}    JECHEGOLLEN
${Passjechegollen}    MegaEne1
${Usuariojherverth}    JHERVERTH    
${Passjherverth}    sfdg3534    
${Iconoagregarproveedor}    xpath=//i[contains(@class,'dx-icon dx-icon-edit-button-addrow')]
${Campodescripcion}    xpath=(//input[contains(@autocomplete,'off')])[8]
${Descripcionnueva}    CNT
${Bottonlistadesplegableciclo}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[2]
${Ciclo}    xpath=(//td[contains(.,'Semanal')])[10]
${Camporazonsocial}    xpath=(//input[contains(@autocomplete,'off')])[10]
${Razonsocialnueva}    CINDICATO NACIONAL DE LOS TRABAJADORES
${Camporfc}    xpath=(//input[contains(@autocomplete,'off')])[12]
${RFCnuevo}    VEI170255M25
${Campodomicilio}    xpath=(//input[contains(@autocomplete,'off')])[13]
${Domicilionuevo}    Real de los almendros N783
${Bottonlistadesplegableestatus}    xpath=(//div[contains(@class,'dx-dropdowneditor-icon')])[3]
${Estatusnuevo}    xpath=//div[@class='dx-item-content dx-list-item-content'][contains(.,'Activo')]
${Iconoguardar}    xpath=(//a[@href='#'])[23]
${Iconocancelar}    xpath=(//a[@href='#'])[24]
${Caracteresnovalidos}    $#%&*@_
${rfcconmasde18caracteres}    VEI170255M2512345678        
${Iconoeditar}    xpath=(//a[@href='#'])[21]
${Descripcionactualizada}    CONACIR
${Razonsocialactualizada}    CONACIR
${RFCactualizada}    VEI170455M45    
${Domicilioactualizado}    Real de lOS PIÑONEROS N383    
${Campodomicilioparaactualizar}    xpath=(//input[@role='textbox'])[10]
${Bottonguardaractualizacion}    xpath=(//a[contains(@title,'Guardar')])[2]
${Iconoeliminarregistro}    xpath=(//a[contains(@aria-label,'Eliminar')])[11]
${Confirmareliminarregistro}    xpath=//span[contains(.,'Sí')]
${Iconorefrescar}    xpath=//i[contains(@class,'dx-icon dx-icon-refresh')]
${Datosdelproveedor}    xpath=(//div[contains(@class,'dx-datagrid-group-closed')])[3]

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Ingresar usuario contrasena
    
Pantalla de catalogo proveedores y datos grid de acuerdo a la tabla catalogo proveedores
    Seleccionar menu
    Seleccionar comisiones
    Seleccionar proveedores
    Seleccionar catalogo proveedores

Filtros
    Filtro descripcion
    Limpiar filtro descripcion
    Filtro ciclo
    Limpiar filtro ciclo
    Filtro razon social
    Limpiar filtro razon social
    Filtro rfc
    Limpiar filtro rfc
    Filtro domicilio
    Limpiar filtro domicilio
    Filtro estatus
    Limpiar filtro estatus

Usuarios
    Seleccionar botton para cerrar sesion
    Cerrar sesion
    Ingresar usuario EZFLORES
    Seleccionar menu
    Seleccionar comisiones
    Seleccionar proveedores
    Seleccionar catalogo proveedores
    Seleccionar botton para cerrar sesion
    Cerrar sesion
    Ingresar usuario GFUENTES
    Seleccionar menu
    Seleccionar comisiones
    Seleccionar proveedores
    Seleccionar catalogo proveedores
    Seleccionar botton para cerrar sesion
    Cerrar sesion
    Ingresar usuario JECHEGOLLEN 
    Seleccionar menu
    Seleccionar comisiones
    Seleccionar proveedores
    Seleccionar catalogo proveedores
    Seleccionar botton para cerrar sesion
    Cerrar sesion
    Ingresar usuario JHERVERTH
    Seleccionar menu
    Seleccionar comisiones
    Seleccionar proveedores
    Seleccionar catalogo proveedores
    Seleccionar botton para cerrar sesion
    Cerrar sesion
    Ingresar usuario contrasena
    Seleccionar menu
    Seleccionar comisiones
    Seleccionar proveedores
    Seleccionar catalogo proveedores

Agregar proveedor
    Sleep    7s
    Seleccionar icono + para agregar proveedor
    Teclear la descripcion
    Seleccionar botton lista desplegable ciclo
    Seleccionar ciclo
    Teclear razon social
    Teclear RFC
    Teclear domicilio
    Seleccionar botton lista desplegable estatus
    Seleccionar estatus
    Seleccionar botton guardar

Registros repetidos
    Sleep    7s
    Seleccionar icono + para agregar proveedor
    Teclear la descripcion
    Seleccionar botton lista desplegable ciclo
    Seleccionar ciclo
    Teclear razon social
    Teclear RFC
    Teclear domicilio
    Seleccionar botton lista desplegable estatus
    Seleccionar estatus
    Seleccionar botton guardar
   
Icono cancelar
    Sleep    7s
    Seleccionar icono cancelar

Ningun campo vacio
    Sleep    7s
    Seleccionar icono + para agregar proveedor
    Teclear la descripcion
    Seleccionar botton lista desplegable ciclo
    Seleccionar ciclo
    Teclear razon social
    Seleccionar botton lista desplegable estatus
    Seleccionar estatus
    Seleccionar botton guardar
    
Caracteres no validos
    Sleep    7s
    Seleccionar icono cancelar
    Seleccionar icono + para agregar proveedor
    Teclear la descripcion con caracteres no validos
    Seleccionar botton lista desplegable ciclo
    Seleccionar ciclo
    Teclear razon social con caracteres no validos
    Teclear RFC con caracteres no validos
    Seleccionar botton lista desplegable estatus
    Seleccionar estatus
    Seleccionar botton guardar
    Caracteres no validos

Columna RFC
    Sleep    7s
    Seleccionar icono cancelar
    Seleccionar icono + para agregar proveedor
    Teclear rfc con mas de 18 caracteres
    Seleccionar botton guardar

Combo ciclo
    Sleep    7s
    Seleccionar icono cancelar
    Seleccionar icono + para agregar proveedor
    Seleccionar botton lista desplegable ciclo

Editar proveedor
    Sleep    7s
    Seleccionar icono cancelar
    selecionar icono editar registro
    Teclear descripcion actualizada
    Teclear razon social actualizada
    Teclear rfc actualizada
    Teclear domicilio actualizado
    Sleep    5s
    Seleccionar botton guardar actualizacion

Eliminar proveedor
    Sleep    7s
    Seleccionar icono para eliminar registro
    Confirmar eliminar regsitro

Actualizar
    Sleep    7s
    Seleccionar icono refrescar

Datos Proveedor
    Sleep    7s
    Seleccionar datos del proveedor

*** Keyword ***
Ingresar usuario contrasena
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuario}
    Input Text When Element Is Visible    name:Password   ${Pass}
    Click Element If Visible   name:button

Seleccionar menu
    Wait Until Element Is Visible    ${Bottonmenu}
    Sleep    15s
    Click Element    ${Bottonmenu}

Seleccionar comisiones
    Click Element When Visible    ${Comisiones}

Seleccionar proveedores
    Click Element When Visible    ${Proveedores}

Seleccionar catalogo proveedores
    Sleep    7s
    Click Element When Visible    ${Catalogoproveedores}

Filtro descripcion
    Input Text When Element Is Visible    ${Filtrodescripcion}    ${Textodescripcion}

Limpiar filtro descripcion
    Sleep    4s
    Clear Element Text    ${Filtrodescripcion}

Filtro ciclo
    Input Text When Element Is Visible    ${Filtrociclo}    ${Textociclo}  

Limpiar filtro ciclo
    Sleep    4s
    Clear Element Text    ${Filtrociclo}

Filtro razon social   
    Input Text When Element Is Visible    ${Filtrorazonsocial}    ${Textorazonsocial}

Limpiar filtro razon social
    Sleep    4s
    Clear Element Text    ${Filtrorazonsocial}

Filtro rfc
    Input Text When Element Is Visible    ${Filtrorfc}    ${Textorfc}

Limpiar filtro rfc
     Sleep    4s
    Clear Element Text    ${Filtrorfc}

Filtro domicilio
    Input Text When Element Is Visible    ${Filtrodomicilio}    ${Textodomicilio}

Limpiar filtro domicilio
    Sleep    4s
    Clear Element Text    ${Filtrodomicilio}

Filtro estatus
    Input Text When Element Is Visible    ${Filtroestatus}    ${Textostatus}

Limpiar filtro estatus
    Sleep    4s
    Clear Element Text    ${Filtroestatus}    

Seleccionar botton para cerrar sesion
    Click Element When Visible    ${Bottoncerrarsesion}

Cerrar sesion
    Sleep    4s
    Click Element When Visible    ${Cerrarsesion}

Ingresar usuario EZFLORES
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuarioezflores}
    Input Text When Element Is Visible    name:Password   ${Passezflores}
    Click Element When Visible   name:button

Ingresar usuario GFUENTES
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuariogfuentes}
    Input Text When Element Is Visible    name:Password   ${Passgfuentes}
    Click Element When Visible   name:button

Ingresar usuario JECHEGOLLEN
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuariojechegollen}
    Input Text When Element Is Visible    name:Password   ${Passjechegollen}
    Click Element When Visible   name:button

Ingresar usuario JHERVERTH
    Wait Until Page Contains Element    ${Localizadorpagina}
    Input Text When Element Is Visible    name:Username   ${Usuariojherverth}
    Input Text When Element Is Visible    name:Password   ${Passjherverth}
    Click Element When Visible   name:button

Seleccionar icono + para agregar proveedor
    Sleep    6s    
    Click Element When Visible    ${Iconoagregarproveedor}

Teclear la descripcion
    Input Text When Element Is Visible    ${Campodescripcion}    ${Descripcionnueva}

Seleccionar botton lista desplegable ciclo
    Click Element When Visible    ${Bottonlistadesplegableciclo}

Seleccionar ciclo
    Click Element When Visible    ${Ciclo}

Teclear razon social
    Input Text When Element Is Visible    ${Camporazonsocial}    ${Razonsocialnueva}

Teclear RFC
    Input Text When Element Is Visible    ${Camporfc}    ${RFCnuevo}

Teclear domicilio
    Input Text When Element Is Visible    ${Campodomicilio}    ${Domicilionuevo}

Seleccionar botton lista desplegable estatus
    Click Element When Visible    ${Bottonlistadesplegableestatus}

Seleccionar estatus
    Click Element When Visible    ${Estatusnuevo}

Seleccionar botton guardar
    Click Element When Visible    ${Iconoguardar}

Seleccionar icono cancelar
    Click Element When Visible    ${Iconocancelar}
    
Teclear la descripcion con caracteres no validos
    Input Text When Element Is Visible    ${Campodescripcion}    ${Caracteresnovalidos}
    Sleep    5s
    Click Element When Visible    ${Campodescripcion}

Teclear razon social con caracteres no validos
    Input Text When Element Is Visible    ${Camporazonsocial}    ${Caracteresnovalidos}

Teclear RFC con caracteres no validos
    Input Text When Element Is Visible    ${Camporfc}    ${Caracteresnovalidos}

Caracteres no validos
    Click Element When Visible    ${Campodescripcion}

Teclear rfc con mas de 18 caracteres
    Input Text When Element Is Visible    ${Camporfc}    ${rfcconmasde18caracteres}

selecionar icono editar registro
    Click Element When Visible    ${Iconoeditar}

Teclear descripcion actualizada
    Wait Until Element Is Visible    ${Campodescripcion}
    Clear Element Text    ${Campodescripcion}
    Input Text When Element Is Visible    ${Campodescripcion}    ${Descripcionactualizada}

Teclear razon social actualizada
    Wait Until Element Is Visible    ${Camporazonsocial}
    Clear Element Text    ${Camporazonsocial}
    Input Text When Element Is Visible    ${Camporazonsocial}    ${Razonsocialactualizada}

Teclear rfc actualizada
    Wait Until Element Is Visible    ${Camporfc}
    Clear Element Text    ${Camporfc}
    Input Text When Element Is Visible    ${Camporfc}    ${RFCactualizada}

Teclear domicilio actualizado
    Wait Until Element Is Visible    ${Campodomicilioparaactualizar}
    Clear Element Text    ${Campodomicilioparaactualizar}
    Input Text When Element Is Visible    ${Campodomicilioparaactualizar}    ${Domicilioactualizado}

Seleccionar botton guardar actualizacion
    Click Element When Visible    ${Bottonguardaractualizacion}

Seleccionar icono para eliminar registro
    Click Element When Visible    ${Iconoeliminarregistro}

Confirmar eliminar regsitro
    Wait Until Element Is Visible    ${Confirmareliminarregistro}
    Sleep    3s
    Click Element When Visible    ${Confirmareliminarregistro}

Seleccionar icono refrescar
    Click Element When Visible    ${Iconorefrescar}

Seleccionar datos del proveedor
    Click Element When Visible    ${Datosdelproveedor}