#Eng.Ghifary
#!/bin/bash 
size_B=$2
DIR=$1
cd $DIR 
du *  | while read line
do
VAR1=`echo $line | cut -d ' ' -f 1`
VAR2=`echo $line | cut -d ' ' -f 2`
if [ $VAR1 -gt $size_B ]
then
rm -f $VAR2
fi
done 
