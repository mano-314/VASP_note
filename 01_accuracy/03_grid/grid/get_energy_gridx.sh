#!/bin/bash 


echo "# gridx   toten"
for gridx in 12 16 20 24 28 32 ; do
	dirname=gridx_${gridx}
	toten=$(grep "free  energy" ${dirname}/OUTCAR | tail -n1 | awk '{print $5}')	
	echo $gridx  $toten 
done 





