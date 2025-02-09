In this section, we will see how to calculate density of states and band structures. 
The calculation can be separated in 2 parts: 
1. Self-consistent field (SCF) calculation
2. Non-self-consistent field (NSCF) calculation
We first optimized the structure and obtain the charge density from the SCF calculation using the converged condition. 
For the density of states caclulation, we need dense k-space sampling the gaurantee the convergence of the integration. 
We conducte the NSCF calculation starting from the previous charge density with denser expnsion in k-space. 
For band structures, we perform NSCF calculation on particular k-path of interest.