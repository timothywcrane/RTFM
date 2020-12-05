# RTFM - Read The Frigging Manual
 ![RTFM](https://github.com/timothywcrane/RTFM/blob/main/rtfm.png?raw=true)
    
## RTFM is a simple bash script that creates a frigging system manual for you.

## No more excuses. 

## Make a manual. Read, search & reference it!

### Please Be Aware:

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose.
* Debug output has been set up by default to provide a poor man's progress bar. 
* No fancy pdf formatting.
* No unicode support.
* RTFM, packages list & command list in text format
* RTFM also available in ps and pdf
* Multiple reference resources
* Super simple script - modify to your liking.

### Dependencies:

#### Hard
  
* nix (AFAIK it should work on just about anything)
* bash (#! /bin/bash)
* enscript to create a ps file, the P (postscript) in PDF
* ghostscript to take the ps file and create a PDF via it's ps2pdf command

#### Soft
  
* cheat https://github.com/cheat/cheat (optional references) (comment out to disable)
* tldr https://github.com/tldr-pages/tldr (optional references) (comment out to disable)
* bro pages https://github.com/hubsmoke/bro (optional reference) (uncomment to enable)
    * install rubyx.x-dev
    * then sudo gem install bropages
* alsa-utils (optional audio notification via aplay) (comment out to disable) 
* xpdf on a graphical desktop (to RTFM.pdf) (comment out to disable) 
 
### How To Run:
 
* Download
* Unzip
* Enter directory containing rtfm.sh using your terminal or emulator
* chmod +x rtfm.sh or make executable in file manager
* ./rtfm.sh
* Follow on-screen queues
