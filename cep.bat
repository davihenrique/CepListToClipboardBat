@echo off
setlocal enabledelayedexpansion

:: ==================== LISTA DE CEPs ====================
set "ceps=04719002"

set "total=0"
for %%c in (%ceps%) do (
    set "cep[!total!]=%%c"
    set /a "total+=1"
)

set /a "indice=%RANDOM% %% %total%"
set "cep_selecionado=!cep[%indice%]!"

echo !cep_selecionado! | clip
exit