@ECHO OFF
CLS

FOR /F "tokens=1,2 delims==2" %%a in (serve.ini) do (
 REM if %%a==dir_simpleservicemobile set dir_simpleservicemobile=%%b
 if %%a==dir_simpleserviceapi set dir_simpleserviceapi=%%b
)

start class2.bat
CD %dir_simpleserviceapi%

bee run --downdoc=true --gendoc=true