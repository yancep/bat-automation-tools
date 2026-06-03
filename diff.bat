@echo off
REM === Muestra y copia el estado del repositorio al portapapeles ===

REM Crea un archivo temporal con toda la información
set "tempFile=%temp%\repo_status.txt"

(
  echo ================================
  echo       ESTADO DEL REPOSITORIO
  echo ================================
  git status
  echo.
  echo ================================
  echo     CAMBIOS PENDIENTES (DIFF HEAD)
  echo ================================
  git --no-pager diff HEAD
) > "%tempFile%"

REM Copia el contenido al portapapeles
type "%tempFile%" | clip

REM Muestra también en pantalla
type "%tempFile%"

echo.
echo 🧾 Estado del repositorio copiado al portapapeles.
echo.
pause >nul
