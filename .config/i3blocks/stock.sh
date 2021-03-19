#!/bin/bash
data=$(curl https://stocks.finance.yahoo.co.jp/stocks/detail/?code=$1 2>/dev/null | grep -A2 "\"stoksPrice\"" | sed 's/<[^>]*>//g' | tr '\n' ' ' | sed 's/（.*）//' | tr -d '前日比' | sed 's/\s\+/:/' )
price=${data%:*}
diff=${data#*:}
echo $price\($diff\)
