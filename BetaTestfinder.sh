#!/bin/sh
declare -A apl
apl[0]="a"
apl[1]="b"
apl[2]="c"
apl[3]="d"
apl[4]="e"
apl[5]="f"
apl[6]="g"
apl[7]="h"
apl[8]="i"
apl[9]="j"
apl[10]="k"
apl[11]="l"
apl[12]="m"
apl[13]="n"
apl[14]="o"
apl[15]="p"
apl[16]="q"
apl[17]="r"
apl[18]="s"
apl[19]="t"
apl[20]="u"
apl[21]="v"
apl[22]="w"
apl[23]="x"
apl[24]="y"
apl[25]="z"


for i in "${apl[@]}"
do

 	for a in "${apl[@]}"
 	do
	fping $i$a.com  $i$a.net $i$a.org>>domain.txt
	done
	
done


for i in "${alp[@]}"
do
echo $i
echo "hi ${alp[$a]}"
  fping $i.com  $i.net $i.org>>domain.txt
done


