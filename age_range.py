import pandas as pd
import numpy as np

# Enter the range over which we want to run the first and second set of samples.
age_range = [2400, 3400]

# Number of tries (set to 100) per round
num_tries = 101

# First round
first_round = np.linspace(start=age_range[0], stop=age_range[1], num=num_tries)

age_samples = pd.read_csv("data/Age_Samples.csv")

for x in first_round:
    result_index = age_samples['Age (HMM)'].sub(x).abs().idxmin()
    one = age_samples.H[result_index]
    two = age_samples.Co[result_index]
    three = age_samples.Section[result_index]
    four = age_samples["Top(cm)"][result_index]
    five = age_samples["Bot(cm)"][result_index]
    ageOne = age_samples["Age (HMM)"][result_index]
    resultado = "{hole}, {col:.1f}, {section:.1f}, {upper:.1f}, {lower:.1f}, {AgeOne:.1f}, {AgeTwo:.1f}".format(
        hole=one, col=two, section=three, upper=four, lower=five, AgeOne=ageOne, AgeTwo=x)
    print(resultado)





