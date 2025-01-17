[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://docs.google.com/forms/d/e/1FAIpQLSfBEe5B_zo69OBk19l3hzvBmz3cOV6ol1ufjh0ER1q3-xd2Rg/viewform)

# Brutecycle
Cycles through any given character set in any given order and outputs to standard output or to a file. For larger data sets, like 128-bit MD5 hashes, 160-bit SHA-1, 256-bit SHA-256, etc., it is recommended to only do a couple character combinations at a time, unless you plan on having the script run for days on end uninterrupted.

Can run interactively or scripted and with or without progress updates (silent or not).

To output all possible hexidecimal byte combinations with no progress to the console:  
Brutecycle.cmd 2 "0 1 2 3 4 5 6 7 8 9 a b c d e f" con 0

To output all possible octal byte combinations with no progress to the console:  
Brutecycle.cmd 3 "0 1 2 3 4 5 6 7" con 0

To output all possible binary byte combinations with no progress to the console:  
Brutecycle.cmd 8 "0 1" con 0

You can download this repo from the below link to get started:  
https://github.com/ScriptTiger/Brutecycle/archive/master.zip

# More About ScriptTiger

For more ScriptTiger scripts and goodies, check out ScriptTiger's GitHub Pages website:  
https://scripttiger.github.io/
