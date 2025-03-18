#!/bin/bash
# 想法:
# 是將多行自串先轉換成單行字串，然後再去取單字去除標點符號後，再將所得的轉換成小寫，在用 for回圈取出所有元素，讓每個元素為單獨一行，寫入 temp.txt 
# 然後以uniq的方式列出重複製串的統計，然後遞減的方式排列統計數字，取其第一筆

for word in $(cat words.txt | tr "\n" " " | tr -d '[:punct:]' |  tr A-Z a-z)
do
  echo $word >> temp.txt
done

cat temp.txt | sort | uniq -c | sort -r | head -n 1
rm temp.txt