:: 2014-04-22, Amir Tahmasbi: Created
:: 2014-05-02, Amir Tahmasbi: Updated to execute RunFandPLimitTool.exe and added (Debug) to the title.

Echo off

cls

:: Inform the user that the MCR is running
Echo Initializing the MATLAB Component Runtime (MCR) 7.15. 
Echo This may take up to a minute ...

:: Run the FandPLimitTool, it will take a while to run the MCR
:: start /d "\" RunFandPLimitTool.exe

RunFandPLimitTool.exe

:: pause

