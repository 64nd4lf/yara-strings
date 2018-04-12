# yara-strings
Yara static analysis with strings and observables

Samples downloaded from https://drive.google.com/open?id=1yG4mu-xNYva86VfukJZULisA8bqtHZMY

The malware samples I used to derive my signature are,

VirusShare_02520cf60ddcc3feba15d88ceaa80970
VirusShare_4d75cc6649b3e94c32fb4be6b4f4536f
VirusShare_676f03c6116e0837e8ae13b8358aa405
VirusShare_7f9fb03c47c97c6740883dcf70f3ad32
VirusShare_8832e9b3b3189b1f55765fa8304ff14c
VirusShare_e9aa526d7d5e2029bc720d1b483bba82

A total of 6 samples have been analyzed to create my signature. It mainly is based on common strings found in those samples and common import files. I had to filter many identified strings which happen to detect benign files as well. It came down to six strings after filtering bad strings. When I ran this signature through benign files, it didn't give any false positives but when I ran it through the exe folder in the directory of viruses, I got 743 hits. I have included a file that lists all the  malicious files that were detected.
