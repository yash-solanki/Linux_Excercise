#Display first and last 10 lines of file contains
echo -e "\nFirst:"
head test.txt
tail  test.txt
#Display line no. 3 to 8 from file contains.
echo -e "\nSecond:"
awk 'FNR>=3 && FNR<=8' test.txt
#Display 7 lines and start from second last line in reverse manner. 
echo -e "\nThird:"
tac test.txt | awk {'if(NR>1)print'} | head -7
