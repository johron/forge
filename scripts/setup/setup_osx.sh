#!/bin/sh
if [[ $(command -v brew) == "" ]]; then
    echo "-- nova: installing hombrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "-- nova: found homebrew"
fi
if [[ $(command -v cmake) == "" ]]; then
    echo "-- nova: installing cmake"
    /usr/local/bin/brew install cmake
else
    echo "-- nova: found cmake"
fi
if [[ $(command -v moc) == "" ]]; then
    echo "-- nova: installing qt"
    /usr/local/bin/brew install qt
else
    echo "-- nova: found qt"
fi
if [[ $(command -v python3) == "" ]]; then
    echo "--nova: installing python 3"
    /usr/local/bin/brew install python
else
    echo "-- nova: found python 3"
fi