@echo off
setlocal

:: Obtiene la ruta actual donde ejecutaste el archivo
set "CURRENT_PATH=%CD%"

echo ============================================
echo      INICIANDO PROYECTO
echo ============================================

:: Detectar si estamos en la carpeta del Backend
echo %CURRENT_PATH% | findstr /i "cuba-science-plan-backend" >nul
if not errorlevel 1 (
    echo [INFO] Detectado: Backend
    call backend\env\Scripts\activate.bat
    cd backend
    python manage.py runserver
    goto :end
)

:: Detectar si estamos en la carpeta del Frontend
echo %CURRENT_PATH% | findstr /i "cuba-science-plan-frontend" >nul
if not errorlevel 1 (
    echo [INFO] Detectado: Frontend
    cd frontend
    call npm run dev
    goto :end
)

echo [ERROR] No se pudo identificar el proyecto.
echo Asegurate de que el archivo start.bat este en la carpeta raiz del proyecto.
pause

:end
pause