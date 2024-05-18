@echo off
color 1a
echo Borrare todos tus logs, outputs, reportes, e imagenes pgns
echo.
cd C:\Proyectos\Robot_sfyc\
del /F /Q /S /A *.html 
cd C:\Proyectos\Robot_sfyc\
del /F /Q /S /A *.xml
cd C:\Proyectos\Robot_sfyc\
del /F /Q /S /A *.png  

echo voy a vaciar la palera de reciclaje.
echo.
rd /f /s %systemdrive%\$Recycle.Bin
exit