1. Go into `convergence_kpt` 
<br><br>

2. Execute the script `create_kpt.sh` 
```
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
```
This will iterate over different numbers of k-points. One should replace `run_vasp.sh` to the appropriate jobscript for his/herown system. 
<br><br>

3. Get total energy using `getenergy_kpt.sh`
```
#!/bin/bash
echo "# kpt   toten"
for kpt in 1 2 3 4 5 6 7 8 9 ; do 
	dirname=kpt_${kpt}
	toten=$(grep "free  energy" ${dirname}/OUTCAR | tail -n1 | awk '{print $5}')	
	echo $kpt  $toten 
done 
```