from math import log

deltaG0 = -30.7
R = 0.00823
T = 298.0
ADP = 1.7
P_in = 4.0
ATP = 3.7

deltaG = deltaG0 + R * T * log(ADP * P_in / ATP)

# round deltaG to required number of dps  as in last step
deltaG = round(deltaG, 3)

print(deltaG)