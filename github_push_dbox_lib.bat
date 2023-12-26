REM TODO:
REM convert to ps script
REM combine with rest lib repos
REM 
REM

ECHO OFF

dir C:\Users\anton_tokarskyi.ARXTRON\Dropbox\KiCad\arxtron_lib\ /b /ad  > repos.txt

set "file=repos.txt"

for /f "usebackq delims=" %%a in ("%file%") do (
	echo %%a
	cd C:\Users\anton_tokarskyi.ARXTRON\Dropbox\KiCad\arxtron_lib\%%a
	git add .
	git status
	git commit -m "wip"
	git push
   
	REM echo %%a
)