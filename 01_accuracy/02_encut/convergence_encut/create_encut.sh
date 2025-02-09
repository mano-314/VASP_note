#!/bin/bash 


kpt=9
for encut in 150 200 250 300 350 400 450 500 550 ; do 
	dirname=encut_${encut}
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





