*** Settings ***
Library    SeleniumLibrary
Library    String
Library    DateTime
Library    XML

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  softteck01
${Pass}  123456c
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottoncatalogos}  xpath=//*[@id="divcontenedor"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[7]
${Bottonproveedores}  xpath=//span[normalize-space()='Proveedores']
${Bottonagregar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[2]/div/div    
${Campodescripcion}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/div/div/div/div[1]/input
${Nombreproveedor}  CISCO SA DE CV
${Bottonguardar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/a[1]
${Maximodecaracteres}  ijjiajdljiljlijfiejfiejifjifjijwfielfjewiljfewñfjwejfweofjwerifjrijfiwjpofjwpjfiwp
${Proveedorexistente}  COMNET SA DE CV
${Caracteresnovalidos}   !"#$%&/?¡
${Columnaid}  xpath=//*[@id="dx-col-1"]
${Columnadescripcion}  xpath=//*[@id="dx-col-2"]
${Iconoactualizar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[1]/div/div/div/i
${Campobuscar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[3]/div/div/div/div[1]/input
${Provedorabuscar}  CISCO SA DE CV
${Iconomodificar}  xpath=//a[contains(@href, '#')] 
${Limpiarbusqueda}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[4]/div/div/div[3]/div[3]/div/div/div/div[2]/span/span
${Registroamodificar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]
${Teclearproveedor}  LENOVO
${Campodescripcionmodificar}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/div/div/div/div[1]/input
${Guardarmodificacion}  xpath=//a[contains(@href, '#')]
${Nuevoproveedorabuscar}  LENOVO
${Iconoeliminar}  xpath=//a[2]
${Bottonok}  xpath=(.//*[normalize-space(text()) and normalize-space(.)='¿Está seguro que desea eliminar este registro?'])[1]/following::span[1]

*** Test Cases ***
#Función para la espera de los elementos
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Pantalla catalogo de transportistas
    Sleep   15s
    Seleccionar menu
    Sleep   5s
    Seleccionar catálogos
    Sleep   3s
    Seleccionar proveedores

Registrar proveedores
    Sleep   5s
    Seleccionar botton agregar
    Sleep   5s
    Seleccionar campo descripcion
    Sleep   5s
    Teclear nombre del proveedor
    Sleep   5s
    Seleccionar botton guardar
    Sleep   5s
    Refrescar
    
Maximo de caracteres
    Sleep    5s
    Seleccionar botton agregar
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear maximo de caracteres
    Sleep    5s
    Seleccionar botton guardar
    Sleep    5s

Registrar campo existente
    Sleep    5s
    Seleccionar botton agregar
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Teclear proveedor existente
    Sleep    5s
    Seleccionar botton guardar

Caracteres no validos
    Sleep    5s
    Seleccionar campo descripcion
    Sleep    5s
    Seleccionar limpiar texto
    Sleep    5s
    Teclear caracteres no validos
    Sleep    5s
    Seleccionar botton guardar
    Sleep    5s

Ordenar el registro
    Sleep    5s
    Seleccionar la columna id
    Sleep    5s
    Seleccionar la columna id
    Sleep    5s
    Seleccionar la columna descripcion
    Sleep    5s
    Seleccionar la columna descripcion
    Sleep    5s

Buscar
    Sleep    5s
    Seleccionar campo buscar
    Sleep    5s
    Teclear proveedor a buscar
    #Sleep    5s
    #Limpiar busqueda
    #Sleep    5s

Modificar
    Sleep    5s
    Seleccionar icono modificar
    Sleep    5s
    Teclear proveedor 
    Sleep    5s
    Seleccionar botton guardar modificacion
    Sleep    7s
    Limpiar busqueda
    Sleep    5s
    Seleccionar campo buscar
    Sleep    5s
    Teclear nuevo proveedor a buscar

Eliminar 
    Sleep    5s
    Seleccionar icono Eliminar
    Sleep    5s
    Presionar botton ok
    Sleep    3s

*** Keywords ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar catálogos
    Click element  ${Bottoncatalogos}

Seleccionar proveedores
    Click element  ${Bottonproveedores}

Seleccionar botton agregar
    Click element   ${Bottonagregar}

Seleccionar campo descripcion
    Click Element   ${Campodescripcion}

Teclear nombre del proveedor
    Input Text    ${Campodescripcion}    ${Nombreproveedor}

Seleccionar botton guardar
    Click Element    ${Bottonguardar}

Teclear maximo de caracteres
    Input Text    ${Campodescripcion}    ${Maximodecaracteres}

Teclear proveedor existente
    Input Text    ${Campodescripcion}    ${Proveedorexistente}
    
Seleccionar limpiar texto
    Clear Element Text    xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div[1]/app-app-equipment-catalog-provider-grid/div/dx-data-grid/div/div[6]/div/div/div[1]/div/table/tbody/tr[1]/td[2]/div/div/div/div[1]/input

Teclear caracteres no validos
    Input Text    ${Campodescripcion}    ${Caracteresnovalidos}

Seleccionar la columna id
    Click Element    ${Columnaid}

Seleccionar la columna descripcion
    Click Element    ${Columnadescripcion}

Refrescar
    Click Element    ${Iconoactualizar}

Seleccionar campo buscar
    Click Element    ${Campobuscar}

Teclear proveedor a buscar
    Input Text    ${Campobuscar}    ${Provedorabuscar}

Seleccionar icono modificar
    Click Element    ${Iconomodificar}

Limpiar busqueda
    Click Element    ${Limpiarbusqueda}

Seleccionar registro a modificar
    Click Element    ${Registroamodificar}

Teclear proveedor
    Input Text    ${Campodescripcionmodificar}    ${Teclearproveedor}

Seleccionar botton guardar modificacion
    Click Element    ${Guardarmodificacion}

Teclear nuevo proveedor a buscar
    Input Text    ${Campobuscar}    ${Nuevoproveedorabuscar}

Seleccionar icono Eliminar
    Click Element    ${Iconoeliminar}

Presionar botton ok
    Click Element    ${Bottonok}