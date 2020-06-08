#!/usr/bin/env python3
import numpy as np
import pandas as pd

df = pd.read_csv("flightdelay2007.csv", usecols=['Dest'])
print(df["Dest"].value_counts().head(3))

print("This is my script, Pankaj")
exit()
