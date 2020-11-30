# RTFM
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.jpg?raw=true)
    
RTFM is a simple Bash script that creates 2 text & pdf file sets with your system's command information to read, search & reference:

1 listing your system's commands

and

1 including various info query outputs for each command (whatis, whereis, man, help, apropos)

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose. 
* It does what it says and has minimal requirements.
* The debug flag has been used by default to provide a poor man's progress bar. 
* No pdf formatting or unicode support, allowing rtfm to be viewer agnostic (LOL).
* The headers between commands are functional, not fashionable.

There... Now you have all of the excuses I can make for my first bash script.

I thought rtfm would be a good starting point for my scripting adventures.

Known Dependencies:

*nix (tested so far exclusively on Debian Buster... but AFAIK it should work on just about anything with the other dependencies installed)

bash - (may work in other shells but my #! announces bash)

enscript - to created a ps file, the P (postscript) in PDF

ghostscript - To take the ps file and create a PDF via it's ps2pdf command

alsa-utils and an audio file for script's end notification with aplay.
