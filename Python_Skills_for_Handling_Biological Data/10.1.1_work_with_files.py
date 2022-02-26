data = [] # list to hold data from the input file

input_file = open("my_file.txt")

for line in input_file:
    count = int(line.strip())  # converting each stat to an integer. This can change depending on the problem being solved.
    data.append(count)  #adding the stats to the list we created for easy data manipulation.
data.sort()  # needed for clarity.

# Basic Python operations in use and use of variables

n_items = len(data)
total = sum(data)
highest = max(data)
lowest = min(data)

input_file.close()

# Writing to output file

out_file = open("stats.txt","w")

out_file.write("Number of SNP IDs: {}\n".format(n_items))
out_file.write("Total SNPs: {}\n".format(total))
out_file.write("Highest frequency: {}\n".format(highest))
out_file.write("Lowest frequency: {}\n".format(lowest))
out_file.close()
