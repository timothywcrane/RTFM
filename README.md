# RTFM
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.jpg?raw=true)
    
RTFM is a simple Bash script that collects your Linux installation's command info and creates a PDF for you to then read, search & reference.

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose. 
* It does what it says and has minimal requirements.
* The debug flag has been used by default to provide a poor man's progress bar. 
* No enscript pdf formatting flags have been used nor is there unicode support, allowing rtfm to be viewer agnostic.
* The headers between commands are "in your opinion" ugly because they are meant to be functional, not fashionable.

There, now you have all of the excuses I can make for my first bash script. At least I know where to start.

Dependencies:

*nix (tested so far exclusively on Debian Buster... but should work on any *nix w/bash AFAIK)

bash - (may work in other shells but my #! announces bash)

enscript - to created a ps file, the P (postscript) in PDF

ghostscript - To take the ps file and create a PDF via it's ps2pdf command
