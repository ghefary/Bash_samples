#Eng.Ghifary
#!/bin/bash

if [ $# -ne 2 ]
then
echo "please type file and type "
exit 1
fi

FILE=$1
TYPE=$2
SORTED=SORTED.txt
cat $FILE |sort -n >$SORTED
LINES=`cat $FILE |wc -l`
if [ $(($LINES % 2)) -eq 0 ]
then
MED_1=`expr $LINES / 2`
MED_2=`expr $MED_1 + 1`
else
T=`expr $LINES + 1`
ODD_MED=`expr $T / 2`
fi
case $TYPE in
"min")
cat $SORTED | head -n 1
;;
"max")
cat $SORTED |tail -n 1
;;
"median")
if [ $(($LINES % 2)) -eq 0 ]
then
X=$MED_1
Y=$MED_2
FIRST=`cat $SORTED|head -n $X |tail -n +$X`
SECOND=`cat $SORTED|head -n $Y |tail -n +$Y`
MEDIAN=`expr $(($FIRST + $SECOND)) / 2`
echo "median is $MEDIAN"
else
MEDIAN=`cat $SORTED|head -n $ODD_MED |tail -n +$ODD_MED`
echo " median is $MEDIAN"
fi
;;
*)
echo "write valid type"
;;
esac
