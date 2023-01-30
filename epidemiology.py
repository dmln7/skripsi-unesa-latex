import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt

#SIS Model
t = np.linspace(0,50)
i0 = 0.4
beta = 0.5

def model(i,t,beta,gamma):
  didt = (beta-gamma-beta*i)*i
  return didt

gamma = 0.05
y1 = odeint(model,i0,t,args=(beta,gamma))
gamma = 0.6
y2 = odeint(model,i0,t,args=(beta,gamma))

fig=plt.figure()
plt.plot(t,y1,'r',label='$beta > gamma$')
plt.plot(t,y2,'g',label='$beta < gamma$')
plt.xlim([0,50])
plt.xlabel('Time')
plt.ylabel('Infected people')
plt.grid(b=True, which='both',c='k',lw=1,ls=':')
legend = plt.legend()
legend.get_frame().set_alpha(0.5)
