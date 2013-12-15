@echo off

if "%1"=="" goto end
md %1 && cd %1

:end
notepad++
notepad++ main.cpp
notepad++ out
notepad++ in