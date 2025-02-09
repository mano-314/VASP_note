import numpy as np
import matplotlib.pyplot as plt 
import sys
filename=sys.argv[1]
col=[ int(j) for j in sys.argv[2:]]
data=np.loadtxt(filename)

x=data[:,0]
for _col in col:
    y=data[:,_col]
    plt.plot(x,y,label="column {}".format(_col))
plt.xlim(x.min(), x.max())
plt.legend()
plt.show()



