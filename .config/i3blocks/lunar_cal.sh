#!/bin/sh

month_names=(睦月 如月 弥生 卯月 皐月 水無月 文月 葉月 長月 神無月 霜月 師走)
month_num=`date '+%m'`
month=${month_names[`expr $month_num - 1`]}
echo "$month `date '+%d日 %H%M'`"
