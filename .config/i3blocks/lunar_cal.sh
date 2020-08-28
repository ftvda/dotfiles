#!/bin/sh

month_names=(睦月 如月 弥生 卯月 皐月 水無月 文月 葉月 長月 神無月 霜月 師走)
solar_cal=`date "+%Y,%-m,%d"`
lunar_cal=`grep ^$solar_cal lunar/calendar_j.csv | cut -d, -f10-`

kanji_nums=(零 壱 弐 参 肆 伍 陸 漆 捌 玖)

year=`cut -d, -f1 <<<$lunar_cal`
reiwa=$((year-2018))
for i in `seq 0 $((${#reiwa}-1))`; do reiwa_kanji=$reiwa_kanji${kanji_nums[${reiwa:$i:1}]}; done
reiwa=$reiwa_kanji
leap=`cut -d, -f2 <<<$lunar_cal`
month=`cut -d, -f3 <<<$lunar_cal`
date=`cut -d, -f4 <<<$lunar_cal`
for i in `seq 0 $((${#date}-1))`; do date_kanji=$date_kanji${kanji_nums[${date:$i:1}]}; done
date=$date_kanji
six_labels=`cut -d, -f5 <<<$lunar_cal`
zodiac=`cut -d, -f6 <<<$lunar_cal`
sekki24=`cut -d, -f7 <<<$lunar_cal`
zassetsu1=`cut -d, -f8 <<<$lunar_cal`
zassetsu2=`cut -d, -f9 <<<$lunar_cal`
festivals=`cut -d, -f10 <<<$lunar_cal`

echo "令和$reiwa年$leap${month_names[$month - 1]}$date日 $six_labels $zodiac$sekki24$zassetsu1$zassetsu2$festivals"
