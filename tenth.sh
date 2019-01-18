#Ex. 10 Task to find all files from folder where file contains string 'abc'
something(){

	for i in $(ls) ; do 
		if [ -f $i ] 
		then 
			if [[ $i == *.txt ]]
			then
				if [[ $(cat $i | grep -w "abc") ]]; then
					echo "File:$i"
				fi
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
