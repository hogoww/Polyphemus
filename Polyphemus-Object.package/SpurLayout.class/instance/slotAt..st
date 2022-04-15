accessing
slotAt: anInteger

	^ AbstractSpurEntity newFor: (object fetchPointer: anInteger) image: object image