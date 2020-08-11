#!/bin/sh

month_names=(睦月 如月 弥生 卯月 皐月 水無月 文月 葉月 長月 神無月 霜月 師走)
solar_cal=`date "+%Y,%-m,%d"`
lunar_cal=`grep ^$solar_cal lunar/calendar_j.csv | cut -d, -f10-`

kanji_nums=(壱 弐 参 肆 伍 陸 漆 捌 玖)

year=`cut -d, -f1 <<<$lunar_cal`
reiwa=${kanji_nums[$((year-2019))]}
leap=`cut -d, -f2 <<<$lunar_cal`
month=`cut -d, -f3 <<<$lunar_cal`
date=`cut -d, -f4 <<<$lunar_cal`
[ $date -lt 10 ] && date=${kanji_nums[$date-1]} \
    || date="${kanji_nums[${date:0:1}-1]}${kanji_nums[${date:1:1}-1]}"
six_labels=`cut -d, -f5 <<<$lunar_cal`
zodiac=`cut -d, -f6 <<<$lunar_cal`
sekki24=`cut -d, -f7 <<<$lunar_cal`
zassetsu1=`cut -d, -f8 <<<$lunar_cal`
zassetsu2=`cut -d, -f9 <<<$lunar_cal`
festivals=`cut -d, -f10 <<<$lunar_cal`

echo "令和$reiwa年$leap${month_names[$month]}$date日 $six_labels $zodiac$sekki24$zassetsu1$zassetsu2$festivals"
