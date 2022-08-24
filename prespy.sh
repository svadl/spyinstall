#! /bin/sh

#chmod +x spyinstall.sh
#temp=$(realpath "$0") && dirname "$temp"
#mv spyinstall.sh /bin   
#export PATH=$PATH:"${temp}"

path=$(realpath "${BASH_SOURCE:-$0}")
echo "The absolute path is" $path

echo -----------------------------------"

DIR_PATH=$(dirname $path)
echo "The dirDIR_PATH="dirname $path"
DIR_PATH="dirname $path"


printf "%s\n" "$PATH"
