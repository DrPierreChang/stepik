accession_numbers = []

with open("multi_fasta.txt", "r") as fin:
    for line in fin.readlines():
        if line.startswith(">"):
            accession_numbers.append(line.split("|")[1])

print(accession_numbers)
