
#!/bin/bash

function backup_file(){

	echo "File u feed to me ===> $1"
	if [ -f $1 ]
	then 
		BACK="/tmp/{1}.$(date +%F).$$" 

		echo "BACKING UP ${1} to ${BACK}"
		cp $1 ${BACK}
	fi
}
 
backup_file /etc/hosts 

#now chek if it's done with exit code of the previuos command
if [ $? -eq 0 ]
then
	echo "BACKUP Succeeded"
fi

