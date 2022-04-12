accessing
slotAt: anInteger

	^ self image objectForOop: (object fetchPointer: anInteger)