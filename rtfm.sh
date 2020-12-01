#!/bin/bash
# set -x and set +x flags provide a poor man's progress bar after logo display with 7 second delay...
  echo "                              "
  echo "  _____ _______ ______ __  __ "
  echo " |  __ \__   __|  ____|  \/  |"
  echo " | |__) | | |  | |__  | \  / |"
  echo " |  _  /  | |  |  __| | |\/| |"
  echo " | | \ \  | |  | |    | |  | |"
  echo " |_|  \_\ |_|  |_|    |_|  |_|"
  echo "                              "
  echo "                              "
  echo " Be Patient During Manual Creation ... This May Take A While. "
  echo " Hit CTRL+c At Any Time To Force A Messy Exit"
  echo " Debug enabled to provide a poor-man progress indicator"
  sleep 5
  echo " Wait For It..."
  sleep 2
  set -x
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "  _____ _______ ______ __  __                                                                " >> RTFM
  echo " |  __ \__   __|  ____|  \/  |                                                               " >> RTFM
  echo " | |__) | | |  | |__  | \  / |                                                               " >> RTFM
  echo " |  _  /  | |  |  __| | |\/| |                                                               " >> RTFM
  echo " | | \ \  | |  | |    | |  | |                                                               " >> RTFM
  echo " |_|  \_\ |_|  |_|    |_|  |_|                                                               " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "Command Manual for $USER referencing:                                                        " >> RTFM
  echo "                                                                                             " >> RTFM
  hostnamectl >> RTFM 2>&1
  echo "                                                                                             " >> RTFM
  echo " with `apt list --installed | wc -l` packages currently installed                            " >> RTFM 2>/dev/null
  echo " as of $(date)                                                                               " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*                                          CONTENTS                                         *" >> RTFM
  echo "*                                          ********                                         *" >> RTFM
  echo "*                                       1. Command List                                     *" >> RTFM
  echo "*                                       2. Command Information                              *" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*                                    1. Command List                                        *" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  compgen -bcegksuv |sort|uniq > commands
  compgen -bcegksuv |sort|uniq >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*                               2. Command Information                                      *" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo " "
while read p; do
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                        INFORMATION FOR THE $p COMMAND " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*** WHAT IS $p ? ***                                                                         " >> RTFM
  whatis $p >> RTFM 2>&1
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*** WHEREIS $p ? ***                                                                         " >> RTFM
  whereis "$p" >> RTFM 2>&1
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*** MAN PAGE FOR $p ***                                                                      " >> RTFM
  man $p >> RTFM 2>&1
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*** HELP via help $p ***                                                                     " >> RTFM
  help $p >> RTFM 2>&1
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "* $p ALSO MATCHES *                                                                          " >> RTFM
  apropos -e "$p" >> RTFM 2>&1
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
done < commands
enscript -p rtf_manual.ps RTFM
ps2pdf rtf_manual.ps RTFM.pdf
# cleanup
rm rtf_manual.ps
rm RTFM
rm commands
set +x
echo "Done. Now RTFM in your favorite ebook viewer."
aplay ./endbell.wav
