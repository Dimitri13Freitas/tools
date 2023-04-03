@echo off
set /p text=Digite o nome do arquivo:
setlocal enabledelayedexpansion
set i=1
for %%a in (*.jpeg) do (
  set newName=!text! !i!%%~xa
  ren "%%a" "!newName!"
  set /a i+=1
)
exit