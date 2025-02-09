# VASP_note

This note on VASP [[1](https://doi.org/10.1103/PhysRevB.47.558),[2](https://doi.org/10.1016/0927-0256(96)00008-0),[3](https://doi.org/10.1103/PhysRevB.54.11169),[4](https://doi.org/10.1103/PhysRevB.59.1758)] is a brief summary on how to use the program. <br> 
The content in this version is shown below. 

1. The accuracy 
2. The structural optimization 
3. The density of states (DOS) calculation 
4. The vibration calculation 
5. The calculation of adsorption energy 

For the manual, please check the official [VASP manual](https://www.vasp.at/wiki/index.php/The_VASP_Manual). <br>
There are many tools that might be useful in using VASP. <br><br>
For example, <br><br>
[VTST](https://theory.cm.utexas.edu/vtsttools/) 
For transition state calculation based on Nudge elastic band (NEB) and dimer method <br><br>
[VASPKIT](https://vaspkit.com/) For post-process the output files and some secondary calculations using output from VASP<br><br>
[py4vsap](https://www.vasp.at/py4vasp/latest/) The python library for read and write files for VASP and the visualization of VASP output<br><br>
[ASE](https://wiki.fysik.dtu.dk/ase/ase/calculators/vasp.html) The python library for pre- and post-process for the input/output files. This library provide the calculator which allow one to externally control VASP as the calculator making more flexible in designing calculation pipline<br><br>
[pymatgen](https://pymatgen.org/pymatgen.io.vasp.html) The python library for pre- and post-process the input/output files <br><br>
[phonopy](https://phonopy.github.io/phonopy/) The python library for vibration calculation. For solid, the phonon and thermal properties can be calculated using this library<br><br>
[LOBSTER](http://www.cohp.de/) This external tool provide a way in bond characterization, bonding and antibonding<br><br>
[Bader](https://theory.cm.utexas.edu/henkelman/research/bader/) To tool for calculating Bader charge<br><br>

