#!/bin/bash

ip=$1

IFS='.' read -r a b c d <<< "$ip"

to_binary() {
  number=$1
  result=""

  for ((i = 7; i >= 0; i--))
  do
    bit=$(( (number >> i) & 1 ))
    result="${result}${bit}"
  done

  echo "$result"
}

echo "$(to_binary $a).$(to_binary $b).$(to_binary $c).$(to_binary $d)"
