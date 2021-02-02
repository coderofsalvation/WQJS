#!/bin/bash
tmpfile="/tmp/myfiles"


error(){
    echo "error: $1"
    [[ -n $2 ]] && exit $2
}

validate_env(){
    which 7zr    &>/dev/null  || error "7zr not installed..please install" 1
    which bin2sh &> /dev/null || error "bin2sh not installed..please install from https://gist.github.com/coderofsalvation/fbf03834fc16fa4f13b92513631f969c" 1 
}

init(){
    validate_env
    [[ ! -n "$3" ]] && {
        echo "Usage: package <packagename> <myapp.exe> [files/dirs]"
        exit 0
    } 
}

init "$@"
package="$1"; shift
runexe="$1";  shift
[[ -f $tmpfile.7z ]] && rm $tmpfile.7z
7zr a -mx=9 -l $tmpfile.7z "$@" #| while read line; do printf "\r$line"; done; echo -e "\rcreated $tmpfile.7z                                                                  "
tar -czvf $tmpfile.tgz "$@" #| while read line; do printf "\r$line"; done; echo -e "\rcreated $tmpfile.7z                                                                  "
bin2sh $tmpfile.tgz app.sh > $package
