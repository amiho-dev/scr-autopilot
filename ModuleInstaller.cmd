@echo off

echo Welcome to the SCR-Autopilot module installer!
echo WARNING: Python 3.9.6 MUST be installed!
pause

echo Please wait...
echo Waiting for 10 seconds for the processes to start...
timeout 10 >nul

echo Cleaning up temporary files...
del /q /f /s %temp%
cd ..		
cd ..	
cd ..	
cd ..

echo *************************************************************************************************
echo (!) If the installation fails, please consider (re-) installing Python 3.9.6.
echo Installing required Python packages...
py -m pip install --upgrade pip
py -m pip install opencv_python requests PyDirectInput ahk Flask numpy pytesseract Pillow pywin32
echo Process completed with status [1].
echo *************************************************************************************************
echo Module installation completed. This window will close automatically in 5 seconds.
timeout 5 >nul
exit

