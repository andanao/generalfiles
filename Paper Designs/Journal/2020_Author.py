import matplotlib.pyplot as plt
import numpy as np


# ALL UNITS IN MM
width = 130 
height = 210

bounds = np.array([[0,0],[0,height],[width,0],[width,height]])

rpage = plt.figure()
# plt.figure(figsize=(8.5,11))

# set page
plt.plot([0,width],[0,0],'k')
plt.plot([0,0],[0,height],'k')
plt.plot([0,width],[height,height],'k')
plt.plot([width,width],[0,height],'k')
plt.plot([5,5],[100,100])


plt.axis('off')
plt.show()

# rpage.savefig("test.pdf",bbox_inches='tight')