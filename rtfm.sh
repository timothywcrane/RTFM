#!/bin/bash -x
# 1. Debugging -x flag above acts as a poor man's progress bar [1]
# 2. Make A Folder To Output RTFM Documents [22]
# 3. Copy alarm audio file into folder [23]
# 4. Enter the folder you created [24]
# 5. Get a list of a user's available system commands and create a text file called commandlist.txt [25]
# 6. Create a ps file from commandlist.txt [26]
# 7. Create a pdf document from RTFCMD.ps [27]
# 8. Remove the ps file used to make the pdf [28]
# 9. Then Loop through the commands in commandlist.txt to make text manual named RTFM.txt
#        with header and informational text
#        For each command a decorated header and important system information is sent
#        to a text file named RTFM.txt [29..58]
# 10. Create RTFM.ps file from RTFM.txt [59]
# 11. Create RTFM.pdf from RTFM.ps [60]
# 12. Optional Cleanup
#       Remove RTFM.ps - Default [61]
#       Remove RTFM.txt [62]
#       Remove commandlist.txt [63]
# 13. Announce through the terminal that the RTFM process has been completed [64]
# 14. Optionally with audio ( with alsa-utils installed to provide the aplay command) [65]
mkdir RTFM
cp endbell.wav RTFM
cd RTFM
compgen -bcegksuv |sort|uniq >> commandlist.txt
enscript -p RTFCMD.ps commandlist.txt
ps2pdf RTFCMD.ps RTFCMD.pdf
rm RTFCMD.ps
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
done < commandlist.txt
enscript -p RTFM.ps RTFM.txt
ps2pdf RTFM.ps RTFM.pdf
rm RTFM.ps
# rm RTFM.txt
# rm commandlist.txt
echo "Done. Now RTFM in your favorite ebook viewer."
aplay endbell.wav
