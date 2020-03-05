import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    for line in sys.stdin:
        line = line.strip()
        line = line.split("\t")
        col1 = line[0]
        colz = col1.zfill(2)
        col2 = line[1]
        col2 = col2.split(",")
        for i in col2:
            sys.stdout.write("{}\t{}\t{}\n".format(i,colz,col1))      