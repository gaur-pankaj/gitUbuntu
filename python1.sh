#!/usr/bin/env python3
import numpy as np
import pandas as pd

df = pd.read_csv("flightdelay2007.csv", usecols=['Origin', 'ArrDelay'])
arr_delay = df[df["Origin"]=='SFO']
arr_delay.reset_index(drop=True, inplace=True)
arr_delay["ArrDelay"].head(3).to_csv("first3sfo.csv")

exit()
