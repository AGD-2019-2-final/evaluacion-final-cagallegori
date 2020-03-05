import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == '__main__':

    for line in sys.stdin:

        cont, col1, col2, col3 = line.split(",")
        sys.stdout.write("{}   {}   {}".format(col1, col2, col3))
