1. Go into `./convergence_encut` 
<br><br>

2. Execute the script `bash create_encut.sh` 
```
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
```
This will iterate over different encut.<br> 
_One should replace `run_vasp.sh` to the appropriate jobscript for his/herown system._
<br><br>

3. Get total energy using `bash getenergy_encut.sh`
```
#!/bin/bash
echo "# encut   toten"
for encut in 150 200 250 300 350 400 450 500 550 ; do 
	dirname=encut_${encut}
	toten=$(grep "free  energy" ${dirname}/OUTCAR | tail -n1 | awk '{print $5}')	
	echo $encut  $toten 
done 
```
<br><br>
4. check the result <br>
(https://github.com/mano-314/VASP_note/blob/main/01_accuracy/02_encut/results/fig_encut.png)