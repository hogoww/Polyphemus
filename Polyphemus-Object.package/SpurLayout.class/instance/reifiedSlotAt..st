accessing
reifiedSlotAt: anInteger

	^ OOPAbstractEntity newFor: (object fetchPointer: anInteger) memory: object image