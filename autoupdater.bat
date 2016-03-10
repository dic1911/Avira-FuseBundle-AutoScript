@echo off
title Avira FuseBundle Generator
echo Waiting user input... or start automatically after 30 sec...
timeout /t 30
echo Removing Old File...
del .\install\xvdf_fusebundle.zip
echo Downloading Updated Database...
fusebundle.exe
cd install
move vdf_fusebundle.zip xvdf_fusebundle.zip
echo Updated Database had been downloaded! Now Installing!!
"C:\Program Files (x86)\Avira\Antivirus\update.exe" /DM=0 /NOMESSAGEBOX /fuseupdate="%cd%\xvdf_fusebundle.zip"
exit