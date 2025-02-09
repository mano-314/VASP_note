import numpy as np 
import matplotlib.pyplot as plt 
import sys 

filename=sys.argv[1]
data=np.loadtxt(filename)
x=data[:,0]
y=data[:,1]

plt.figure(figsize=(4,4))
plt.plot(x,y,marker="o")
plt.ylabel("Total energy [eV]",fontsize=12)
plt.xlabel("number of k-points",fontsize=12)
plt.tight_layout()
plt.savefig("fig_kpt.png",dpi=300)
plt.show()

