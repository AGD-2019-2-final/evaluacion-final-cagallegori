import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    for line in sys.stdin:
        line = line.strip()
        line = line.split(",")
        clave = line[3]
        valor = line[4]
        sys.stdout.write("{}\t{}\n".format(clave,valor))