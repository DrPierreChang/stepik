seq = []
with open('seq_file.txt', 'r') as f:
    for line in f.readlines(): #Parse each line in the file
        line = line.strip()
        if '>' not in line:
            seq.append(line)

seq = "".join(seq)
gc = ((seq.count('C') + seq.count('G'))/len(seq)) * 100

print('GC content is: {}'.format(gc))
