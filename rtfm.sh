#!/bin/bash
# set -x and set +x flags provide a poor man's progress bar after logo display with 7 second delay...
  echo "                                                                                             "
  echo "                             _____ _______ ______ __  __                                     "
  echo "                            |  __ \__   __|  ____|  \/  |                                    "
  echo "                            | |__) | | |  | |__  | \  / |                                    "
  echo "                            |  _  /  | |  |  __| | |\/| |                                    "
  echo "                            | | \ \  | |  | |    | |  | |                                    "
  echo "                            |_|  \_\ |_|  |_|    |_|  |_|                                    "
  echo "                                                                                             "
  echo "                                RTFM INSTRUCTIONS                                            "
  echo "                                                                                             "
  echo "                   Create A Frigging `uname -o` Manual So                                    "
  echo "                   $USER Can Read It!"
  sleep 4
  echo "                                                                                             "
  echo "                   Be Patient On Large Installations                                         "
  sleep 1
  echo "                   Don't Panic. Debug Is On To Show Progress.                                "
  sleep 2
  echo "                   If You Do Panic: Hit CTRL+c For A Messy Exit                              "
  sleep 2
read -n 1 -r -s -p $'Press ENTER To Begin...\n'
  set -x
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                             _____ _______ ______ __  __                                     "
  echo "                            |  __ \__   __|  ____|  \/  |                                    "
  echo "                            | |__) | | |  | |__  | \  / |                                    "
  echo "                            |  _  /  | |  |  __| | |\/| |                                    "
  echo "                            | | \ \  | |  | |    | |  | |                                    "
  echo "                            |_|  \_\ |_|  |_|    |_|  |_|                                    "
  echo "                                                                                             "
  echo "*********************************************************************************************" >> RTFM
  echo "`uname -o` Manual for $USER on `hostname -f`:                            " >> RTFM
  echo "                                                                                             " >> RTFM
  hostnamectl >> RTFM 2>&1
  echo "                                                                                             " >> RTFM
  echo " `apt list --installed | wc -l` packages currently installed                            " >> RTFM 2>/dev/null       
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*                                   CONTENTS                                                *" >> RTFM
  echo "*                                   ********                                                *" >> RTFM
# echo "*                               0. Installed Packages                                       *" >> RTFM
  echo "*                               1. Available Command List                                   *" >> RTFM
  echo "*                               2. Available Command Reference                              *" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*                               1. Available Command List                                   *" >> RTFM
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
  echo "*                              2. Command Information                                      *" >> RTFM
  echo "*                                                                                           *" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo " "
while read p; do
  echo "                                                                                             " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                                                                                             " >> RTFM
  echo "                       3. $p COMMAND Reference" >> RTFM
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
enscript -p manual.ps RTFM
ps2pdf manual.ps RTFM.pdf
# cleanup
rm manual.ps
rm RTFM
rm commands
set +x
echo "$USER , you can now RTFM in your favorite ebook viewer."
aplay ./endbell.wav
