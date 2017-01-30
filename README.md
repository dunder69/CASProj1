# How to Run

Import function into Matlab. The following input parameters seem to get us what we want for figures1 a,b,c.

Seemingly fixed point [xpoints,ypoints] = dymap2d(.2,.3,.05,.05,20)

Seemingly 4 periodic: [xpoints,ypoints] = dymap2d(1.1,.3,.29999999999999,.3,50)

Might be chaotic neat the end:
[xpoints,ypoints] = dymap2d(1.4,.3,.29999999999999,.3,500)