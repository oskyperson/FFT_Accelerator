#!/bin/bash

input=$1

value=$(printf "%u" "0x$input")

upper=$(( (value >> 16) & 0xFFFF ))
lower=$(( value & 0xFFFF ))

to_signed(){
    local x=$1
    if (( x & 0x8000 )); then
        echo $((x - 0x10000))
    else
        echo $x
    fi
}

upper_signed=$(to_signed $upper)
lower_signed=$(to_signed $lower)

upper_float=$(awk "BEGIN {printf \"%.6f\", $upper_signed / 32768}")
lower_float=$(awk "BEGIN {printf \"%.6f\", $lower_signed / 32768}")

echo "Re: $upper_float"
echo "Im: $lower_float"

