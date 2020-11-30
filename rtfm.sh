#!/bin/bash -x
#
#####################################################################################################################
# 1. Get a list of a user's available system commands and create a text file that lists them called commandlist.txt #
#####################################################################################################################
#
  compgen -bcegksuv |sort|uniq >> commandlist.txt
#
#####################################################################################################################
# 2. Loop through the commands in commandlist.txt and gather/print out reference info and headers into another      #
# text file called RTFM                                                                                             #
#####################################################################################################################
#
while read p; do
  echo " " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo " INFORMATION FOR THE $p COMMAND " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo " " >> RTFM
  echo " " >> RTFM
  echo "********************** WHAT IS $p **********************" >> RTFM
  whatis "$p" >> RTFM 2>&1
  echo " " >> RTFM
  echo " " >> RTFM
  echo "********************** WHERE IS $p **********************" >> RTFM
  whereis "$p" >> RTFM 2>&1
  echo " " >> RTFM
  echo " " >> RTFM
  echo "********************** MAN PAGE FOR $p **********************" >> RTFM
  man "$p" >> RTFM 2>&1
  echo " " >> RTFM
  echo " " >> RTFM
  echo "********************** OTHER HELP FOR $p **********************" >> RTFM
  help "$p" >> RTFM 2>&1
  echo " " >> RTFM
  echo " " >> RTFM
  echo "********************** $p ALSO MATCHES **********************" >> RTFM
  apropos -e "$p" >> RTFM
  echo " " >> RTFM
  echo " " >> RTFM
done < commandlist.txt
#
##############################################################################################
# 3. Create ps file out of the RTFM text then a pdf ebook out of the ps file, remove info    #
# text and ps file, leaving PDF to read                                                      #
##############################################################################################
#
  enscript -p RTFM.ps RTFM
  ps2pdf RTFM.ps RTFM.pdf
  rm RTFM.ps
  rm RTFM
# rm commandlist.txt
echo "Done. Now RTFM in your favorite ebook viewer."
#
##############################################################################################
#                        4. Remove or Create PDF out of command list                         #
#   4a. uncomment 'rm commandlist.txt' above (by removing the #) before you run the script   #
# if you wish to automatically remove the text file containing your list of commands         #
# created by the script. Some may wish to keep it however or create another standalone       #
# command list ebook with it by following the instructions below so I have left it commented #                                          
##############################################################################################
#
##############################################################################################
#   4b. comment everything above (by leading each line with #) and uncomment                 #
# the 2 code lines below to turn the command list into an ebook of it's own.                 #
# You must have first already run the script once without removing commandlist.txt           #
##############################################################################################
#
#encript -p RTFCMD.ps commandlist.txt
#ps2pdf RTFCMD.ps RTFCMD.pdf
#
