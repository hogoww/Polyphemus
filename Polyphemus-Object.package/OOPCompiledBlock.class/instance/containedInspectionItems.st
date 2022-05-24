inspection
containedInspectionItems
	| counter res |
	"Possible others information we could add: numberOfArguments/temporaries, isPrimitive and frameSize
	""	^  (numberOfArguments bitShift: 24)
		+ (numberOfTemporaries bitShift: 18) 
		+ (isSmall ifTrue: [ 0 ] ifFalse: [ 1 bitShift: 17 ])
		+ literals size 
		+ (isPrimitive asBit << 16)"""
	
	counter := 0.
	res := OrderedCollection new: self numSlots + 1.
	res
		add: #hostMethod -> self hostMethodOop;
		add: #methodHeader -> self methodHeader;
		add: #numLiterals -> self numberOfLiterals.
	counter := 0.
	self allLiterals collect: [ :literal | 
		counter := counter + 1.
		('literal ', counter printString) -> literal.
		] into: res.
	
	^res