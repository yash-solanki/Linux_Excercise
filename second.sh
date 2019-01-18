#Delete file which has special characters. “ -“, “—“, “*”, “$”
#!/bin/bash
for i in $( ls | grep -e "-" -e '$' -e '--' -e '*')
do 
	echo $i
	echo "hii"
	rm $i
done
