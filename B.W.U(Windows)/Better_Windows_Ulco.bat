rem Script Better Windows Ulco

rem Idée inspirer par le script Ulco Enhancer, disponible sur github.

@echo off

@title B.W.U
!
color 02

cls

@echo º  Better Window Ulco  º

echo                  V0.0.1

echo.

echo  Ce script a pour but d'améliorer l'utilisation de windows

echo depuis les post informatique de la faculte. Ce script est 

echo purement utilitaires. Vous utilisez ce risque a votre

echo risque.

echo.

echo.

set /p accord= Voulez vous continuez (o pour oui)?

if "%accord%" EQU "o" (

	cls

	echo.

	echo Modification temporaire des registre ...

	regedit /s bwu.reg
echo done.

echo.

echo Arret d'explorer.exe ...

taskkill /f /im explorer.exe

echo done.

echo.

echo Redemmarge d'explorer.exe ...

start explorer.exe

echo done.

echo.

echo Mise en place d'un wallpaper ...

reg add "HKCU\Control Panel\Desktop" /v Wallpaper /d "bwu.bmp" /F
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

echo done.

echo.

echo Fin du script, la fenetre va maintenant se fermer!

pause

exit

) ELSE (

echo le script va maintenant quitter!

pause

exit

)