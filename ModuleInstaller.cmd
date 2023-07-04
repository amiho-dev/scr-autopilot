@echo off	
echo Welcome to the SCR-Autopilot module installer!
echo WARNING: Python 3.9.6 MUST be installed!
pause
echo Please wait...
echo Waiting for 10 seconds for the processes to start...
echo Ignore the "Deleted File" popup, your temporary folder is being cleaned up for installation.
timeout 10	
	del /q /f /s %temp%
	del /q /f /s temp
	cd ..		
	cd ..	
	cd ..	
	cd ..
echo __________________________________________________________________________________________
echo If this is failing, please (re-) install Python 3.9.6.
pause
py -m pip install --upgrade pip
py -m pip install opencv_python requests PyDirectInput ahk Flask numpy pytesseract Pillow pywin32
echo __________________________________________________________________________________________
echo You may now close this window.
pause