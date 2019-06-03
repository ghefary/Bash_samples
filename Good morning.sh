#Eng.Ghifary
#!/bin/sh

TIME=$(date +%H)
if [ $TIME -ge 6 ] && [ $TIME -lt 12 ]
then
echo "good morning sir"
elif [ $TIME -ge 12 ] && [ $TIME -lt 18 ]
then
echo "good after noon"
else
echo "good evening"
fi

