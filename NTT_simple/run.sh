#!/bin/bash
cc -DNDEBUG -D_BSD_SOURCE -DNDEBUG -Wall -std=c99 -O3 -c test_ntt.c
cc -DNDEBUG -D_BSD_SOURCE -DNDEBUG -Wall -std=c99 -O3 -c ntt.c
cc -DNDEBUG -D_BSD_SOURCE -DNDEBUG -Wall -std=c99 -O3 -c test_ntt_tables.c
cc -DNDEBUG -D_BSD_SOURCE -DNDEBUG -Wall -std=c99 -O3 -c test_bitrev_tables.c
cc -DNDEBUG -D_BSD_SOURCE -DNDEBUG -Wall -std=c99 -O3 -c sort.c
cc test_ntt.o ntt.o test_ntt_tables.o test_bitrev_tables.o sort.o -o test_ntt
./test_ntt