import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':

    clave_act = None
    total = 0
    counter = 0
    prom = 0

    for line in sys.stdin:

        clave, val = line.split("\t")
        val = float(val)

        if clave == clave_act:
            total += val
            counter += 1
            prom = total/counter
        else:
            if clave_act is not None:
                prom = total/counter
                sys.stdout.write("{}\t{}\t{}\n".format(clave_act, total, float(prom)))

            clave_act = clave
            total = val
            counter = 1

    sys.stdout.write("{}\t{}\t{}\n".format(clave_act, total, prom))