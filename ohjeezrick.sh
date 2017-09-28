#!/bin/bash
cd "$(dirname "${BASH_SOURCE[0]}")"

function download_sounds {
    mkdir -p sounds && cd sounds
    cat ../soundslink | while read link;
        do
            wget $link
        done
    echo "Downloading sounds is done."
}

SOUNDS=()
if [ -d "sounds" ]; then
    for file in `ls sounds`; 
        do 
            SOUNDS+=" $file"; 
        done
fi

if [ ${#SOUNDS[@]} -eq 0 ]; then
    echo "Oh Jez Rick ! You don't have sounds folder."
    echo "Morty, I need to wait till I download them for you."
    download_sounds
fi

which aplay > /dev/null 2>&1 || {
    echo "Take your attitude out, use Fedora or Ubuntu.";
    exit 1;
    } 

command="$1" ; shift
case "$command" in
  list)
    cd sounds && \
    aplay 'Show_me_what_you_got!.wav' &> /dev/null  &
    echo -e "Sounds \n--------------" && \
    cd sounds && ls -l | awk '{print $NF}' && \
    echo -e "----------------\nTotal= `ls -l | wc -l` files"
    ;;
  search)
    cd sounds
    soundfile=$(ls | grep -i $@ | head -n1)
    if [ ! -z "$soundfile" ]; then
        aplay "$soundfile" &> /dev/null
    else
        aplay "hey_ya_you_doing_ok_.wav" &> /dev/null
    fi
    ;;
  play)
    cd sounds
    aplay "$@" &> /dev/null
    ;;
  fortuneRicky|*)
    cd sounds
    randomfile=$(ls |sort -R | head -n1)
    aplay "$randomfile" &> /dev/null
    ;;
esac
