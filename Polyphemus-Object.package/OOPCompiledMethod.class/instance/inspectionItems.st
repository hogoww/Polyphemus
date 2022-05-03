inspection
inspectionItems 

	| alreadyHandleCollection counter |
"	^  (numberOfArguments bitShift: 24)
		+ (numberOfTemporaries bitShift: 18) 
		+ (isSmall ifTrue: [ 0 ] ifFalse: [ 1 bitShift: 17 ])
		+ literals size 
		+ (isPrimitive asBit << 16)"
	alreadyHandleCollection := super inspectionItems.
	alreadyHandleCollection add: #numLiterals -> self numberOfLiterals;
	add: #selector -> self selector;
	add: #methodClass -> self methodClass;
	add: #methodHeader -> self methodHeader.
	counter := 0.
	self allLiterals collect: [ :literal | 
		counter := counter + 1.
		('literal ', counter printString) -> literal.
		] into: alreadyHandleCollection.
	
	^alreadyHandleCollection