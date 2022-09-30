accessing-slots
allSlots

	| abnormal |
	^ (1 to: self numSlots) collect: [ :anIndex | 
		  [ self reifiedSlotAt: anIndex ] onErrorDo:  [ 
		abnormal := OOPReferencedAbnormalEntity newFor: (self slotAt: anIndex) size: 0 on: memory.
		abnormal addReferencer: self.
		memory addAbnormal: abnormal.
		abnormal
	 ] ]