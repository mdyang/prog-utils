@echo off
cl main.cpp
type in | main.exe > test.out
echo ---------------------------------------
fc test.out out