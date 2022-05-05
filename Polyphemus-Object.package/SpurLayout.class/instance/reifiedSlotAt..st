accessing
reifiedSlotAt: anInteger

	^ OOPAbstractEntity newFor: (object fetchPointer: anInteger) image: object image