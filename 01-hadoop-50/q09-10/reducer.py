import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    
    cont = 1
    
    for line in sys.stdin:
        if cont <= 5:
            colz, col1, col2, col3 = line.split("\t")
            sys.stdout.write("{}   {}   {}".format(col1, col2, col3))
            cont += 1