# RTFM
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.png?raw=true)
    
RTFM is a simple Bash script that creates a friggin' system manual customized just for you to can read, search & reference.
No more excuses.

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose.
* It does what it says and has minimal requirements.
* The debug flag has been used by default to provide a poor man's progress bar. 
* No fancy pdf formatting.
* No Unicode Support.
* By default all intermediate output is deleted except final RTFM.pdf

Minimal Dependencies:

 * nix (tested so far exclusively on Debian Buster... but AFAIK it should work on just about anything with the other dependencies installed)
 * bash - (may work in other shells but my #! announces bash)
 * enscript - to created a ps file, the P (postscript) in PDF
 * ghostscript - To take the ps file and create a PDF via it's ps2pdf command
 * alsa-utils and an audio file for "done" notification.
