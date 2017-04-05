REM Do a specific Run
if %RegrResult%==FAILED goto End

if (%2)==() ( SET TARGET=/RunContext/GenerateAll ) else ( SET TARGET=%2 )

echo %1
echo %2

call Impl/SetDirs.bat %1
echo %GeoDmdRunCmdBase% %1 %TARGET%

%GeoDmdRunCmdBase% %1.dms %TARGET%

	if not errorlevel 1 (Echo *** %1 OK ) Else (
		Set RegrResult=FAILED
 		Echo !!! %1 FAILED
		Echo !!! %1 FAILED >> %LogFilePath%
		type %GeoDmsLogFilePath% >> %LogFilePath%
	)

:End