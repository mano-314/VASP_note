import numpy as np 
import matplotlib.pyplot as plt 

filename="PDOS_N_UP.dat"
data_N_up=np.loadtxt(filename)
filename="PDOS_B_UP.dat"
data_B_up=np.loadtxt(filename)
filename="TDOS.dat"
data_Total=np.loadtxt(filename)

energy_N=data_N_up[:,0]
energy_B=data_N_up[:,0]
energy_T=data_Total[:,0]
pdos_N=data_N_up[:,-1]
pdos_B=data_B_up[:,-1]
pdos_T=data_Total[:,1]

plt.figure(figsize=(12,4))
plt.plot(energy_N,pdos_N,label="pDOS on N",c="black")
plt.plot(energy_B,pdos_B,label="pDOS on B",c="purple")
plt.plot(energy_N,pdos_N+pdos_B,label="pDOS on N+B",c="red",lw=2.0)
plt.fill_between(energy_T,pdos_T,edgecolor="none",facecolor="black",alpha=0.3,label="non-projected TDOS")
plt.xlim(-20,20)
plt.ylim(0,plt.ylim()[1])
plt.ylabel("DOS",fontsize=15)
plt.xlabel("E - E$_F$ [eV]", fontsize=15)
plt.legend(frameon=False,loc="upper left",fontsize=15,markerfirst=False)
plt.tight_layout()
plt.savefig("fig_pdos.png",dpi=300)
plt.show()