complement_dictionary = {"A":"T", "T":"A", "G":"C", "C":"G"}
test_dna = "GTAAATCCCTTTCCCT"


def complement(test_dna):
    return "".join(complement_dictionary[base] for base in test_dna)[::-1]


print(complement(test_dna))
