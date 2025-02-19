@echo off 
if ""=="VICTORY" ( 
   echo The door swings open You step into the sunlight... 
   echo YOU HAVE ESCAPED THE CAVERN 
   pause 
   exit 
) else ( 
   echo The door remains locked... the word in key.txt is not "VICTORY". 
   echo Try again 
) 
