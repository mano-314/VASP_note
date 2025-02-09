#!/bin/bash 


echo "# kpt   toten"
for kpt in 1 2 3 4 5 6 7 8 9 ; do 
	dirname=kpt_${kpt}
	toten=$(grep "free  energy" ${dirname}/OUTCAR | tail -n1 | awk '{print $5}')	
	echo $kpt  $toten 
done 





