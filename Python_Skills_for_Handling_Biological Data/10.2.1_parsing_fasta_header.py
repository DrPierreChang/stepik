with open("protein_seq.txt", "r") as fin:
    for line in fin.readlines():
        if line.startswith(">"):
            header = line
            break

with open("seq.header", "w") as fout:
    fout.write(header)
