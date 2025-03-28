#rom django.test import TestCase

# Create your tests here.
# print(ord('A'))
# print(ord('B'))
# print(ord('E'))

# print(chr(65))

# for i in range(ord('A'), ord('Z')+1):
#     print(chr(i))


import pandas as pd

with open("parole.csv", "w") as fwriter:
    fwriter.write("parole")

df = pd.read_csv("parole.csv")

print(df)
df.to_json("parole.json")

