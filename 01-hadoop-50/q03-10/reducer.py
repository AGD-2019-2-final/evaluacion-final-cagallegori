import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == '__main__':

    for line in sys.stdin:

        val1, clave, val2 = line.split(",")
        sys.stdout.write("{},{}".format(clave, val2))