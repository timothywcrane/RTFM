# RTFM
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.png?raw=true)
    
# RTFM is a simple Bash script that creates a frigging custom system manual for you to read, search & reference.

## No more excuses. Make a manual and use it!

### Please Be Aware:

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose.
* Debug output has been set up by default to provide a poor man's progress bar. 
* No default fancy pdf formatting.
* No default Unicode Support.
* By default all intermediate output is deleted at the end of the script except for the final RTFM.pdf file
* You can easily modify the code for custom ebook creation & editing needs

### Dependencies:

#### Hard
  
* nix (AFAIK it should work on just about anything)
* bash (#! /bin/bash)
* enscript to create a ps file, the P (postscript) in PDF
* ghostscript to take the ps file and create a PDF via it's ps2pdf command

#### Soft
  
* cheat https://github.com/cheat/cheat (optional references) (comment out to disable)
* tldr https://github.com/tldr-pages/tldr (optional references) (comment out to disable)
* alsa-utils (optional audio notification via aplay) (comment out to disable) 
* xpdf (to RTFM.pdf) (comment out to disable) 
 
### How To Run:
 
* Download
* Unzip
* Enter directory containing rtfm.sh using your terminal or emulator
* chmod +x rtfm.sh or make executable in file manager
* ./rtfm.sh
* Follow on-screen queues
