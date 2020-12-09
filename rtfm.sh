#!/bin/bash
# Main Version  :  Pre-Alpha-0.0.3 Codename: UglyTruth
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
                # * Description    : A simple Bash script                 * #
                # *     that creates a frigging system manual for you     * #
                # *     to read, search and reference.                    * #
                # *                                                       * #
                # *     No more excuses. Make a manual and use it.        * #
                # *                                                       * #
                # *                   Do Not Panic!                       * #
                # *                                                       * #
                # *                                                       * #
                # * Version  :  Pre-Alpha-0.0.4 Codename: UglyTruth       * #
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

# Clear Screen And Display RTFM INSTRUCTIONS                                
#                                     
clear
echo " "
echo "              *****************************"
echo "              *****************************"
echo "              ______ _______ ______ __  __ "
echo "              |  __ \__   __|  ____|  \/  |"
echo "              | |__) | | |  | |__  | \  / |"
echo "              |  _  /  | |  |  __| | |\/| |"
echo "              | | \ \  | |  | |    | |  | |"
echo "              |_|  \_\ |_|  |_|    |_|  |_|"
echo " "    
echo "                    RTFM INSTRUCTIONS"
echo "                    *****************"
echo " "
sleep 1
echo "Just Follow The Prompts To Create A Frigging Manual"
sleep 2
echo " "
echo " About: `uname -o`"
echo " On: `hostname -f`"
echo " For: $USER"
echo " "
sleep 1
echo "Read It, Search It. Reference It."
sleep 1
echo " "
echo "Be Patient On Large Or Slow Systems"
sleep 1
echo "Do Not Panic!"
sleep 1
echo "Debug Set To Show Progress..."
sleep 3
echo " "
echo "If You Do Panic Just Hit CTRL+c"
sleep 2
echo "Do You Have What It Takes To Run RTFM?"
sleep 1

# Hitting ENTER Continues 'TEXT'
#
read -n 1 -r -s -p $'Hit Any KEY To Check.\n'

# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null &

# Clear Screen And Display DEPENDENCY CHECK
#
clear
echo " "
echo "              *****************************"
echo "              *****************************"
echo "              ______ _______ ______ __  __ "
echo "              |  __ \__   __|  ____|  \/  |"
echo "              | |__) | | |  | |__  | \  / |"
echo "              |  _  /  | |  |  __| | |\/| |"
echo "              | | \ \  | |  | |    | |  | |"
echo "              |_|  \_\ |_|  |_|    |_|  |_|"
echo " "    
echo "                    DEPENDENCY CHECK"
echo "                    ****************"
echo " "

# Check For And Display DEPENDENCY CHECK Information
#
#
# Required
# 
echo " "
echo "        REQUIRED"
sleep 1

# Bash
#
echo " "
echo "Bash"
echo "Found Version: $(bash --version | head -n 1 2>/dev/null)"
echo "https://github.com/topics/bash"
echo "Whatis:$(whatis bash 2>/dev/null)"
echo "Whereis: $(whereis bash 2>/dev/null) "
echo " "
sleep 3

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
sleep 3

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
sleep 3

#if whereis ghostscript 2>/dev/null; then
#    echo "        found ghostscript version: $(ghostscript --version 2>/dev/null)"
#else
#    echo "        ghostscript not found. Please install before running RTFM."
#fi

# Suggested
#                                                                                     

echo " "
echo "           SUGGESTED"
sleep 1

# Alsa-Utils
#
echo " "
echo "Alsa-utils"
echo "aplay Audio"
echo "Found Version: $(aplay --version 2>/dev/null)"
echo "Whatis:$(whatis aplay 2>/dev/null)"
echo "Whereis: $(whereis aplay 2>/dev/null) "
echo " "
sleep 3

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
sleep 3

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
sleep 3

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
sleep 3

#if whereis bro 2>/dev/null; then
#    echo "        found bro version  $(bro --version 2>/dev/null)"
#else
#    echo "        bro not found. Consider installing for extra functionality."
#fi

# Adventurous
#                                                                                     

echo " "
echo "           ADVENTUROUS"
sleep 1

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
sleep 1

#if whereis enscript2dropbox 2> /dev/null; then
#    echo "        found $(enscript2dropbox --version 2>/dev/null)"
#else
#    echo "        enscript2dropbox not found. No Worries ;)"
#fi

echo "           Verify You Have What It Takes Above Then"

# Hitting ENTER Continues 'TEXT'
#
read -n 1 -r -s -p $'           Hit Any KEY To Continue - CTRL+c To Exit\n'

# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null &

# Clear Screen And Display TEXTS CREATION                                    
#
clear
echo " "
echo "              *****************************"
echo "              *****************************"
echo "              ______ _______ ______ __  __ "
echo "              |  __ \__   __|  ____|  \/  |"
echo "              | |__) | | |  | |__  | \  / |"
echo "              |  _  /  | |  |  __| | |\/| |"
echo "              | | \ \  | |  | |    | |  | |"
echo "              |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                    TEXTS CREATION"
echo "                    **************"
echo " "
sleep 1
echo " "    
echo "If `hostname -f` Seems Ready To Go"
echo "The Next Step Is To Create Text Documents For:"
sleep 1
echo " "
echo "1. A List Of User Environment Variables"
sleep 1
echo "2. A List Of Packages Installed"
sleep 1
echo "3. A List Of Available Commands"
sleep 1
echo "4. A Text Manual That Combines The Above With References"
sleep 3

# Hitting ENTER Continues 'TEXT'
#
echo " "
read -n 1 -r -s -p $'Hit Any KEY To Begin - CTRL+c To Exit\n'

# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null &

# TODO - Add A Looping Death Metal Soundtrack Via aplay Concurrent With The Debug Stream
#

clear

#
# Start Sending Debug Information To Terminal Screen
#    
set -x

# Create RTFM file And Wait 1 Second Before Creating The Text Files
#
touch rtfm.txt
sleep 1

# Populate RTFM Text File With System Manual Information
#
#
# Add Header Of Summary Section To Bottom Of RTFM File
#
echo " " >> rtfm.txt
echo "*********************************************************" >> rtfm.txt
echo "              ______ _______ ______ __  __ " >> rtfm.txt
echo "              |  __ \__   __|  ____|  \/  |" >> rtfm.txt
echo "              | |__) | | |  | |__  | \  / |" >> rtfm.txt
echo "              |  _  /  | |  |  __| | |\/| |" >> rtfm.txt
echo "              | | \ \  | |  | |    | |  | |" >> rtfm.txt
echo "              |_|  \_\ |_|  |_|    |_|  |_|" >> rtfm.txt
echo " " >> rtfm.txt
echo "*********************************************************" >> rtfm.txt
echo " " >> rtfm.txt

#  Print The Generic OS Type "Manual for" The Logged In User "on" Fully Qualified System Name
#
echo "`uname -o` Manual for $USER on `hostname -f`:" >> rtfm.txt
echo " " >> rtfm.txt

# Get hostnamectl Information And Add To Bottom Of RTFM File
#
hostnamectl >> rtfm.txt 2>&1

# Get Number Of Installed Packages And Add To Bottom Of RTFM File
#
echo " " >> rtfm.txt
echo "`apt list --installed | wc -l` packages currently installed" >> rtfm.txt 2>/dev/null
echo " " >> rtfm.txt
echo "`env | wc -l` user environments currently set" >> rtfm.txt 2>/dev/null
echo " " >> rtfm.txt
echo "`compgen -bcegksuv | sort | uniq |wc -l` commands currently available" >> rtfm.txt 2>/dev/null
echo " " >> rtfm.txt
echo "`hostname -f` Storage Capacity" >> rtfm.txt 2>/dev/null
echo " " >> rtfm.txt
echo "`df -h`" >> rtfm.txt 2>/dev/null
echo " " >> rtfm.txt 

# Add Line Decoration To Bottom Of RTFM End Capping The Summary Section
#
echo " " >> rtfm.txt
echo "*********************************************************" >> rtfm.txt
echo " " >> rtfm.txt

# Add TOC Header To Bottom Of RTFM File
#
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo "         CONTENTS         " >> rtfm.txt
echo "           ****" >> rtfm.txt
echo " " >> rtfm.txt
echo "  1. User Environmental Varibles" >> rtfm.txt
echo "  2. Installed Packages" >> rtfm.txt
echo "  3. Available Commands" >> rtfm.txt
echo "  4. Command References" >> rtfm.txt
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt

# Add Line Decoration To Bottom Of RTFM End Capping The TOC Section
#
echo " " >> rtfm.txt
echo "*********************************************************" >> rtfm.txt
echo " " >> rtfm.txt

# Add Section 1 Header To Bottom Of RTFM File
#
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt
echo " 1. User Environmental Varibles" >> rtfm.txt
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt

# Create packages file
#
touch environmentvars.txt

# Get And Insert Environment Variables Into env.txt And Bottom Of rtfm.txt File
#
echo "`env`" >> environmentvars.txt
echo "`env`" >> rtfm.txt

# Add Line Decoration To Bottom Of rtfm.txt End Capping The User Variables Section
#
echo " " >> rtfm.txt
echo "****************************************************" >> rtfm.txt

# Add Section 2 Header To Bottom Of RTFM File
#
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt
echo "   2. Installed Packages" >> rtfm.txt
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt

# Create packages..txt file
#
touch packages.txt

# Get And Insert Installed Packages Into packages..txt And Bottom Of RTFM File
#
apt list --installed > packages.txt
apt list --installed | cut -d / -f 1 packages.txt >> rtfm.txt

# Add Line Decoration To Bottom Of rtfm.txt End Capping The Installed Packages Section
#
echo " " >> rtfm.txt
echo "****************************************************" >> rtfm.txt
echo " " >> rtfm.txt

# Add Section 3 Header To Bottom Of RTFM File
#
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt
echo "   3. Available Commands" >> rtfm.txt
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt

# Create commands File. Get Available Command List. Add To commands File And To Bottom Of RTFM File.
#
#
# Create commands file
#
touch commands.txt

# Get And Add Available Commands To commands File
#
compgen -bcegksuv |sort|uniq > commands.txt

# Get And Add Available Commands To Bottom Of RTFM File
#
compgen -bcegksuv |sort|uniq >> rtfm.txt

# Add Line Decoration To Bottom Of RTFM File End Capping The Available Commands Section
#
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt

# Add Section 4 Header To Bottom Of RTFM File
#
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt
echo "   4. Command References" >> rtfm.txt
echo " " >> rtfm.txt
echo "**************************" >> rtfm.txt
echo " " >> rtfm.txt
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
    #  * echo "*** BRO-PAGES FOR $p      " >> rtfm.txt
    #  * bro lookup $p >> rtfm.txt 2>/dev/null
    #  * sleep 30
    #  * echo "                         " >> rtfm.txt
    #
    # Send errors to nullwhere and give ample delay 
    # Rule Of Thumb: The more thankful you are to bro, the longer you set the sleep delay.
    # Could a group caching mechanism provide a solution to API abuse?
    #
    #
    # Plans to integrate howdoi may come in the future if SO abuse can be mitigated
    #
    #  * echo "*** howdoi $prevariable $p $postvariable" >> rtfm.txt
    #  * howdoi $prevariable $p $postvariable >> rtfm.txt 2>&1
    #  * echo " " >> rtfm.txt
    #
    # Help has been throwing errors for /write18 from Tex which could be expoitable - Use At Own Risk And Expect Bugs
    #
    #  * echo " "
    #  * echo "** HELP $p                  " >> rtfm.txt
    #  * help $p                             >> rtfm.txt 2>&1 HELP IS BUGGY
while read p; do
    echo " " >> rtfm.txt
    echo "**************************" >> rtfm.txt
    echo " " >> rtfm.txt
    echo "**************************" >> rtfm.txt 
    echo " " >> rtfm.txt
    echo "The $p COMMAND Reference" >> rtfm.txt
    echo " " >> rtfm.txt
    echo "**************************" >> rtfm.txt
    echo " " >> rtfm.txt
    echo "**************************" >> rtfm.txt
    echo " " >> rtfm.txt
    whatis $p >> rtfm.txt 2>&1
    echo " " >> rtfm.txt
    echo "*** WHEREIS $p ?" >> rtfm.txt 
    whereis $p >> rtfm.txt 2>&1
    echo " " >> rtfm.txt
    echo "*** MAN PAGE FOR $p" >> rtfm.txt
    man $p >> rtfm.txt 2>&1
    echo " " >> rtfm.txt
    echo "*** TLDR FOR $p" >> rtfm.txt
    tldr $p >> rtfm.txt 2>&1
    echo " " >> rtfm.txt
    echo "*** CHEAT $p" >> rtfm.txt
    cheat $p >> rtfm.txt 2>&1
    echo " " >> rtfm.txt
    echo "*** $p ALSO MATCHES" >> rtfm.txt
    apropos -e $p >> rtfm.txt 2>&1
    echo " " >> rtfm.txt
done < commands.txt

echo " " >> rtfm.txt
echo "****************************************************" >> rtfm.txt
echo " " >> rtfm.txt

# Stop Sending Debug Information To Terminal Screen
#
set +x

# Play Notification Audio
#
aplay ./endbell.wav 2>/dev/null

# Clear Screen And Display TEXTS CREATED
#
clear
echo " "
echo "              *****************************"
echo "              *****************************"
echo "              ______ _______ ______ __  __ "
echo "              |  __ \__   __|  ____|  \/  |"
echo "              | |__) | | |  | |__  | \  / |"
echo "              |  _  /  | |  |  __| | |\/| |"
echo "              | | \ \  | |  | |    | |  | |"
echo "              |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                     TEXTS CREATED"
echo "                     *************"
echo " "
echo "Texts Available: rtfm, environmentvars, packages & commands"
echo " "
echo "Copy Or Edit Them Now."
echo "Current Settings May Delete Them After PDF Creation"
echo " "
echo "Saved rtfm.txt edits will transfer to .ps file"
echo "and then into pdf file created"
echo " "

# Hitting ENTER Continues 'TEXT'
#
read -n 1 -r -s -p $'Hit Any KEY To Create PS - CRTL+c To Exit\n'

# Play Notification Audio
#
aplay ./endbell.wav 2>/dev/null

# Clear And Start Sending Debug Information To Terminal Screen
#
clear
set -x

# Turn RTFM Text File Into RTFM.ps Postscript File Then End Debug
#
enscript -p rtfm.ps rtfm.txt
set +x


# Clear Screen And Display PS CREATED
#
clear
echo " "
echo "              *****************************"
echo "              *****************************"
echo "              ______ _______ ______ __  __ "
echo "              |  __ \__   __|  ____|  \/  |"
echo "              | |__) | | |  | |__  | \  / |"
echo "              |  _  /  | |  |  __| | |\/| |"
echo "              | | \ \  | |  | |    | |  | |"
echo "              |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                      PS CREATED"
echo "                      **********"
echo " "
echo "Your Postscript File Has Been Created"
echo "Current Settings May Delete Them After PDF Creation"
echo " "
read -n 1 -r -s -p $'Hit Any KEY To Create PDF - CTRL+c To Exit\n'

# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null

# Clear And Start Sending Debug Information To Terminal Screen
#
clear
set -x

# Turn RTFM.ps File Into RTFM.pdf PDF File. Play Bell. End Debug.
#
ps2pdf rtfm.ps rtfm.pdf

# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null &

# Optional Removal Of Created Files
#
#rm environmentvars.txt
#rm packages.txt
#rm commands.txt
#rm rtfm.txt
#rm rtfm.ps
#rm rtfm.pdf
#

# Stop Sending Debug Information To Terminal Screen
#
#
set +x

# Clear Screen And Display PDF CREATED
#
clear
echo " "
echo "              *****************************"
echo "              *****************************"
echo "              ______ _______ ______ __  __ "
echo "              |  __ \__   __|  ____|  \/  |"
echo "              | |__) | | |  | |__  | \  / |"
echo "              |  _  /  | |  |  __| | |\/| |"
echo "              | | \ \  | |  | |    | |  | |"
echo "              |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                      PDF CREATED"
echo "                      ***********"
echo " "
echo "RTFM Is Done."
echo "A Brand New RTFM PDF For $USER. No More Excuses."
echo " "
read -n 1 -r -s -p $' Hit Any KEY To RTFM in xpdf - CTRL+c To Exit\n'

# Play Notification Audio And Continuance Approval
#
aplay ./endbell.wav 2>/dev/null &

# Open rtfm.pdf in xpdf Viewer
#
xpdf rtfm.pdf &

# Clear Screen And Display THAT WAS FUN
#
clear
echo " "
echo "              *****************************"
echo "              *****************************"
echo "              ______ _______ ______ __  __ "
echo "              |  __ \__   __|  ____|  \/  |"
echo "              | |__) | | |  | |__  | \  / |"
echo "              |  _  /  | |  |  __| | |\/| |"
echo "              | | \ \  | |  | |    | |  | |"
echo "              |_|  \_\ |_|  |_|    |_|  |_|"
echo " "
echo "                      THAT WAS FUN"
echo "                      ************"
echo " "
echo "                     Goodbye. Go RTFM."
echo " "
echo " "
sleep 4  
exit
