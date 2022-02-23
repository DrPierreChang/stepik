absorbance = 3.741
coeff = 0.02
p_length = 1


dna_concentration = round(absorbance / (coeff * p_length), 1)

print(dna_concentration)