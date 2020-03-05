import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    for line in sys.stdin:
        line = line.strip()
        line = line.split("   ")
        col1 = line[0]
        col2 = line[1]
        col3 = line[2]
        col2 = col2.split("-")
        anio = col2[0]
        mes = col2[1]
        dia = col2[2]
        sys.stdout.write("{}\t1\n".format(mes))