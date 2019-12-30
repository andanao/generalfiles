import matplotlib.pyplot as plt
import numpy as np

def make_image(data, outputname, size=(8.5, 11), dpi=80):
    fig = plt.figure()
    fig.set_size_inches(size)
    ax = plt.Axes(fig, [0., 0., 1., 1.])
    ax.set_axis_off()
    fig.add_axes(ax)
    # plt.set_cmap('hot')
    ax.imshow(data, aspect='equal')
    plt.savefig(outputname, dpi=dpi)

# data = mpimg.imread(inputname)[:,:,0]

width = 130 
height = 210

# data = np.arange(1,82).reshape((9,9))
data = np.array([[0,0],[0,height],[width,0],[width,height]])

make_image(data, 'Paper Designs\\Journal\\test.png')
# plt.savefig("Paper Designs\\Journal\\test.png", bbox_inches=0)