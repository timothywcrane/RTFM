#!/bin/bash
#

#                                                                                 #
#---------------------------------------------------------------------------------#
#                                                                                 #
          ############################################################
          # ******************************************************** #
          # *                                                      * #
          # *                  ******************                  * #
          # *                  ******************                  * #
          # *              _____ _______ ______ __  __             * #
          # *             |  __ \__   __|  ____|  \/  |            * #
          # *             | |__) | | |  | |__  | \  / |            * #
          # *             |  _  /  | |  |  __| | |\/| |            * #
          # *             | | \ \  | |  | |    | |  | |            * #
          # *             |_|  \_\ |_|  |_|    |_|  |_|            * #
          # *                                                      * #
          # *                  Script Information                  * #
          # *                  ******************                  * #
          # *                                                      * #
          # * Name    : rtfm.sh - Read The Frigging Manual         * #
          # *           Shell Script                               * #
          # *                                                      * #
          # * Description    : RTFM is a simple Bash script        * #
          # *     that creates a frigging custom system manual     * #
          # *     for you to read, search and reference.           * #
          # *                                                      * #
          # *     No more excuses. Make a manual and use it.       * #
          # *                                                      * #
          # *                   Do Not Panic!                      * #
          # *                                                      * #
          # *                                                      * #
          # * Version    : Pre-Alpha-0.0.1                         * #
          # *                                                      * #
          # * Author    : Timothy W. Crane                         * #
          # *                                                      * #
          # * Email    : timothywcrane@gmail.com                   * #
          # *                                                      * #
          # *                  ******************                  * #
          # *                  ******************                  * #
          # *                                                      * #
          # ******************************************************** #
          ############################################################
#                                                                                 #
#---------------------------------------------------------------------------------#
#                                                                                 #

#
# Clear Screen And Display WELCOME                                    
#                                     
clear
echo "                                                                            "
echo "                             _____ _______ ______ __  __                    "
echo "                            |  __ \__   __|  ____|  \/  |                   "
echo "                            | |__) | | |  | |__  | \  / |                   "
echo "                            |  _  /  | |  |  __| | |\/| |                   "
echo "                            | | \ \  | |  | |    | |  | |                   "
echo "                            |_|  \_\ |_|  |_|    |_|  |_|                   "
echo "                                                                            "    
echo "                                     WELCOME                                "
echo "                                     *******                                "
sleep 1
echo "                                                                            "    
echo "               Create A Frigging Manual About Using `uname -o`              "
echo "               On System `hostname -f`                                     "
echo "               For $USER To Read, Search And Reference                     "
echo "                                                                            "
sleep 2
echo "               Be Patient On Large Or Slow Builds                           "
echo "                                                                            "
sleep 1
echo "               Do Not Panic!                                                "
sleep 1
echo "               Debug Set To Show Progress...                                "
sleep 4
echo "               If You Do Panic Hit CTRL+c To Exit                          "
sleep 3
echo "                                                                            "
echo "               Do You Have What It Takes To Run RTFM?                       "
echo "                                                                            "
sleep 2

#
# Hitting ENTER Continues To Tests For Dependencies - Hit CTRL+c Exits
#
echo "                                                                            "
read -n 1 -r -s -p $'               Hit ENTER To Check - CTRL+c To Exit\n'
echo "                                                                            "

#
# Clear Screen And Display RTFM DEPENDENCIES Panel
#
clear
echo "                                                                            "
echo "                             _____ _______ ______ __  __                    "
echo "                            |  __ \__   __|  ____|  \/  |                   "
echo "                            | |__) | | |  | |__  | \  / |                   "
echo "                            |  _  /  | |  |  __| | |\/| |                   "
echo "                            | | \ \  | |  | |    | |  | |                   "
echo "                            |_|  \_\ |_|  |_|    |_|  |_|                   "
echo "                                                                            "
echo "                                  RTFM DEPENDENCIES                         "
echo "                                  *****************                         "
echo "                                                                            "

#
# Check For And Display RTFM DEPENDENCIES Information
#
#
# Required
#
echo "                                                                            "
echo "              REQUIRED                                                      "
echo "                                                                            "

#
# Bash
#
echo "                                                                            "
echo "               Bash                                                         "
echo "               The Bourne Again Shell                                       "
echo "                                                                            "
if whereis bash > /dev/null; then
    echo "  found bash version: $(bash --version | head -n 1)                     "
else
    echo "  bash not found. Please install before running RTFM.                   "
fi

#
# Enscript
#
echo "                                                                            "
echo "               Enscript                                                     "
echo "               For Text To Postscript (.ps is the P in PDF)                 "
echo "                                                                            "
if whereis enscript > /dev/null; then
    echo "  found enscript version: $(enscript --version | head -n 1 2>/dev/null) "
else
    echo "  enscript not found. Please install before running RTFM.               "
fi

#
# Ghostscript
#
echo "                                                                            "
echo "               Ghostscript                                                  "
echo "               For Postscript To PDF                                        "
echo "                                                                            "
if whereis ghostscript > /dev/null; then
    echo "  found ghostscript version: $(ghostscript --version 2>/dev/null)       "
else
    echo "  ghostscript not found. Please install before running RTFM.            "
fi

#
# Suggested
#
echo "                                                                            "
echo "               SUGGESTED                                                    "
echo "                                                                            "

#
# Alsa-Utils
#
echo "                                                                           "
echo "               Alsa-utils                                                  "
echo "               For audio play through aplay                                "
echo "                                                                           "
if whereis aplay > /dev/null; then
    echo "  found $(aplay --version 2>/dev/null)"
else
    echo "  aplay not found. Consider installing for sound notifications"
fi

#
# Cheat
#
echo "                                                                           "
echo "               Cheat                                                       "
echo "               https://github.com/cheat/cheat                              "
echo "                                                                           "
if whereis cheat > /dev/null; then
    echo "  found cheat version: $(cheat --version 2>/dev/null)                  "
else
    echo "  cheat not found. Consider installing for extra functionality.        "
fi

#
# Tldr
#
echo "                                                                           "
echo "               Tldr                                                        "
echo "               https://github.com/tldr-pages/tldr                          "
echo "                                                                           "
if whereis tldr > /dev/null; then
    echo "  found tldr                                                           "
#
# get tldr version
#
else
    echo "  tldr not found. Consider installing for extra functionality.         "
fi

#
# Bro
#
echo "                                                                           "
echo "               Bro Pages                                                   "
echo "               https://github.com/hubsmoke/bro                             "
echo "                                                                           "
if whereis bro > /dev/null; then
    echo "  found bro version  $(bro --version 2>/dev/null)                      "
else
    echo "  bro not found. Consider installing for extra functionality.          "
fi

echo " "
#
# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null

#
# ENTER - Unsatisfied Exit
#
echo "                                                                           "
echo "                                                                           "
read -n 1 -r -s -p $'               Hit ENTER To Continue - CTRL+c To Exit\n'
echo "                                                                           "
clear
#
# TODO - Add A Looping Death Metal Soundtrack Via aplay Concurrent With The Debug Stream
#

#
# Clear Screen And Display NO DEBUG NO PROGRESS Panel
#
#

#
#clear
#echo "                                                                          "
#echo "                             _____ _______ ______ __  __                  "
#echo "                            |  __ \__   __|  ____|  \/  |                 "
#echo "                            | |__) | | |  | |__  | \  / |                 "
#echo "                            |  _  /  | |  |  __| | |\/| |                 "
#echo "                            | | \ \  | |  | |    | |  | |                 "
#echo "                            |_|  \_\ |_|  |_|    |_|  |_|                 "
#echo "                                                                          "
#echo "                                No Debug No Progress                      "
#echo "                                ********************                      "
#echo "                                                                          "
#echo "               Debug is off and I have not yet added a progress bar.      "
#echo "               Always read code you download, especially on Github.       "
#echo "                                                                          "
#sleep 1
#echo "               This may take a while depending on your install.           "
#sleep 1
#echo "               Patience is a virtue when RTFM.                            "
#echo "                                                                          "
#echo "               CTRL+c For An Impatient Exit                                   "
#echo "                                                                          "#
#clear

#
# Start Sending Debug Information To Terminal Screen
#    
set -x

#
# Create RTFM file And Wait 1 Second Before Creating The Text Files
#
touch RTFM
sleep 1
#
# Populate RTFM Text File With System Manual Information
#
#
# Add Header Of Summary Section To Bottom Of RTFM File
#
echo "                                                                                             " >> RTFM
echo "*********************************************************************************************" >> RTFM
echo "                             _____ _______ ______ __  __                                     " >> RTFM
echo "                            |  __ \__   __|  ____|  \/  |                                    " >> RTFM
echo "                            | |__) | | |  | |__  | \  / |                                    " >> RTFM
echo "                            |  _  /  | |  |  __| | |\/| |                                    " >> RTFM
echo "                            | | \ \  | |  | |    | |  | |                                    " >> RTFM
echo "                            |_|  \_\ |_|  |_|    |_|  |_|                                    " >> RTFM
echo "                                                                                             " >> RTFM
echo "*********************************************************************************************" >> RTFM
echo "                                                                                             " >> RTFM

#
#  Print The Generic OS Type "Manual for" The Logged In User "on" Fully Qualified System Name
#
echo "`uname -o` Manual for $USER on `hostname -f`:                                                " >> RTFM
echo "                                                                                             " >> RTFM

#
# Get hostnamectl Information And Add To Bottom Of RTFM File
#
hostnamectl >> RTFM 2>&1
echo "                                                                                             " >> RTFM
    
#
# Get Number Of Installed Packages And Add To Bottom Of RTFM File
# 
echo " `apt list --installed | wc -l` packages currently installed                                 " >> RTFM 2>/dev/null

#
# Add Line Decoration To Bottom Of RTFM End Capping The Summary Section
#
echo "                                                                                             " >> RTFM
echo "*********************************************************************************************" >> RTFM
echo "                                                                                             " >> RTFM

#
# Add TOC Header To Bottom Of RTFM File
#
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "         CONTENTS         " >> RTFM
echo "           ****           " >> RTFM
echo "                          " >> RTFM
echo "  1. Installed Packages   " >> RTFM
echo "  2. Available Commands   " >> RTFM
echo "  3. Command References   " >> RTFM
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "                          " >> RTFM
    
#
# Add Section 1 Header To Bottom Of RTFM File
#
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "                          " >> RTFM
echo " 1. Installed Packages    " >> RTFM
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "                          " >> RTFM

#
# Create packages file
#
touch packages
  
#
# Get And Insert Installed Packages Into packages And Bottom Of RTFM File
#
apt list --installed > packages
apt list --installed >> RTFM

#
# Add Line Decoration To Bottom Of RTFM End Capping The Installed Packages Section
#
echo "                                                                                             " >> RTFM
echo "*********************************************************************************************" >> RTFM
echo "                                                                                             " >> RTFM

#
# Add Section 2 Header To Bottom Of RTFM File
#
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "                          " >> RTFM
echo " 2. Available Commands    " >> RTFM
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "                          " >> RTFM

#
# Get Available Command List and Add To Bottom Of RTFM File. Create commands File And Fill With Same
#
#
# Create commands file
#
touch commands

#
# Get And Add Available Commands To commands File
#
compgen -bcegksuv |sort|uniq > commands

#
# Get And Add Available Commands To Bottom Of RTFM File
#
compgen -bcegksuv |sort|uniq >> RTFM

#
# Add Line Decoration To Bottom Of RTFM File End Capping The Available Commands Section
#
echo "                                                                                             " >> RTFM
echo "*********************************************************************************************" >> RTFM
echo "                                                                                             " >> RTFM

#
# Add Section 3 Header To Bottom Of RTFM File
#
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "                          " >> RTFM
echo "  3. Command References   " >> RTFM
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo "                          " >> RTFM

#
# A While-Loop That Queries Your System, Headers
# And Sends Reference Information
# For Each Line In commands To Bottom Of RTFM
#
#
# Get The Following Reference Information And Add To Bottom Of RTFM
#
    #                                                                                 #
    #---------------------------------------------------------------------------------#
    #                                                                                 #
    
    #
    #
    # Display Command Name In Reference Header
    #
        
    #
    # Display What A Command Does
    #
        
    #
    # Display Where Files For Command Are Located
    #
        #
    # Display The Man Page For Command
    #
    
    #
    # Display TLDR Reerence For Command
    #
    
    #
    # Display Cheat Reference For Command
    #
    
    #
    # Display Help Command Reference For Command
    #
    
    #
    # Display Cross Reference For Command String
    #
    
    #
    # Add Line Decoration To Bottom Of RTFM End Capping The Command References Section
    #
    
    #
    # Plans to integrate howdoi may come in the future if SO abuse can be mitigated
    #
    # OOTB direct bro use is request heavy Use sleeps You will die waiting  on large sytems,
    # Notwithstanding the lack of a random wait-call generator...
    #
    # Sorry bro. Use at your own risk.
    #
    #  * echo "** BRO-PAGES FOR $p      " >> RTFM
    #  * bro lookup $p >> RTFM 2>/dev/null
    #  * sleep 30
    #  * echo "                         " >> RTFM
    #
    # Send errors to nullwhere and give ample delay 
    # Rule Of Thumb: The more thankful you are to bro, the longer you set the sleep delay.
    # Could a group caching mechanism provide a solution to API abuse?
    #
    
    #
    # Plans to integrate howdoi may come in the future if SO abuse can be mitigated
    #
    #  * echo "* howdoi $prevariable $p $postvariable " >> RTFM
    #  * howdoi $prevariable $p $postvariable >> RTFM 2>&1
    #  * echo "                                       " >> RTFM
    #
    
    #                                                                                 #
    #---------------------------------------------------------------------------------#
    #                                                                                 #
while read p; do
    echo " * The $p COMMAND Reference " >> RTFM
    echo "                            " >> RTFM
    echo "** WHAT IS $p ?             " >> RTFM 2>/dev/null 
    whatis $p >> RTFM 2>&1
    echo "                            " >> RTFM
    echo "** WHEREIS $p ?             " >> RTFM 
    whereis $p >> RTFM 2>&1
    echo "                            " >> RTFM
    echo "** MAN PAGE FOR $p          " >> RTFM
    man $p >> RTFM 2>&1
    echo "                            " >> RTFM
    echo "** TLDR FOR $p              " >> RTFM
    tldr $p >> RTFM 2>&1
    echo "                            " >> RTFM
    echo "** CHEAT $p                 " >> RTFM
    cheat $p >> RTFM 2>&1
    echo "                            " >> RTFM
    echo "* HELP via help $p          " >> RTFM
    help $p >> RTFM 2>&1
    echo "                            " >> RTFM
    echo "** $p ALSO MATCHES          " >> RTFM
    apropos -e $p >> RTFM 2>&1
    echo "                            " >> RTFM
done < commands
echo "                                                                                             " >> RTFM
echo "*********************************************************************************************" >> RTFM
echo "                                                                                             " >> RTFM

#
# Stop Sending Debug Information To Terminal Screen And Pause
#
set +x
sleep 1
#
# Play Notification Audio
#
aplay ./endbell.wav 2>/dev/null

#
# Clear Screen And Display RTFM TEXT CREATED Panel
#
clear
echo "                                                                          "
echo "                             _____ _______ ______ __  __                  "
echo "                            |  __ \__   __|  ____|  \/  |                 "
echo "                            | |__) | | |  | |__  | \  / |                 "
echo "                            |  _  /  | |  |  __| | |\/| |                 "
echo "                            | | \ \  | |  | |    | |  | |                 "
echo "                            |_|  \_\ |_|  |_|    |_|  |_|                 "
echo "                                                                          "
echo "                                 RTFM TEXTS CREATED                       "
echo "                                 ******************                       "
echo "                                                                          "
echo "                 Texts Now Available: RTFM, packages & commands           "
echo "                                                                          "
echo "                 Copy Them If You Need Them.                              "
echo "                 Your Comment Settings May Delete                         "
echo "                 Them After PDF Creation                                  "
echo "                                                                          "
echo "                 Saved RTFM edits will transfer to .ps file               "
echo "                 and then pdf file creation                               "
echo "                                                                          "
echo "                                                                          "
read -n 1 -r -s -p $'             Hit ENTER To Create PDF\n'
echo "             Hit CRTL+c To Exit                                           "
echo "                                                                          "
clear
#
# Start Sending Debug Information To Terminal Screen
#
set -x

#
# Clear Screen And Display NO DEBUG NO PROGRESS Panel
#
#
#
#clear
#echo "                                                                          "
#echo "                             _____ _______ ______ __  __                  "
#echo "                            |  __ \__   __|  ____|  \/  |                 "
#echo "                            | |__) | | |  | |__  | \  / |                 "
#echo "                            |  _  /  | |  |  __| | |\/| |                 "
#echo "                            | | \ \  | |  | |    | |  | |                 "
#echo "                            |_|  \_\ |_|  |_|    |_|  |_|                 "
#echo "                                                                          "
#echo "                                No Debug No Progress                      "
#echo "                                ********************                      "
#echo "                                                                          "
#echo "               Debug is off and I have not yet added a progress bar.      "
#echo "               Always read code you download, especially on Github.       "
#echo "                                                                          "
#sleep 1
#echo "               This may take a while depending on your install.           "
#sleep 1
#echo "               Patience is a virtue when RTFM.                            "
#echo "                                                                          "
#echo "               CTRL+c For An Impatient Exit                               "
#echo "                                                                          "
#
    
#
# Turn RTFM Text File Into RTFM.ps Postscript File
#
enscript -p RTFM.ps RTFM

clear
echo "               Your Postscript File Has Been Created                        "
echo "               It Will Be There If You Commented Out It's Removal           "
sleep 3
clear
#
# Turn RTFM.ps File Into RTFM.pdf PDF File
#
ps2pdf RTFM.ps RTFM.pdf
    
#
# Optional Removal Of Intermediate Files
#
# rm packages
# rm commands
# rm RTFM
# rm RTFM.ps
#
    
#
# Stop Sending Debug Information To Terminal Screen
#
set +x

#
# Play Notification Audio
#
aplay ./endbell.wav 2>/dev/null

#
# Clear Screen And Display RTFM PDF CREATED Panel
#
clear
echo "                                                                          "
echo "                             _____ _______ ______ __  __                   "
echo "                            |  __ \__   __|  ____|  \/  |                 "
echo "                            | |__) | | |  | |__  | \  / |                 "
echo "                            |  _  /  | |  |  __| | |\/| |                 "
echo "                            | | \ \  | |  | |    | |  | |                 "
echo "                            |_|  \_\ |_|  |_|    |_|  |_|                 "
echo "                                                                          "
echo "                                  RTFM PDF CREATED                        "
echo "                                  ****************                        "
echo "                                                                          "
echo "               RTFM Is Done.                                              "
echo "               $USER , you can now RTFM In PDF. No More Excuses.          "
echo "                                                                          "
echo "                                                                          "
read -n 1 -r -s -p $'               Hit ENTER To RTFM in xpdf - CTRL+c To Exit\n'

#
# Open RTFM.pdf in xpdf Viewer
#
xpdf RTFM.pdf &
    
#
# Clear And Goodbye
#
clear
echo "                                                                          "
echo "                             _____ _______ ______ __  __                   "
echo "                            |  __ \__   __|  ____|  \/  |                 "
echo "                            | |__) | | |  | |__  | \  / |                 "
echo "                            |  _  /  | |  |  __| | |\/| |                 "
echo "                            | | \ \  | |  | |    | |  | |                 "
echo "                            |_|  \_\ |_|  |_|    |_|  |_|                 "
echo "                                                                          "
echo "                                   That Was Fun                           "
echo "                                   ************                           "
echo "                                                                          "
echo "                                  Goodbye. Go RTFM.                       "
echo "                                                                          "
sleep 4  
exit
