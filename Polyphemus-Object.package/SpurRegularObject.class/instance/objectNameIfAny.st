printing
objectNameIfAny
	address = memory nilObject ifTrue: [ ^ #nilObject ].
	address = memory trueObject ifTrue: [ ^ #trueObject ].
	address = memory falseObject ifTrue: [ ^ #falseObject ].
	address = memory freeListsObj ifTrue:[ ^ #freeList ].
	^ address printString