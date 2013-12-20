@echo off

del test.out

if exist main.cpp goto cpp
if exist main.cs goto cs
if exist main.c goto c

:c
set COMPILE=cl main.c
set EXEC=main.exe
goto end

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