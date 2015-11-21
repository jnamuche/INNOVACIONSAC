@echo off
set /p proj="Ingrese el acronimo del proyecto (PRJ):"
set /p mod="Ingrese el acronimo del modulo (MOD):" 


set fecha=%date:~-4%%date:~3,2%%date:~0,2%
set folder=_%proj%_%mod%_LIBERACION#01
set folder_base=%fecha%%folder%

mkdir %folder_base%
mkdir %folder_base%\Documentos
mkdir %folder_base%\Ejecutables
mkdir %folder_base%\Imagenes
mkdir %folder_base%\Scripts
copy ..\Documentos\Formatos\Liberacion.xlsx %folder_base%\%folder_base%.xlsx
@echo %filename%
goto :eof 

:usage
@echo Usage: %0 Proyecto Modulo
