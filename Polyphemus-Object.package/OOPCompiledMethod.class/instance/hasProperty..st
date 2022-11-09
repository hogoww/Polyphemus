testing
hasProperty: aKey

	| extendedMethodState |
	^ (extendedMethodState := self penultimateLiteral) isMethodProperties
		  ifTrue: [  extendedMethodState includesProperty: aKey ]
		  ifFalse: [ false ]