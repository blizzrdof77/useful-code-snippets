#!/bin/bash
#
# The Bash shell script executes a command with a time-out.
# Upon time-out expiration SIGTERM (15) is sent to the process. If the signal
# is blocked, then the subsequent SIGKILL (9) terminates it.
-i /Cygwin-Terminal.ico /usr/bin/bash.exe -c '/bin/xhere /bin/bash'