@echo off
if exist archive(
   if errorlevel 1 (
      echo No .bak files found in archive. Try again.
   ) else (
      echo Level Complete!
   )
) else (
   echo "archive" folder not found. Try again.
)
