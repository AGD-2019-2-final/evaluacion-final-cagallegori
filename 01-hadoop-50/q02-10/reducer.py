import sys
#
#  >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == '__main__':

    clave_act = None
    maxim = 0
    total = 0

    for line in sys.stdin:

        clave, val = line.split("\t")
        val = int(val)

        if clave == clave_act:
            maxim = max(val,total)
            total = maxim
        else:
            if clave_act is not None:
                sys.stdout.write("{}\t{}\n".format(clave_act, maxim))

            clave_act = clave
            total = val

    sys.stdout.write("{}\t{}\n".format(clave_act, maxim))