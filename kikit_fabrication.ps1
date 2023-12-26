# TODO:
# convert to ps script
# combine with rest lib repos
# 
# 


for %%I in (.) do set CurrDirName=%%~nxI
echo $CurrDirName

set sch_name=$CurrDirName.kicad_sch
set pcb_name=$CurrDirName.kicad_pcb

kikit fab neodenyy1 --nametemplate %CurrDirName%_{} --schematic %sch_name% %pcb_name% assembly
REM kikit export gerber %pcb_name% gerber



@ECHO OFF
REM add env_var 
REM git push for libs - ls can be used to get a name and use the one after after git add .