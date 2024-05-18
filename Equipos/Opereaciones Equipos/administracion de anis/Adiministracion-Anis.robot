*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${Navegador}  Chrome
${Pagina}  https://qa.sfycnextgen.com.mx/equipments/ui/
${Usuario}  EFIERROS
${Pass}  Evi180820
${Bottonmenu}  xpath=/html/body/app-root/app-side-nav-outer-toolbar/dx-drawer/div/div[1]
${Bottonoperacionesequipos}  xpath=//*[@id=\"divcontenedor\"]/div[2]/dx-scroll-view/div[1]/div/div[1]/div[2]/div/div/dx-tree-view/div[2]/div/div/div[1]/ul/li/ul/li[5]
${AdministracionAnis}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[1]/app-side-navigation-menu[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/dx-tree-view[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/li[1]/ul[1]/li[5]/ul[1]/li[11]/div[1]/div[1]/span[1]
${Desde}  xpath=//input[@name='anisFrom']
${Valor1}  16388500
${Hasta}  xpath=//input[@name='anisTo']
${Valor2}  16388600
${Codigo}  xpath=//input[@name='anisLocalCode']
${Valor3}  33
${BottonEstado}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-admin-anis-main-container[1]/div[1]/div[1]/div[1]/app-admin-anis-form[1]/form[1]/div[1]/div[4]/app-admin-anis-state-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${Estados}  xpath=//td[normalize-space()='Activo']
${BottonTipo}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-admin-anis-main-container[1]/div[1]/div[1]/div[1]/app-admin-anis-form[1]/form[1]/div[1]/div[5]/app-admin-anis-type-dropdown[1]/dx-drop-down-box[1]/div[1]/div[1]/div[1]/input[1]
${Tipos}  xpath=//td[normalize-space()='Normal']
${BuscarRango}  xpath=//span[normalize-space()='Buscar rango']
${Element}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-admin-anis-main-container[1]/div[1]/div[1]/div[2]/app-admin-anis-grid[1]/dx-data-grid[1]/div[1]/div[6]/span[1]
${Grid}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-admin-anis-main-container[1]/div[1]/div[1]/div[2]/app-admin-anis-grid[1]/dx-data-grid[1]/div[1]/div[5]/div[1]/table[1]/tbody[1]/tr[2]/td[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]
${CrearRango}  xpath=//span[normalize-space()='Crear rango']
${Notificación1}  xpath=//i[@class='dx-icon dx-icon-close']
${Transacciones}  xpath=/html[1]/body[1]/app-root[1]/app-side-nav-outer-toolbar[1]/dx-drawer[1]/div[1]/div[1]/app-side-navigation-menu[1]/div[1]/div[2]/dx-scroll-view[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/dx-tree-view[1]/div[2]/div[1]/div[1]/div[1]/ul[1]/li[1]/ul[1]/li[3]/div[1]
#${Troncales}  xpath=//span[@class='dx-checkbox-icon']
#${CierroNotificacion}  xpath=/html[1]/body[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/i[1]
${Limpiar}  xpath=//dx-button[@title='Limpiar']//div[@class='dx-button-content']

*** Test Cases ***
Ingresar usuario
    Open browser    ${Pagina}   ${Navegador}
    Maximize Browser Window
    Sleep   5s
    Ingresar usuario contrasena

Navegar menu
    Sleep   15s
    Seleccionar menu
    Sleep   5s

Seleccionar operaciones equipos
    Seleccionar Bottonoperacionesequipos
    Sleep   5s

Seleccionar Administracion Anis
    Seleccionar AdministracionAnis
    Sleep   15s

Happy path
    Ingresar Datos
    Sleep   5s
    Seleccionar estados
    Sleep   12s
    Seleccionar tipos
    Sleep   5s
    Seleccionar tipos
    Sleep   5s
    Buscar rango
    Sleep   3s
    Seleccionar Grid
    Sleep   5s
    IF    '${Grid}'== 'FALSE'    Run Keywords    Crear rango
        Sleep   10s
        Cerrar notificacion
        Sleep   10s
        Seleccionar menu
        Sleep   3s
        Seleccionar Transacciones
    ...    ELSE IF    '${Element}'== 'TRUE'    Run Keywords    Crear rango
        Sleep   10s
        Cerrar notificacion
        Sleep   10s
        Seleccionar menu
        Sleep   3s
        Seleccionar Transacciones
        END
    Close browser


*** Keyword ***
Ingresar usuario contrasena
    Input text    name:Username   ${Usuario}
    Input text    name:Password   ${Pass}
    Sleep   2s
    Click Button    name:button

Seleccionar menu
    Click element  ${Bottonmenu}

Seleccionar Bottonoperacionesequipos
    Click element  ${Bottonoperacionesequipos}

Seleccionar AdministracionAnis
    Click element  ${AdministracionAnis}

Ingresar Datos
    Input text    ${Desde}   ${Valor1}
    Input text    ${Hasta}   ${Valor2}
    Input text    ${Codigo}   ${Valor3}

Seleccionar estados
    Click element  ${BottonEstado}
    Click element  ${Estados}

Seleccionar tipos
    Click element  ${BottonTipo}
    Click element  ${Tipos}

Buscar rango
    Click element  ${BuscarRango}

Buscar Registro
    Click element  ${Element}

Seleccionar Grid
    Click element  ${Grid}

Crear Rango
    Click element  ${CrearRango}
Cerrar notificacion
    Click element  ${Notificación1}
Seleccionar Transacciones
    Click element  ${Transacciones}

Limpiar
    Click element  ${Limpiar}