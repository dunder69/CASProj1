# How to Run

Import function into Matlab. The following input parameters seem to get us what we want for figures1 a,b,c.

Seemingly fixed point: the last 7 values reamain the same at 0.2086
[xpoints,ypoints] = dymap2d(.2,.25,.05,.05,35)


Seemingly 2 periodic with fixed points at 1.0076 -0.3076: 
[xpoints,ypoints] = dymap2d(.8,.3,.1,.1,50)

Might be chaotic near the end:
[xpoints,ypoints] = dymap2d(1.425,.3,.29999999999999,.3,6000)

The lyapunov2d.m function belongs to Matthew Fricke and
was taken from http://cs.unm.edu/~mfricke/CS523_2017spring/