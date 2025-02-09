#!/bin/bash 



for gridx in 12 16 20 24 28 32 ; do
	echo ""
	echo "-----------------------------------> calculating charge for      $gridx "

	dirname=gridx_${gridx}
	cd $dirname 
	bader_charge
	cd ../

done 





