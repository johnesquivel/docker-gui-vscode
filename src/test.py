import matplotlib.pyplot as plt
import random

# Create some random data to display
x = [random.randint(1, 100) for _ in range(100)]
y = [random.randint(1, 100) for _ in range(100)]

# Plot the random data
plt.scatter(x, y)
plt.show()
