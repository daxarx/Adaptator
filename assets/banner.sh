#!/bin/bash
print_center(){
    local x
    local y
    text="$*"
    x=$(( ($(tput cols) - ${#text}) / 2))
    echo -ne "\E[6n";read -sdR y; y=$(echo -ne "${y#*[}" | cut -d';' -f1)
    echo -ne "\033[${y};${x}f$*"
}

echo -ne "\\033[2J\033[3;1f"
print_center "
\033[95m|Adaptator Adaptator Adaptator Adaptator|033[0m
\033[95m|Adaptator Adaptator Adaptator Adaptator|033[0m
\033[95m|Adaptator Adaptator Adaptator Adaptator|033[0m
\033[95m|Adaptator Adaptator Adaptator Adaptator|033[0m
\033[95m|Adaptator Adaptator Adaptator Adaptator|033[0m

\033[95mAdaptator started successfully!\033[0m
\033[95mWeb url: http://localhost:1242\033[0m
"
