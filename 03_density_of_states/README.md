In this section, we will see how to calculate density of states and band structures. For density of states (DOS) calculation, the equation below is important. 

$$\displaystyle D(\varepsilon) = \int _ {BZ} \frac{d^3\mathbf{k}}{(2\pi)^3}\delta (\varepsilon - \varepsilon (\mathbf{k}_i))$$

The calculation can be separated in 2 parts:

1. Self-consistent field (SCF) calculation
2. Non-self-consistent field (NSCF) calculation


We first optimized the structure and obtain the charge density ([CHGCAR](https://www.vasp.at/wiki/index.php/CHGCAR)) from the SCF calculation with converged condition. 
In the density of states calculation, we need dense k-space sampling to gaurantee the convergence of the integration. 
We perform the NSCF calculation starting from the previous charge density with denser expansion in k-space. The information of density of states will be written in [DOSCAR](https://www.vasp.at/wiki/index.php/DOSCAR) file. 

The projection of plane wave on spherical harmonics is also possible to see the local properties such as on-site atomic charges, local magnetic moment, and the projected DOS (pDOS). This can be done using tag [LORBIT](https://www.vasp.at/wiki/index.php/LORBIT).

For the post-process of the DOSCAR file, one can write the script to extract and plot, or use the external tool such as [VASPKIT #dos](https://vaspkit.com/tutorials.html#density-of-states). 

For band structures, we perform NSCF calculation on particular k-path of interest. To generate k-path one can see the tutorial in [VASPKIT #band](https://vaspkit.com/tutorials.html#band-structure). The information of eigen states (energy level, band structures) are contained in [EIGENVAL](https://www.vasp.at/wiki/index.php/EIGENVAL) and [PROCAR](https://www.vasp.at/wiki/index.php/PROCAR). One can write the script or use external tool such as [VASPKIT #band](https://vaspkit.com/tutorials.html#band-structure) or [py4vasp](https://www.vasp.at/py4vasp/latest/) to extract the information from output files.