import pandas as pd
import matplotlib.pyplot as plt

jakob = pd.read_csv("../data/jakob_2020.csv")
fig, ax = plt.subplots(2)

ax[1].plot(jakob.age_ka, jakob.d18O)
ax[0].plot(jakob.age_ka, jakob.MgCa)

plt.show()
