ECHO OFF

## ____ps version 
Get-ChildItem -Directory -Path "C:\Dropbox\KiCad\arxtron_lib\" | Select-Object -ExpandProperty Name > repos.txt

foreach($line in Get-Content .\repos.txt) {    
    cd C:\Dropbox\KiCad\arxtron_lib\$line
    git add .
    git status
    git commit -m "."
    git push   
}

## ____cmd version 

#dir C:\Dropbox\KiCad\arxtron_lib\ /b /ad  > repos.txt
#set %file%="repos.txt"
#for /f "usebackq delims=" %%a in ("%file%") do (
#	cd C:\Dropbox\KiCad\arxtron_lib\%a%
#	git add .
#	git commit -m "."
#	git push   
#	echo %a%
#)