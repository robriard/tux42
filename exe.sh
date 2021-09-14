#! /bin/bash

MAIN='https://raw.githubusercontent.com/robriard/tux42/master/main.py'

TUX0="https://raw.githubusercontent.com/robriard/tux42/master/tux/linux-0.txt"
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
    curl -L "$MAIN" > ~/.tux42/main.py
    chmod +x ~/.tux42/main.py
    i=1
    while [ i < 20 ];
    do
        curl -L TUX"$i" > ~/.tux42/tux/tux-"$i".txt;
    done

}

function main() {
    __init__
    python3 ~/.tux42/main.py
}

main