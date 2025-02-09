#!/bin/bash 


for gridx in 12 16 20 24 28 32 ; do 
	dirname=gridx_${gridx}
	if [ ! -d $dirname ] ; then mkdir $dirname ; fi 
	
	cd $dirname 
	echo " entered $dirname "

	cp ../../init/INCAR .
	cp ../../init/POSCAR .
	cp ../../init/POTCAR .
	cp ../../init/KPOINTS .
	
	cp ../../init/run_vasp.sh .
	
	gridz=$( echo " $gridx * 3 " | bc -l )
	echo " ---> grid x, y, z : $gridx, $gridx, $gridz "

	sed -i "s/replacegridhere_x/${gridx}/g" INCAR
	sed -i "s/replacegridhere_y/${gridx}/g" INCAR
	sed -i "s/replacegridhere_z/${gridz}/g" INCAR

	sbatch run_vasp.sh 

	cd ../
done 





