import matplotlib.pyplot as plt
import numpy as np

# Defining stopping limit
time = 0
delta = 1
limit = 5200

# Setting starting conditions
x_0 = 0.9
y_0 = 0.6
rho = 0.5
gamma = 0.3

# Initialize output arrays
x_output = np.array(x_0)
y_output = np.array(y_0)

# Main loop
x = x_0 # Not sure if any of this optimizes speed
y = y_0
y_old = 0
while (time < limit):
	time += 1
	y_old = y
	y = x
	x = (rho - x*x + gamma*y_old)
	x_output = np.append(x_output,x)
	#y_output = np.append(y_output,y)

# Getting only values greater than 5000
x_plot = x_output[5000:]
#y_plot = y_output[5000:]

# Plotting
plt.plot(x_plot)
#plt.plot(y_output)
plt.show()
