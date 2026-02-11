setlocal
call dart.bat pub global activate script_runner
rem set PATH=%USERPROFILE%\AppData\Local\Pub\Cache\bin;%PATH%
call scr.bat %*
endlocal
