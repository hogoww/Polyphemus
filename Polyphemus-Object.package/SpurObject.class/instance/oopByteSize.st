accessing-header
oopByteSize
	
	| numberOfSlots |
	numberOfSlots := self numSlots.
	^ (numberOfSlots = 0
		ifTrue: [ 1 ]
		ifFalse: [ numberOfSlots ]) * self wordSize.