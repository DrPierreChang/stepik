from codon_table import codon_table

with open("test_dna", "r") as fin:
    test_dna = fin.read().strip()


# Obtain mRNA string
rna = test_dna.replace('T', 'U')

print("Proteins from test_dna ORFs")
# translate one frame at a time
for frame in range(3):
    prot = ""
    print('>' + 'Reading frame ' + str(frame + 1))
    for i in range(frame, len(rna), 3):
        codon = rna[i:i + 3]
        if codon in codon_table:
            if codon_table[codon] == 'STOP':
                prot = prot + '*'
            else:
                prot = prot + codon_table[codon]

    # format to blocks of 60 columns
    i = 0
    while i < len(prot):
        print(prot[i:i + 60])
        i = i + 60
