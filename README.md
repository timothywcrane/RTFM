# RTFM
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.png?raw=true)
    
RTFM is a simple Bash script that creates a frigging custom system manual for you to read, search & reference.

No more excuses. Make one and use it.

Please Be Aware:

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose.
* It does what it says and has minimal requirements.
* Debug output has been set up by default to provide a poor man's progress bar. 
* No default fancy pdf formatting.
* No default Unicode Support.
* By default all intermediate output is deleted at the end of the script except for the final RTFM.pdf file
* You can easily modify the code for custom ebook creation & editing needs

Minimal Dependencies:

* nix (tested so far exclusively on Debian Buster... but AFAIK it should work on just about anything with the other dependencies installed)
* bash (may work in other shells but my #! announces bash)
* enscript to create a ps file, the P (postscript) in PDF
* ghostscript to take the ps file and create a PDF via it's ps2pdf command
* alsa-utils for end-of-script audio notification via aplay.
* opening pdf at end defaults to xpdf
 
 How To Run:
 
* Download
* Unzip
* Enter directory containing rtfm.sh using your terminal or emulator
* chmod +x rtfm.sh or make executable in file manager
* ./rtfm.sh
* Follow on-screen queues
