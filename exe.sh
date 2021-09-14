#! /bin/bash

MAIN='https://raw.githubusercontent.com/robriard/tux42/master/main.py'

TUX1="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-1.txt"
TUX2="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-2.txt"
TUX3="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-3.txt"
TUX4="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-4.txt"
TUX5="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-5.txt"
TUX6="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-6.txt"
TUX7="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-7.txt"
TUX8="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-8.txt"
TUX9="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-9.txt"
TUX10="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-10.txt"
TUX11="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-11.txt"
TUX12="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-12.txt"
TUX13="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-13.txt"
TUX14="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-14.txt"
TUX15="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-15.txt"
TUX16="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-16.txt"
TUX17="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-17.txt"
TUX18="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-19.txt"
TUX19="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-19.txt"

function __init__() {
    mkdir -p ~/.tux42/tux
    curl -sL "$MAIN" > ~/.tux42/main.py
    chmod +x ~/.tux42/main.py
    curl -sL "$TUX1" > ~/.tux42/tux/linux-1.txt
    curl -sL "$TUX2" > ~/.tux42/tux/linux-2.txt
    curl -sL "$TUX3" > ~/.tux42/tux/linux-3.txt
    curl -sL "$TUX4" > ~/.tux42/tux/linux-4.txt
    curl -sL "$TUX5" > ~/.tux42/tux/linux-5.txt
    curl -sL "$TUX6" > ~/.tux42/tux/linux-6.txt
    curl -sL "$TUX7" > ~/.tux42/tux/linux-7.txt
    curl -sL "$TUX8" > ~/.tux42/tux/linux-8.txt
    curl -sL "$TUX9" > ~/.tux42/tux/linux-9.txt
    curl -sL "$TUX10" > ~/.tux42/tux/linux-10.txt
    curl -sL "$TUX11" > ~/.tux42/tux/linux-11.txt
    curl -sL "$TUX12" > ~/.tux42/tux/linux-12.txt
    curl -sL "$TUX13" > ~/.tux42/tux/linux-13.txt
    curl -sL "$TUX14" > ~/.tux42/tux/linux-14.txt
    curl -sL "$TUX15" > ~/.tux42/tux/linux-15.txt
    curl -sL "$TUX16" > ~/.tux42/tux/linux-16.txt
    curl -sL "$TUX17" > ~/.tux42/tux/linux-17.txt
    curl -sL "$TUX18" > ~/.tux42/tux/linux-18.txt
    curl -sL "$TUX19" > ~/.tux42/tux/linux-19.txt
    chmod +r ~/.tux42/tux/*.txt
}

function main() {
    __init__
    echo "START"
    python3 ~/.tux42/main.py
}

main
