#!/usr/bin/env nextflow

params.str = 'Hello world!'


process generateIds {

    script:
    """
    /home/olli/gits/helloNextflow/generate_ids.py
    """

}

process generateIdsTemp {

    script:
    template 'generate_ids.py'


}

process generateIdsDirect {

    script:

    """

    #!/usr/bin/env python 
    import csv
    import numpy as np
    from sys import argv
    from functools import reduce
    
    USAGE_MSG = "usage generate_ids.py id_no id_len"
    
    
    if len(argv) > 2:
        try:
            ids_no = int(argv[1])
            ids_len = int(argv[2])
        except:
            print(USAGE_MSG)
            exit(-1)
    else:
        print('using std parameters')
        ids_no = 1000
        ids_len = 100
    
    ids = np.random.randint(0,10,size = (ids_no,ids_len))
    ids = np.array([int(''.join([str(y) for y in list(x)])) for x in ids])
    np.savetxt('ids.txt',ids,fmt='%d')




    """

}

x = Channel.from('a','b','c')

process printSomething {

    input :
    val x

    exec:
    println "Hello Mr. $x"

}
