#!/bin/bash -x ##############################################
# Debugging -x flag above acts as a poor man's progress bar #
#############################################################

##########################################
# Make A Folder To Output RTFM Documents #
##########################################

mkdir RTFM

################################
# Enter the folder you created #
################################

cd RTFM

##################################################################################################
# Get a list of a user's available system commands and create a text file called commandlist.txt #
##################################################################################################

compgen -bcegksuv |sort|uniq >> commandlist.txt

###############################################
# Create a ps file out of the commandlist.txt #
###############################################

enscript -p RTFCMD.ps commandlist.txt

#############################################
# Create a pdf document out of the ps file. #
#############################################

ps2pdf RTFCMD.ps RTFCMD.pdf

# #########################################
# Remove the ps file used to make the pdf #
###########################################
  
  rm RTFCMD.ps
  
  
################################################
# Loop through the commands in commandlist.txt #
################################################

while read p; do

#
# For Each One - Print decorated headers and important system information to a text file named RTFM.txt
  echo " " >> RTFM.txt
  echo "*********************************************************************************************" >> RTFM.txt
  echo "*********************************************************************************************" >> RTFM.txt
  echo " INFORMATION FOR THE $p COMMAND " >> RTFM.txt
  echo "*********************************************************************************************" >> RTFM.txt
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
  apropos -e "$p" >> RTFM.txt
  echo " " >> RTFM.txt
  echo " " >> RTFM.txt
done < commandlist.txt
#
##############################################
# Create a ps file out of the RTFM text file #
##############################################

enscript -p RTFM.ps RTFM.txt

#########################################
# Create a pdf ebook out of the ps file #
#########################################

ps2pdf RTFM.ps RTFM.pdf

####################
# Optional Cleanup #
####################

############################
# Remove ps file - Default #
############################

rm RTFM.ps

#############################
# Remove the RTFM text file #
#############################

# rm RTFM.txt

###################################
# Remove the commandlist.txt file #
###################################

# rm commandlist.txt

##########################################################################
# Announce through the terminal that the RTFM process has been completed #
##########################################################################

echo "Done. Now RTFM in your favorite ebook viewer."

