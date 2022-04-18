helpers - classes
newClassInOldSpaceWithSlots: numberOfSlots
	| newClass formatWithSlots |

	newClass := memory
		allocateSlotsInOldSpace: 3 + numberOfSlots
		format: memory nonIndexablePointerFormat
		classIndex: memory arrayClassIndexPun.
	
	memory storePointer: 0 ofObject: newClass withValue: memory nilObject.
	memory storePointer: 1 ofObject: newClass withValue: memory nilObject.
	
	formatWithSlots := memory nonIndexablePointerFormat << 16 + numberOfSlots. 
	memory storePointer: 2 ofObject: newClass withValue: (memory integerObjectOf: formatWithSlots ).
		
	^ newClass	