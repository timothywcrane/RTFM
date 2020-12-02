#!/bin/bash
# set -x and set +x flags provide a poor man's progress bar after logo display
  echo " "
  echo "                             _____ _______ ______ __  __  "
  echo "                            |  __ \__   __|  ____|  \/  | "
  echo "                            | |__) | | |  | |__  | \  / | "
  echo "                            |  _  /  | |  |  __| | |\/| | "
  echo "                            | | \ \  | |  | |    | |  | | "
  echo "                            |_|  \_\ |_|  |_|    |_|  |_| "
  echo " "
  echo "                                RTFM INSTRUCTIONS "
  echo " "
  echo "                   Create A Frigging Custom `uname -o` Manual"
  echo "                   Specifically For $USER To Read! "
  echo " "
  echo "                   Be Patient On Large Installations "
  echo " "
  echo "                   Don't Panic. Debug Is On To Show Progress. "
  sleep 1
  echo "                   If You Do Panic: Hit CTRL+c To Exit "
  sleep 1
  echo " "
  read -n 1 -r -s -p $'Press ENTER To Begin...\n'
  touch RTFM
  sleep 1
  set -x
  echo " " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "                             _____ _______ ______ __  __   " >> RTFM
  echo "                            |  __ \__   __|  ____|  \/  |  " >> RTFM
  echo "                            | |__) | | |  | |__  | \  / |  " >> RTFM
  echo "                            |  _  /  | |  |  __| | |\/| |  " >> RTFM
  echo "                            | | \ \  | |  | |    | |  | |  " >> RTFM
  echo "                            |_|  \_\ |_|  |_|    |_|  |_|  " >> RTFM
  echo " " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo "`uname -o` Manual for $USER on `hostname -f`:                            " >> RTFM
  echo " " >> RTFM
  hostnamectl >> RTFM 2>&1
  echo " " >> RTFM
  echo " `apt list --installed | wc -l` packages currently installed                                 " >> RTFM 2>/dev/null       
  echo " " >> RTFM
  echo "*********************************************************************************************" >> RTFM
  echo " " >> RTFM
  echo "         CONTENTS " >> RTFM
  echo "           *** " >> RTFM
  echo "  1. Installed Packages " >> RTFM
  echo "  2. Available Commands " >> RTFM
  echo "  3. Command References " >> RTFM
  echo " " >> RTFM
  echo "**************************" >> RTFM
  echo " " >> RTFM
  echo " " >> RTFM
  echo "**************************" >> RTFM
  echo " " >> RTFM
  echo " 1. Installed Packages " >> RTFM
  echo " " >> RTFM
  echo "*************************" >> RTFM
  echo " " >> RTFM
  echo " " >> RTFM
  touch packages
  sleep 1
  apt list --installed > packages
  apt list --installed >> RTFM
  echo " " >> RTFM
  echo "***********************" >> RTFM
  echo " " >> RTFM
  echo " 2. Available Commands " >> RTFM
  echo " " >> RTFM
  echo "***********************" >> RTFM
  echo " " >> RTFM
  echo " " >> RTFM
  touch commands
  sleep 1
  compgen -bcegksuv |sort|uniq > commands
  compgen -bcegksuv |sort|uniq >> RTFM
  echo " " >> RTFM
  echo "************************" >> RTFM
  echo " " >> RTFM
  echo "  3. Command References " >> RTFM
  echo " " >> RTFM
  echo "************************" >> RTFM
  echo " " >> RTFM
  echo " " >> RTFM
while read p; do
  echo " * The $p COMMAND Reference " >> RTFM
  echo " " >> RTFM
  echo "** WHAT IS $p ? " >> RTFM
  whatis $p >> RTFM 2>&1
  echo " " >> RTFM
  echo "** WHEREIS $p ? " >> RTFM
  whereis $p >> RTFM 2>&1
  echo " " >> RTFM
  echo "** MAN PAGE FOR $p " >> RTFM
  man $p >> RTFM 2>&1
  echo " " >> RTFM
#  bro commented out as OOTB it's use is call heavy and wait heavy on large sytems notwithstanding the lack of a random wait-call generator... LOL Sorry bro. Use at your own risk.
#  echo "** BRO-PAGES FOR $p " >> RTFM
#  bro lookup $p >> RTFM 2>/dev/null
#  sleep 5
#  echo " " >> RTFM
# pass on bro errors and give ample delay after bro to be thankful ;)
  echo "** TLDR FOR $p " >> RTFM
  tldr $p >> RTFM 2>&1
  echo " " >> RTFM
  echo "** CHEAT $p " >> RTFM
  cheat $p >> RTFM 2>&1
  echo " " >> RTFM
  echo "* HELP via help $p " >> RTFM
  help $p >> RTFM 2>&1
  echo " " >> RTFM
# causes problems  " HELP via $p -- help " >> RTFM
# $p --help` >> RTFM 2>&1
# echo " " >> RTFM
  echo "** $p ALSO MATCHES " >> RTFM
  apropos -e $p >> RTFM 2>&1
  echo " " >> RTFM
done < commands
enscript -p RTFM.ps RTFM
ps2pdf RTFM.ps RTFM.pdf
# optional cleanup
rm packages
rm commands
rm RTFM
rm RTFM.ps
set +x
aplay ./endbell.wav
echo "                                                          "
echo "                             _____ _______ ______ __  __  "
echo "                            |  __ \__   __|  ____|  \/  | "
echo "                            | |__) | | |  | |__  | \  / | "
echo "                            |  _  /  | |  |  __| | |\/| | "
echo "                            | | \ \  | |  | |    | |  | | "
echo "                            |_|  \_\ |_|  |_|    |_|  |_| "
echo " "
echo "                                  RTFM HAS FINISHED"
echo " "
echo "Your RTFM Document(s) Have Been Created. "
echo "$USER , you can now RTFM. "
echo " "
read -n 1 -r -s -p $'ENTER opens new RTFM.pdf in xpdf  CTRL+c Exits\n'
xpdf RTFM.pdf
