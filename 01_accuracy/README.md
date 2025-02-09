In this section, we will see how to control the accuracy of our calculations. <br>
It is easy to get a number from the calculation. However, to get an "approproate" number is not that always easy. 
For plane wave calculation, the plane wave at each k-point ($\mathbf{k}$) will follow 

$$\displaystyle \frac{\hbar}{2m_e}|\mathbf{G}+\mathbf{k}|^2 < E_{cutoff}$$

Therefore, the selection of energy cutoff will affect the number of plane waves and, hence, affect the accuracy of our calculation. 

Moreover, the integration in reciprocal space will be done by the summation over k-points 

$$\displaystyle I(\varepsilon)=\frac{1}{\Omega_{BZ}}\int_{BZ} F(\varepsilon)\delta(\varepsilon_{n\mathbf{k}}-\varepsilon)d\mathbf{k} $$

Therefore, the denser k-mesh will give the higher accuracy in our calculations. 

In this section, we will focus on both topics. 

1. The convergence test on k-point ([KPOINTS](https://www.vasp.at/wiki/index.php/KPOINTS))
2. The convergence test on energy cutoff ([ENCUT](https://www.vasp.at/wiki/index.php/ENCUT))

<br>

In most calculations in our field, the concept of charge is important in explaning the mechanism 
of phenomena of interest. In particular, if we do the calculation on Bader charge 
[[J. Chem. Phys. 134, 064111 (2011)](https://doi.org/10.1063/1.3553716)], then the selection of grid will affect 
the accuracy of the real space integration. This will be demonstrated in this section 

3. The convergence of atomic charge on grid size ([NGFX](https://www.vasp.at/wiki/index.php/NGXF))

And the accuracy of force on real-space projection method 

4. The accuracy of forces on real-space projection ([LREAL](https://www.vasp.at/wiki/index.php/LREAL))


