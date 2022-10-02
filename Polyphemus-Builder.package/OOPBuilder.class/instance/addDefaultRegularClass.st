default
addDefaultRegularClass
	| newClass |

	newClass := memory
		allocateSlotsInOldSpace: 3
		format: memory nonIndexablePointerFormat
		classIndex: self defaultClassIndex.
	
	memory storePointer: 0 ofObject: newClass withValue: memory nilObject.
	memory storePointer: 1 ofObject: newClass withValue: memory nilObject.
	memory storePointer: 2 ofObject: newClass withValue: (memory integerObjectOf: 42).
		
	memory ensureBehaviorHash: newClass.
	
	self assert: (memory hashBitsOf: newClass) ~= 0.
	^ newClass