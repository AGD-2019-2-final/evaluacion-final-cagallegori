import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':

    clave_act = None
    maxim = 0
    minim = 0
    totalmax = 0
    totalmin = 0

    for line in sys.stdin:

        clave, val = line.split("\t")
        val = float(val)

        if clave == clave_act:
            maxim = max(val,totalmax)
            minim = min(val,totalmin)
            totalmax = maxim
            totalmin = minim
        else:
            if clave_act is not None:
                sys.stdout.write("{}\t{}\t{}\n".format(clave_act, totalmax, totalmin))

            clave_act = clave
            totalmax = val
            totalmin = val

    sys.stdout.write("{}\t{}\t{}\n".format(clave_act, maxim, minim))