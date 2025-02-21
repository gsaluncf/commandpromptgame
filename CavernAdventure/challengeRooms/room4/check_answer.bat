@echo off
if not exist temp.log (
   echo Level Complete!
) else (
   echo File still exists. Try again.
)
