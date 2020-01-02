import matplotlib.pyplot as plt
import numpy as np

# ALL UNITS IN MM
width = 130 
height = 210

bounds = np.array([[0,0],[0,height],[width,0],[width,height]])

fig = plt.figure()
fig.set_size_inches(8.5,11, forward=True)
ax = plt.Axes(fig, [0., 0., 1., 1.])
ax.set_axis_off()
fig.add_axes(ax)
# plt.figure(figsize=(8.5,11))

# set page
plt.plot([0,width],[0,0],'k')
plt.plot([0,0],[0,height],'k')
plt.plot([0,width],[height,height],'k')
plt.plot([width,width],[0,height],'k')
plt.plot([0,width],[0,height])


plt.axis(bbox_inches=0)
# plt.show()

# plt.savefig('Paper Designs\\Journal\\test.pdf',aspect='equal',dpi = 300)

# fig.savefig("Paper Designs\\Journal\\Author.png", bbox_inches=0, aspect='equal',dpi=300)
fig.savefig("Paper Designs\\Journal\\Author.pdf", bbox_inches=0, aspect='equal',dpi=1000,papertype='letter',format='pdf')