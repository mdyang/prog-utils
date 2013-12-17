@echo off

del test.out

if exist main.cpp goto cpp
if exist main.cs goto cs

:cpp
set COMPILE=cl main.cpp
set EXEC=main.exe
goto end

:cs
set COMPILE=csc main.cs
set EXEC=main.exe
goto end

:end
%COMPILE%
echo ---------------------------------------
type in | %EXEC% | dupstdout