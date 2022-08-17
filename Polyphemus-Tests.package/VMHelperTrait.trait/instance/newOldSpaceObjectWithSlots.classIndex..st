instance creation
newOldSpaceObjectWithSlots: slots classIndex: anIndex
	
	| format |
	format := slots = 0 ifTrue: [ memory zeroSlotsNonIndexablePointerFormat ] ifFalse: [ memory arrayFormat ].
	
	^ self
		newOldSpaceObjectWithSlots: slots
		format: format
		classIndex: anIndex