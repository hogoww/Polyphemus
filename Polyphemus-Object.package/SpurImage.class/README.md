"| version (4 bytes) | headerSize (4 bytes) | datasize (4 bytes) | old base address  (4 bytes) | special objects oop (4 bytes) | = 20 bytes
 | last hash (4 bytes)| saved window size (4 bytes) | headerFlags (4 bytes) | extraVMMemory (4bytes) | stack pages (2 bytes)   | = 18 bytes
 | native method zone size (2 bytes) | eden size (4 bytes) | semaphore table max size (2 bytes) | the2ndUnknownShort (2 bytes) | = 10 bytes
 | first segment size (4 bytes) | free old space (4 bytes) | = 8 bytes
 | The rest 8 bytes are empty"

(spur specialObjectsArray slotAt: 1) address = spur firstObject address.