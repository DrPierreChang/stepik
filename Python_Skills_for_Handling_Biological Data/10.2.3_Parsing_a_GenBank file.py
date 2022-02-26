f = open("Schistosoma_m.gb","r")
g = open("AF269252.fasta","w")

#set a flag
flag = 0

for line in f:
    if line.startswith("ACCESSION"):  ## line containing the accession number
        AC = line.split()[1].strip() # store the accession in a variable
        g.write('>' + AC + '\n')

    elif line.startswith("ORIGIN"): # section with the sequence
        flag = 1
    elif flag == 1:
        fields = line.split() # store sequence information in a list
        if fields != []:
            seq = ''.join(fields[1:]) # extract the sequence

            ## write the sequence to the output file
            g.write(seq.upper() + "\n")
f.close()
g.close()
