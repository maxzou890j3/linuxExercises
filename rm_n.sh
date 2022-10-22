#!/bin/bash
path=$1
bitsize=$2
find $1 -type f -size +$2c -delete
echo "usage: ./$0 <$1> <$2>" 1>&2