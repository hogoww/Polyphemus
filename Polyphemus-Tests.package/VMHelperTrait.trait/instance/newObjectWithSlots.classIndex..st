instance creation
newObjectWithSlots: slots classIndex: anIndex

	| format |
	format := slots = 0
		          ifTrue: [ memory zeroSlotsNonIndexablePointerFormat ]
		          ifFalse: [ memory nonIndexablePointerFormat ].

	^ self newObjectWithSlots: slots format: format classIndex: anIndex