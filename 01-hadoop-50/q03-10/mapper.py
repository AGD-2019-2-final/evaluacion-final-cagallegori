import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    for line in sys.stdin:
        line = line.strip()
        line = line.split(",")
        clave = line[0]
        valor = line[1]
        sys.stdout.write("{},{},{}\n".format(valor,clave,valor))