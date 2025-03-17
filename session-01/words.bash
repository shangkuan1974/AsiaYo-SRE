#!/bin/bash
for word in $(cat words.txt | tr -s '[:blank:]' | tr -d "\n" | tr -d '[:punct:]' |  tr A-Z a-z)
do
  printf '%s\n' "${word//[[:space:]]}" >> temp.txt
done

cat temp.txt | sort | uniq -c | sort -r | head -n 1
