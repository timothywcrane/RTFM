# RTFM
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.png?raw=true)
    
RTFM is a simple Bash script that creates a friggin' system customized reference manual for you to read, search & reference.

No more excuses.

Please Be Aware:

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose.
* It does what it says and has minimal requirements.
* Debug output has been set by default to provide a poor man's progress bar. 
* No default fancy pdf formatting.
* No default Unicode Support.
* By default all intermediate output is deleted at the end of the script except for the final RTFM.pdf file
* You can easily modify the code for custom ebook creation & editing needs

Minimal Dependencies:

* nix (tested so far exclusively on Debian Buster... but AFAIK it should work on just about anything with the other dependencies installed)
* bash - (may work in other shells but my #! announces bash)
* enscript - to created a ps file, the P (postscript) in PDF
* ghostscript - To take the ps file and create a PDF via it's ps2pdf command
* alsa-utils for end-of-script audio notification via aplay.
 
 How To Run:
 
* Download Zip
* Unzip
* Navigate to the NTFM-main directory using your terminal or emulator
* chmod +x rtfm.sh
* ./rtfm.sh
* Follow on-screen queues
 
