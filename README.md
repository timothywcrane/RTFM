# RTFM
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.jpg?raw=true)
    
RTFM is a simple Bash script that creates a friggin' system manual customized just for you so you can read, search & reference it!
No more excuses.

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose.
* It does what it says and has minimal requirements.
* The debug flag has been used by default to provide a poor man's progress bar. 
* No fancy pdf formatting.
* No Unicode Support.

Minimal Dependencies:

 *nix (tested so far exclusively on Debian Buster... but AFAIK it should work on just about anything with the other dependencies installed)

 bash - (may work in other shells but my #! announces bash)

 enscript - to created a ps file, the P (postscript) in PDF

 ghostscript - To take the ps file and create a PDF via it's ps2pdf command

 You will need alsa-utils and an audio file to enable the script's end notification with aplay.

Options:
 Output:
 1 text file named commands that lists all of the commands found by the script on your system

 1 text file named RTFM that additionally contains reference information on your commands.
 
 1 ps file of RTFM used to create your final pdf
 
 1 pdf file of RTFM named RTFM.pdf
 
 By default all output is deleted except final pdf
 
 Most needs can be accomplished by rearranging the code blocks and using commenting schemes
 
