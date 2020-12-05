#!/bin/bash
#                                                                                           #
#-------------------------------------------------------------------------------------------#
#                                                                                           #
                #############################################################
                # ********************************************************* #
                # *                                                       * #
                # *             *****************************             * #
                # *             *****************************             * #
                # *              _____ _______ ______ __  __              * #
                # *             |  __ \__   __|  ____|  \/  |             * #
                # *             | |__) | | |  | |__  | \  / |             * #
                # *             |  _  /  | |  |  __| | |\/| |             * #
                # *             | | \ \  | |  | |    | |  | |             * #
                # *             |_|  \_\ |_|  |_|    |_|  |_|             * #
                # *                                                       * #
                # *                  Script Information                   * #
                # *                  ******************                   * #
                # *                                                       * #
                # * Name    : rtfm.sh - Read The Frigging Manual          * #
                # *           Shell Script                                * #
                # *                                                       * #
                # * Description    : RTFM is a simple Bash script         * #
                # *     that creates a frigging user manual on your       * #
                # *     system for you to read, search and reference.     * #
                # *                                                       * #
                # *     No more excuses. Make a manual and use it.        * #
                # *                                                       * #
                # *                   Do Not Panic!                       * #
                # *                                                       * #
                # *                                                       * #
                # * Version  :  Pre-Alpha-0.0.3 Codename: UglyTruth       * #
                # *                                                       * #
                # * Author   :  Timothy W. Crane                          * #
                # *                                                       * #
                # * Email    :  timothywcrane@gmail.com                   * #
                # *                                                       * #
                # *             *****************************             * #
                # *             *****************************             * #
                # *                                                       * #
                # ********************************************************* #
                #############################################################
#                                                                                           #
#-------------------------------------------------------------------------------------------#
#                                                                                           #

# Clear Screen And Display WELCOME                                
#                                     
clear
echo " "
echo "                            *****************************"
echo "                            *****************************"
echo "                             _____ _______ ______ __  __ "
echo "                            |  __ \__   __|  ____|  \/  |"
echo "                            | |__) | | |  | |__  | \  / |"
echo "                            |  _  /  | |  |  __| | |\/| |"
echo "                            | | \ \  | |  | |    | |  | |"
echo "                            |_|  \_\ |_|  |_|    |_|  |_|"
echo " "    
echo "                                  RTFM INSTRUCTIONS"
echo "                                  *****************"
echo " "
sleep 1
echo "               Just Follow The Prompts To Create A Frigging Manual"
sleep 2
echo " "
echo "               About: `uname -o`"
echo "               On: `hostname -f`"
echo "               For: $USER"
echo " "
sleep 1
echo "               Read It, Search It. Reference It."
sleep 1
echo " "
echo "               Be Patient On Large Or Slow Systems"
sleep 1
echo "               Do Not Panic!"
sleep 1
echo "               Debug Set To Show Progress..."
sleep 3
echo " "
echo "               If You Do Panic Just Hit CTRL+c"
sleep 2
echo " "
echo "               Do You Have What It Takes To Run RTFM?"
sleep 1

# Hitting ENTER Continues 'TEXT'
#
echo " "
read -n 1 -r -s -p $'               Hit Any KEY To Check.\n'
echo " "

# Clear Screen And Display RTFM DEPENDENCIES
#
clear
echo " "
echo "                            *****************************"
echo "                            *****************************"
echo "                             _____ _______ ______ __  __ "
echo "                            |  __ \__   __|  ____|  \/  |"
echo "                            | |__) | | |  | |__  | \  / |"
echo "                            |  _  /  | |  |  __| | |\/| |"
echo "                            | | \ \  | |  | |    | |  | |"
echo "                            |_|  \_\ |_|  |_|    |_|  |_|"
echo " "    
echo "                                RTFM DEPENDENCY CHECK"
echo "                                *********************"
echo " "

# Check For And Display RTFM DEPENDENCIES Information
#
#
# Required
# 
echo " "
echo "        REQUIRED"

# Bash
#
echo " "
echo "Bash"
echo "Found Version: $(bash --version | head -n 1 2>/dev/null)"
echo "https://github.com/topics/bash"
echo "Whatis:$(whatis bash 2>/dev/null)"
echo "Whereis: $(whereis bash 2>/dev/null) "
echo " "

#if whatis bash 2>/dev/null; then
#    echo "        found bash version: $(bash --version | head -n 1)"
#else
#    echo "        bash not found. Please install before running RTFM."
#fi

# Enscript
#
echo " "
echo "Enscript"
echo "Found Version: $(enscript --version 2>/dev/null)"
echo "Whatis:$(whatis enscript 2>/dev/null)"
echo "Whereis: $(whereis enscript 2>/dev/null)"
echo " "

#if whereis enscript 2>/dev/null; then
#    echo "        found enscript version: $(enscript --version | head -n 1 2>/dev/null)"
#else
#    echo "        enscript not found. Please install before running RTFM."
#fi

# Ghostscript
#
echo " "
echo "Ghostscript"
echo "Found Version: $(ghostscript --version 2>/dev/null)"
echo "https://ghostscript.com/"
echo "Whatis:$(whatis ghostscrtipt 2>/dev/null)"
echo "Whereis: $(whereis ghostscript 2>/dev/null) "
echo " "

#if whereis ghostscript 2>/dev/null; then
#    echo "        found ghostscript version: $(ghostscript --version 2>/dev/null)"
#else
#    echo "        ghostscript not found. Please install before running RTFM."
#fi

# Suggested
#                                                                                     

echo " "
echo "           SUGGESTED"


# Alsa-Utils
#
echo " "
echo "Alsa-utils"
echo "aplay Audio"
echo "Found Version: $(aplay --version 2>/dev/null)"
echo "Whatis:$(whatis aplay 2>/dev/null)"
echo "Whereis: $(whereis aplay 2>/dev/null) "
echo " "

#if whereis cheat 2>/dev/null; then
#    echo "        found aplay version: $(aplay --version 2>/dev/null)"
#else
#    echo "        aplay not found. Consider installing alsa-utils for soundfunctionality."
#fi

# Cheat
#
echo " "
echo "Cheat"
echo "https://github.com/cheat/cheat"
echo "Found Version: $(cheat --version 2>/dev/null)"
#echo "$(cheat cheat 2>/dev/null)"
echo "Whereis: $(whereis cheat 2>/dev/null) "
echo " "

#if whereis cheat 2>/dev/null; then
#    echo "        found cheat version: $(cheat --version 2>/dev/null)"
#else
#    echo "        cheat not found. Consider installing for extra functionality."
#fi

# Tldr
#
echo " "
echo "Tldr"
echo "To Long...Didn't Read."
echo "https://github.com/tldr-pages/tldr"
#echo "$(tldr tldr 2>/dev/null)"
echo "Whereis: $(whereis tldr 2>/dev/null) "
echo " "

#if whereis tldr 2>/dev/null; then
#    echo "        found tldr"
#else
#    echo "        tldr not found. Consider installing for extra functionality."
#fi

# Bro
#
echo " "
echo "Bro Pages"
echo "Collaborate, Man."
echo "https://github.com/hubsmoke/bro"
echo "Found Version: $(bro --version 2>/dev/null)"
#echo "Whatis:$(bro bro 2>/dev/null)"
echo "Whereis: $(whereis bro 2>/dev/null) "
echo " "

#if whereis bro 2>/dev/null; then
#    echo "        found bro version  $(bro --version 2>/dev/null)"
#else
#    echo "        bro not found. Consider installing for extra functionality."
#fi

# Adventurous
#                                                                                     

echo " "
echo "           Adventurous"


# Enscript2dropbox
#
echo " "
echo "enscript2dropbox"
echo "Hack Your Frigging Manual Over To Dropbox"
echo "https://github.com/kickingvegas/enscript2dropbox"
echo "Found Version: $(enscript2dropbox --version 2>/dev/null)"
echo "Whatis:$(whatis enscript2dropbox 2>/dev/null)"
echo "Whereis: $(whereis enscript2dropbox 2>/dev/null) "
echo " "

#if whereis enscript2dropbox 2> /dev/null; then
#    echo "        found $(enscript2dropbox --version 2>/dev/null)"
#else
#    echo "        enscript2dropbox not found. No Worries ;)"
#fi

echo " "
echo "           Verify You Have What It Takes Above."

# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null

# Hitting ENTER Continues 'TEXT'
#
echo " "
echo " "
read -n 1 -r -s -p $'               Hit Any KEY To Continue - CTRL+c To Exit\n'
echo " "

# Clear Screen And Display RTFM Texts Creation                                    
#
clear
echo " "
echo "                            *****************************"
echo "                            *****************************"
echo "                             _____ _______ ______ __  __ "
echo "                            |  __ \__   __|  ____|  \/  |"
echo "                            | |__) | | |  | |__  | \  / |"
echo "                            |  _  /  | |  |  __| | |\/| |"
echo "                            | | \ \  | |  | |    | |  | |"
echo "                            |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                                   Texts Creation"
echo "                                   **************"
echo " "
sleep 1
echo " "    
echo "               If `hostname -f` Is Ready To Go"
echo " "
echo "               The Next Step Is To Create Text Documents For:"
echo " "
sleep 1
echo "               1. A List Of Packages Installed"
sleep 1
echo "               2. A List Of Available Commands"
sleep 1
echo "               3. A Text Manual That Combines The Above With References"
echo " "
sleep 3
echo " "

# Hitting ENTER Continues 'TEXT'
#
echo " "
read -n 1 -r -s -p $'               Hit Any KEY To Begin - CTRL+c To Exit\n'
echo " "

# TODO - Add A Looping Death Metal Soundtrack Via aplay Concurrent With The Debug Stream
#

clear

#
# Start Sending Debug Information To Terminal Screen
#    
set -x

# Create RTFM file And Wait 1 Second Before Creating The Text Files
#
touch RTFM
sleep 1

# Populate RTFM Text File With System Manual Information
#
#
# Add Header Of Summary Section To Bottom Of RTFM File
#
echo "                                                                                     " >> RTFM
echo "*************************************************************************************" >> RTFM
echo "                             _____ _______ ______ __  __                             " >> RTFM
echo "                            |  __ \__   __|  ____|  \/  |                            " >> RTFM
echo "                            | |__) | | |  | |__  | \  / |                            " >> RTFM
echo "                            |  _  /  | |  |  __| | |\/| |                            " >> RTFM
echo "                            | | \ \  | |  | |    | |  | |                            " >> RTFM
echo "                            |_|  \_\ |_|  |_|    |_|  |_|                            " >> RTFM
echo "                                                                                     " >> RTFM
echo "*************************************************************************************" >> RTFM
echo "                                                                                     " >> RTFM

#  Print The Generic OS Type "Manual for" The Logged In User "on" Fully Qualified System Name
#
echo "`uname -o` Manual for $USER on `hostname -f`:" >> RTFM
echo " " >> RTFM

# Get hostnamectl Information And Add To Bottom Of RTFM File
#
hostnamectl >> RTFM 2>&1
echo " " >> RTFM

# Get Number Of Installed Packages And Add To Bottom Of RTFM File
# 
echo " `apt list --installed | wc -l` packages currently installed" >> RTFM 2>/dev/null
echo " " >> RTFM

# Add Line Decoration To Bottom Of RTFM End Capping The Summary Section
#
echo " " >> RTFM
echo "*************************************************************************************" >> RTFM
echo " " >> RTFM

# Add TOC Header To Bottom Of RTFM File
#
echo " " >> RTFM
echo "**************************" >> RTFM
echo "         CONTENTS         " >> RTFM
echo "           ****           " >> RTFM
echo " " >> RTFM
echo "  1. Installed Packages   " >> RTFM
echo "  2. Available Commands   " >> RTFM
echo "  3. Command References   " >> RTFM
echo " " >> RTFM
echo "**************************" >> RTFM
echo " " >> RTFM
    
# Add Section 1 Header To Bottom Of RTFM File
#
echo " " >> RTFM
echo "**************************" >> RTFM
echo " " >> RTFM
echo " 1. Installed Packages    " >> RTFM
echo " " >> RTFM
echo "**************************" >> RTFM
echo " " >> RTFM

# Create packages file
#
touch packages


# Get And Insert Installed Packages Into packages And Bottom Of RTFM File
#
apt list --installed > packages
apt list --installed | cut -d / -f 1 packages >> RTFM

# Add Line Decoration To Bottom Of RTFM End Capping The Installed Packages Section
#
echo " " >> RTFM
echo "*************************************************************************************" >> RTFM
echo " " >> RTFM

# Add Section 2 Header To Bottom Of RTFM File
#
echo " " >> RTFM
echo "**************************" >> RTFM
echo " " >> RTFM
echo " 2. Available Commands    " >> RTFM
echo "                          " >> RTFM
echo "**************************" >> RTFM
echo " " >> RTFM

# Create commands File. Get Available Command List. Add To commands File And To Bottom Of RTFM File.
#
#
# Create commands file
#
touch commands

# Get And Add Available Commands To commands File
#
compgen -bcegksuv |sort|uniq > commands

# Get And Add Available Commands To Bottom Of RTFM File
#
compgen -bcegksuv |sort|uniq >> RTFM

# Add Line Decoration To Bottom Of RTFM File End Capping The Available Commands Section
#
echo " " >> RTFM
echo "*************************************************************************************" >> RTFM
echo "  " >> RTFM

# Add Section 3 Header To Bottom Of RTFM File
#
echo " " >> RTFM
echo "**************************" >> RTFM
echo " " >> RTFM
echo "  3. Command References   " >> RTFM
echo " " >> RTFM
echo "**************************" >> RTFM
echo " " >> RTFM

# A While-Loop That Queries Your System, Adds Informational Headers
# And Reference Information For Each Line In commands To Bottom Of RTFM
#
    #
    # Plans to integrate BRO may come in the future if abuse can be mitigated
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
    # Help has been throwing errors for /write18 from Tex which could be expoitable - Use At Own Risk And Expect Bugs
    #
    #  * echo " "
    #  * echo "** HELP $p                  " >> RTFM
    #  * help $p                             >> RTFM 2>&1 HELP IS BUGGY
while read p; do
    echo " " >> RTFM
    echo "*************************************************************************************" >> RTFM
    echo "  " >> RTFM
    echo "************************************************" >> RTFM 
    echo "                                            " >> RTFM
    echo "          The $p COMMAND Reference          " >> RTFM
    echo "                                            " >> RTFM
    echo "************************************************" >> RTFM
    echo " " >> RTFM
    echo "*************************************************************************************" >> RTFM
    echo "  " >> RTFM
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
    echo "                            " >> RTFM
    echo "** $p ALSO MATCHES          " >> RTFM
    apropos -e $p >> RTFM 2>&1
    echo "                            " >> RTFM
done < commands
echo " " >> RTFM
echo "*************************************************************************************" >> RTFM
echo " " >> RTFM

# Stop Sending Debug Information To Terminal Screen
#
set +x

# Play Notification Audio
#
aplay ./endbell.wav 2>/dev/null


# Clear Screen And Display RTFM TEXT CREATED Panel
#
clear
echo " "
echo "                            *****************************"
echo "                            *****************************"
echo "                             _____ _______ ______ __  __ "
echo "                            |  __ \__   __|  ____|  \/  |"
echo "                            | |__) | | |  | |__  | \  / |"
echo "                            |  _  /  | |  |  __| | |\/| |"
echo "                            | | \ \  | |  | |    | |  | |"
echo "                            |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                                   TEXTS CREATED"
echo "                                   *************"
echo " "
echo "                 Texts Available: RTFM, packages & commands"
echo " "
echo "                 Copy Them If You Need Them. "
echo "                 Current Settings May Delete Them After PDF Creation"
echo " "
echo "                 Saved RTFM edits will transfer to .ps file"
echo "                 and then into pdf file created"
echo "                                               "
echo "                                               "

# Hitting ENTER Continues 'TEXT'
#
read -n 1 -r -s -p $'                 Hit Any KEY To Create PDF - CRTL+c To Exit\n'
echo " "



# Clear And Start Sending Debug Information To Terminal Screen
#
clear
set -x

    

# Turn RTFM Text File Into RTFM.ps Postscript File Then End Debug
#
enscript -p RTFM.ps RTFM
set +x


# Clear Screen And Display PS CREATED
#
clear
echo " "
echo "                            *****************************"
echo "                            *****************************"
echo "                             _____ _______ ______ __  __ "
echo "                            |  __ \__   __|  ____|  \/  |"
echo "                            | |__) | | |  | |__  | \  / |"
echo "                            |  _  /  | |  |  __| | |\/| |"
echo "                            | | \ \  | |  | |    | |  | |"
echo "                            |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                                    PS CREATED"
echo "                                    **********"
echo " "
echo "               Your Postscript File Has Been Created"
echo "               It Will Be There If You Commented Out It's Removal"
echo "               On To PDF Creation...Wait For It."
echo " "
echo " "
sleep 6


# Clear And Start Sending Debug Information To Terminal Screen
#
clear
set -x


# Turn RTFM.ps File Into RTFM.pdf PDF File. Play Bell. End Debug.
#
ps2pdf RTFM.ps RTFM.pdf


# Optional Removal Of Intermediate Files
#
# rm packages
# rm commands
# rm RTFM
# rm RTFM.ps
#


# Play Notification Audio
#
aplay ./endbell.wav 2>/dev/null


# Stop Sending Debug Information To Terminal Screen
#
#
set +x


# Clear Screen And Display RTFM PDF CREATED Panel
#
clear
echo " "
echo "                            *****************************"
echo "                            *****************************"
echo "                             _____ _______ ______ __  __ "
echo "                            |  __ \__   __|  ____|  \/  |"
echo "                            | |__) | | |  | |__  | \  / |"
echo "                            |  _  /  | |  |  __| | |\/| |"
echo "                            | | \ \  | |  | |    | |  | |"
echo "                            |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                                    PDF CREATED"
echo "                                    ***********"
echo " "
echo "               RTFM Is Done."
echo "               A Brand New RTFM PDF For $USER. No More Excuses."
echo " "
echo " "
read -n 1 -r -s -p $'               Hit Any KEY To RTFM in xpdf - CTRL+c To Exit\n'

# Open RTFM.pdf in xpdf Viewer
#
xpdf RTFM.pdf &

# Clear And Goodbye
#
clear
echo " "
echo "                            *****************************"
echo "                            *****************************"
echo "                             _____ _______ ______ __  __ "
echo "                            |  __ \__   __|  ____|  \/  |"
echo "                            | |__) | | |  | |__  | \  / |"
echo "                            |  _  /  | |  |  __| | |\/| |"
echo "                            | | \ \  | |  | |    | |  | |"
echo "                            |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                                    That Was Fun"
echo "                                    ************"
echo " "
echo "                                   Goodbye. Go RTFM."
echo " "
echo " "
sleep 4  
exit
