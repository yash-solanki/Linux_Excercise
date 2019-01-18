#find . -name "*.txt" | xargs grep -i "Linux" | wc -l


#Write a shell script to get the total count of the word “Linux” in all the “.txt” files and also across files present in subdirectories.

str="Linux"
cnt=0
temp=0 
something(){

	for i in $(ls) ; do 
		if [ -f $i ] 
		then 
			if [[ $i == *.txt ]]
			then
				temp=0
				temp=$(cat $i | grep -c "Linux")
				cnt=$(( cnt + temp ))
			fi						
		else 
			if [ -d "$i" ]
			then
				cd $i
				something
				cd ..
			fi
		fi
	done
	
}
something
echo "Total Words Linux Founded :$cnt"
