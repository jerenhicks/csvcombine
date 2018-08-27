@echo off
SET DEFAULT_DIR=C:\test
SET PROCESS_BAT=%DEFAULT_DIR%
SET JAR=%DEFAULT_DIR%

cd %DEFAULT_DIR%

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
mkdir %fullstamp%

cd %fullstamp%

::75
SET IMEI=357497085267331 
mkdir %IMEI%

SET IMEI=357497085497458
mkdir %IMEI%

SET IMEI=357497085499223
mkdir %IMEI%

SET IMEI=357497085496898
mkdir %IMEI%

SET IMEI=355984086011307
mkdir %IMEI%

SET IMEI=355984081123982
mkdir %IMEI%

SET IMEI=355984086011950
mkdir %IMEI%

SET IMEI=355984081093656
mkdir %IMEI%

SET IMEI=359031084424003
mkdir %IMEI%

SET IMEI=359032081550105
mkdir %IMEI%

SET IMEI=359033080302415
mkdir %IMEI%

SET IMEI=359031084366030
mkdir %IMEI%

SET IMEI=356315082885106
mkdir %IMEI%

SET IMEI=356315082958705
mkdir %IMEI%

SET IMEI=356315082966849
mkdir %IMEI%

SET IMEI=356315082911712
mkdir %IMEI%

::75
SET IMEI=355996084786467
mkdir %IMEI%

SET IMEI=355986084823963
mkdir %IMEI%

SET IMEI=355986088378634
mkdir %IMEI%

SET IMEI=355986084785386
mkdir %IMEI%

::50
SET IMEI=352157091038630
mkdir %IMEI%

SET IMEI=352157091299505
mkdir %IMEI%

SET IMEI=352157091287138
mkdir %IMEI%

SET IMEI=352157091018129
mkdir %IMEI%

copy "%PROCESS_BAT%\process.bat" "%DEFAULT_DIR%/%fullstamp%/process.bat"
mkdir output
copy "%JAR%\csvcombine.jar" "%DEFAULT_DIR%/%fullstamp%/output/csvcombine.jar"

pause
