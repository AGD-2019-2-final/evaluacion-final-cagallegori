import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == '__main__':

    clave_act = None
    total = 0

    for line in sys.stdin:

        clave, val = line.split("\t")
        val = int(val)

        if clave == clave_act:
            total += val
        else:
            if clave_act is not None:
                sys.stdout.write("{}\t{}\n".format(clave_act, total))

            clave_act = clave
            total = val

    sys.stdout.write("{}\t{}\n".format(clave_act, total))
