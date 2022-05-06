special-objects
nextObjectOf: aSpurObject
	| maybeObject |
	maybeObject := SpurObject on: aSpurObject endAddress + self headerSize memory: self.
	^ maybeObject basicNumberOfSlots = 16rFF
		ifTrue: [ maybeObject ]
		ifFalse: [ SpurObject on: aSpurObject endAddress memory: self ].