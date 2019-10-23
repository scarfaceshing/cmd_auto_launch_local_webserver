@ECHO OFF
CLS

FOR /F "tokens=1,2 delims==2" %%a in (serve.ini) do (
 if %%a==dir_simpleserviceweb set dir_simpleserviceweb=%%b
 if %%a==dir_simpleserviceapi set dir_simpleserviceapi=%%b
)
start class3.bat
E:
CD %dir_simpleserviceweb%
ionic serve --port=8100