#!/bin/bash 


echo "# encut   toten"
for encut in 150 200 250 300 350 400 450 500 550 ; do 
	dirname=encut_${encut}
	toten=$(grep "free  energy" ${dirname}/OUTCAR | tail -n1 | awk '{print $5}')	
	echo $encut  $toten 
done 





