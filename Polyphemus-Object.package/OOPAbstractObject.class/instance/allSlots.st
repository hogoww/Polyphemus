accessing-slots
allSlots

	| abnormal |
	^ (1 to: self numSlots) collect: [ :anIndex | 
		  [ self reifiedSlotAt: anIndex ] onErrorDo:  [ 
		"We should not modify memory like this, discuss agian with Pierre to know what we want"
		self slotAt: anIndex put: memory reifiedNilObject. 
		
		abnormal := OOPAbnormalEntity newFor: (self slotAt: anIndex) size: 0 on: memory.
		memory addAbnormal: abnormal.
		abnormal
	 ] ]