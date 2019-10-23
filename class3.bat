@ECHO OFF
CLS

FOR /F "tokens=1,2 delims==2" %%a in (serve.ini) do (
 if %%a==dir_simpleservicemobile set dir_simpleservicemobile=%%b
 if %%a==dir_simpleserviceapi set dir_simpleserviceapi=%%b
)

CD %dir_simpleservicemobile%
E:
ionic serve --port=8101