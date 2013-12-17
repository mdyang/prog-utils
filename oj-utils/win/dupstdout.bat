@echo off
setlocal
for /F "tokens=*" %%a in ('more') do (
  echo %%a
  echo %%a>> test.out
)