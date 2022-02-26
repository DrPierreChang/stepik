complement_dictionary = {"A":"T", "T":"A", "G":"C", "C":"G"}
test_dna = "GGCCAACTAATGGTAC"
answer = "CCGGTTGATTACCATG"


def complement(test_dna):
    return "".join(complement_dictionary[base] for base in test_dna)


print(complement(test_dna) == answer)
