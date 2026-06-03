@echo off
start "" "C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe" "D:\Work\cuba-science-plan-backend"
start "" "C:\Users\%USERNAME%\AppData\Local\Programs\Microsoft VS Code\Code.exe" "D:\Work\cuba-science-plan-frontend"
start "" cmd /c "cd /d D:\Work\cuba-science-plan-backend && cmd /k"
start "" cmd /c "cd /d D:\Work\cuba-science-plan-frontend && cmd /k"