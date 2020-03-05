import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    
    clave_act = None
    total = ""
    
    for line in sys.stdin:
        
        clave,na, val = line.split("\t")
        val = str(int(val))

        if clave == clave_act:
            total = total + "," + val
        else:
            if clave_act is not None:
                sys.stdout.write("{}\t{}\n".format(clave_act, total))

            clave_act = clave
            total = val

    sys.stdout.write("{}\t{}\n".format(clave_act, total))