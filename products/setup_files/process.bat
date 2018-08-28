SET DEFAULT_DIR=%~dp0

SET DEVICE_ID=73
SET IMEI=357497085267331
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=357497085497458
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=357497085499223
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=357497085496898
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=355984086011307
mba2mfii -i %IMEI% -d %DEVICE_ID% -p 311420 .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=355984081123982
mba2mfii -i %IMEI% -d %DEVICE_ID% -p 311420 .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=355984086011950
mba2mfii -i %IMEI% -d %DEVICE_ID% -p 311420 .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=355984081093656
mba2mfii -i %IMEI% -d %DEVICE_ID% -p 311420 .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=359031084424003
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=359032081550105
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=359033080302415
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=359031084366030
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=356315082885106
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=356315082958705
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=356315082966849
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=356315082911712
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

::75
SET DEVICE_ID=75
SET IMEI=355996084786467
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=355986084823963
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=355986088378634
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=355986084785386
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

::50
SET DEVICE_ID=50
SET IMEI=352157091038630
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=352157091299505
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=352157091287138
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

SET IMEI=352157091018129
mba2mfii -i %IMEI% -d %DEVICE_ID% .\%IMEI% .\output\%IMEI%.csv 

::process

cd output 
java -jar csvcombine.jar %DEFAULT_DIR%output %DEFAULT_DIR%output

pause
