@echo off&setlocal EnableDelayedExpansion 
set a=1 
for /f "delims=" %%i in ('dir /b *.jpg') do ( 
if not "%%~ni"=="%~n0" ( 
if !a! LSS 10 (ren "%%i" "T00!a!.JPG") else if !a! LSS 100 (ren "%%i" "T0!a!.JPG") else ren "%%i" "T!a!.JPG" 
set/a a+=1 
) 
)
