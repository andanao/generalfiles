# import matplotlib.pyplot as plt
# import numpy as np

# def make_image(data, outputname, size=(8.5, 11), dpi=80):
#     fig = plt.figure()
#     fig.set_size_inches(size)
#     ax = plt.Axes(fig, [0., 0., 1., 1.])
#     ax.set_axis_off()
#     fig.add_axes(ax)
#     # plt.set_cmap('hot')
#     ax.imshow(data, aspect='equal')
#     plt.savefig(outputname, dpi=dpi)

# # data = mpimg.imread(inputname)[:,:,0]

# width = 130 
# height = 210

# # data = np.arange(1,82).reshape((9,9))
# data = np.array([[0,0],[0,height],[width,0],[width,height]])

# make_image(data, 'Paper Designs\\Journal\\test.png')
# # plt.savefig("Paper Designs\\Journal\\test.png", bbox_inches=0)

from basic_units import cm, inch
import matplotlib.pyplot as plt
import numpy as np

cms = cm * np.arange(0, 10, 2)

fig, axs = plt.subplots(2, 2)

axs[0, 0].plot(cms, cms)

axs[0, 1].plot(cms, cms, xunits=cm, yunits=inch)
axs[0, 1].plot([0, 1], [0,0], xunits=cm, yunits=inch)

axs[1, 0].plot(cms, cms, xunits=inch, yunits=cm)
axs[1, 0].set_xlim(3, 6)  # scalars are interpreted in current units

axs[1, 1].plot(cms, cms, xunits=inch, yunits=inch)
axs[1, 1].set_xlim(3*cm, 6*cm)  # cm are converted to inches

# plt.show()
fig.savefig("Paper Designs\\Journal\\test3.pdf")