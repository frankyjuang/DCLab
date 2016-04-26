from sys import argv, stdout

with open(argv[1], 'rb') as f:
    for line in f:
        for i in range(len(line)):
            if i != 0:
                stdout.write(' ')
            stdout.write('%i'%line[i])
        stdout.write('\n')
