#!/bin/bash 


encut=450
for kpt in 1 2 3 4 5 6 7 8 9 ; do 
	dirname=kpt_${kpt}
	if [ ! -d $dirname ] ; then mkdir $dirname ; fi 
	
	cd $dirname 
	echo " entered $dirname "

	cp ../../init/INCAR .
	cp ../../init/POSCAR .
	cp ../../init/POTCAR .
	cp ../../init/KPOINTS .
	
	cp ../../init/run_vasp.sh .

	sed -i "s/replaceencuthere/${encut}/g" INCAR
	sed -i "s/replacekpt/${kpt}/g" KPOINTS

	sbatch run_vasp.sh 

	cd ../
done 





