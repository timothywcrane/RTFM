# RTFM
A Simple Bash Script That Collects Information On Your Linux Installation's Commands And Creates A Simple PDF For You To Then Read, Search &amp; Reference..

* This script is NOT optimized in any way for performance. 
* This script is meant to be a "hammer" on purpose. 
* It does what it says and has minimal requirements.
* The debug flag has been used by default to provide a poor man's progress bar. 
* No PDF formatting flags have been used to be viewer agnostic.
* The headers between commands are "in your opinion" ugly because they are meant to functional, not fashionable.

There, now you have all of the excuses I can make for my first bash script. At least I know where to start.

Dependencies:

*nix (tested so far exclusively on Debian Buster... but should work on any *nix w/bash AFAIK)
bash - (may work in other shells but my #! announces bash)
enscript - to created a ps file, the P (postscript) in PDF
ps2pdf - To take the ps file and create a PDF
