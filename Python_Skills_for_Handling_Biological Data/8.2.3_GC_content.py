dna_seq = "GGCGACCCTAGCGACCTTAC"
GC_counts = 0

for base in "CG":
    GC_counts += dna_seq.count(base)

GC_content = GC_counts * 100 / len(dna_seq)

print ("GC content is: {}".format(GC_content))
