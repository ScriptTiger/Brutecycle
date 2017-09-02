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

If you would like to show your support for ScriptTiger, check out the Patreon page to find out how:  
https://www.patreon.com/ScriptTiger
