#!/bin/bash
col = $1
file = $2

(cat $2 | grep "MADISON SCHOOLS" | cut  -d , -f $1 ) | awk '{ total += $1 } END { print total/NR }' 