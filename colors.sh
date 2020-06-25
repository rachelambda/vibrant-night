# This one works everywhere I've tried (ash, ksh, mksh)
PS1='[35m${USER}[0m@[35m$(hostname)[0m:[36m${PWD}[0m
$ ' 

# This one works on some shells, but is prettier (works on ash, OpenBSD ksh)
PS1='\033[35m\u\033[0m@\033[35m\h\033[0m:\033[36m\w\033[0m\n\$ '

# If you wish to customize the tty colours then use this
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P02E2E2E"
    echo -en "\e]P1F7748D"
    echo -en "\e]P276EDA3"
    echo -en "\e]P3F7BF65"
    echo -en "\e]P44DA4F0"
    echo -en "\e]P5E88BE0"
    echo -en "\e]P61DDBC9"
    echo -en "\e]P7E9E9E9"
    echo -en "\e]P85C5C5C"
    echo -en "\e]P9FF9CAA"
    echo -en "\e]PAA4EDAC"
    echo -en "\e]PBF7E2A1"
    echo -en "\e]PCB7C8FF"
    echo -en "\e]PDEDBBE9"
    echo -en "\e]PE81F5E1"
    echo -en "\e]PFF5F5F5"
    clear #for background artifacting
fi
