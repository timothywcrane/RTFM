#!/bin/bash -x
# version alpha.0.1
# Debugging -x flag above acts as a poor man's progress bar
# Make A Folder To Output RTFM Documents
#  
# Enter the folder you created
# Get a list of a user's available system commands and create a text file called RTFC.txt
# Create a ps file from commandlist.txt
# Create a pdf document from RTFC.ps
# Remove the ps file used to make the pdf
# Then Loop through the commands in RTFC.txt to make text manual named RTFM.txt
#        with header and informational text
#        For each command a decorated header and important system information is sent
#        to a text file named RTFM.txt
# Create RTFM.ps file from RTFM.txt
# Create RTFM.pdf from RTFM.ps
# Optional Cleanup
#       Remove RTFM.ps - Default
#       Remove RTFM.txt
#       Remove RTFC.txt
# Announce through the terminal that the RTFM process has been completed
# Optionally with audio ( with alsa-utils installed to provide the aplay command)
mkdir RTFM
# cp endbell.wav RTFM
cd RTFM
compgen -bcegksuv |sort|uniq >> RTFC.txt
enscript -p RTFC.ps RTFC.txt
ps2pdf RTFC.ps RTFC.pdf
rm RTFC.ps
while read p; do
  echo " " >> RTFM.txt
  echo "*********************************************************************************************" >> RTFM.txt
  echo " INFORMATION FOR THE $p COMMAND " >> RTFM.txt
  echo "*********************************************************************************************" >> RTFM.txt
  echo " " >> RTFM.txt
  echo " " >> RTFM.txt
  echo "********************** WHAT IS $p **********************" >> RTFM.txt
  whatis "$p" >> RTFM.txt 2>&1
  echo " " >> RTFM.txt
  echo " " >> RTFM.txt
  echo "********************** WHERE IS $p **********************" >> RTFM.txt
  whereis "$p" >> RTFM.txt 2>&1
  echo " " >> RTFM.txt
  echo " " >> RTFM.txt
  echo "********************** MAN PAGE FOR $p **********************" >> RTFM.txt
  man "$p" >> RTFM.txt 2>&1
  echo " " >> RTFM.txt
  echo " " >> RTFM.txt
  echo "********************** OTHER HELP FOR $p **********************" >> RTFM.txt
  help "$p" >> RTFM.txt 2>&1
  echo " " >> RTFM.txt
  echo " " >> RTFM.txt
  echo "********************** $p ALSO MATCHES **********************" >> RTFM.txt
  apropos -e "$p" >> RTFM.txt 2>&1
  echo " " >> RTFM.txt
  echo " " >> RTFM.txt
done < RTFC.txt
enscript -p RTFM.ps RTFM.txt
ps2pdf RTFM.ps RTFM.pdf
rm RTFM.ps
# rm RTFM.txt
# rm RTFC.txt
echo "Done. Now RTFM in your favorite ebook viewer."
aplay ../endbell.wav
