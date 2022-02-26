g = open("study_proteins.fasta", "r")
cyp_ac = "P08684"
result = None
while result == None:
    for line in g:
        if line.startswith('>'):
            ac = line.split('|')[1]
            if ac == cyp_ac:
                result = line.strip()
                print(result)

g.close()