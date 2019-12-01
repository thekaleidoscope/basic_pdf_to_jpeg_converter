#!/bin/sh


while getopts "d:f:" opt; do
  case $opt in
    d) dir=$OPTARG      ;;
    f) file_prefix=$OPTARG   ;;
    *) echo 'error' >&2
       exit 1
  esac
done

echo "$dir"
echo "$file_prefix"

# If -d is *required*
if [ ! -d "$dir" ]; then
    echo 'Option -d missing or designates non-directory' >&2
    exit 1
fi

# If -d is *required*
if [ -z "$file_prefix" ]; then
    echo 'Option -f missing or designates invald file prefix' >&2
    exit 1
fi



for filename in $(echo "$dir$file_prefix*.pdf")
do
    IFS='.' read -ra ADDR <<< "$filename"
    len=`expr ${#ADDR[@]} - 2` 
    sips -s format jpeg "$filename" --out "${ADDR[$len]}.jpeg"
done