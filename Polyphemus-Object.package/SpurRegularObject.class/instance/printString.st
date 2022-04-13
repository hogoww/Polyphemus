testing
printString
	address = memory nilObject ifTrue: [ ^ #nilObject ].
	address = memory trueObject ifTrue: [ ^ #trueObject ].
	address = memory falseObject ifTrue: [ ^ #falseObject ].
	^ address