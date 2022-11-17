class-variables
classVariableNamed: aString 
	| slotIndex |
	self oopInstanceSide oopAllClassVariablesNames doWithIndex: [ :o :i | o asString = aString ifTrue: [ slotIndex := i ] ].
	^ slotIndex ifNotNil: [ self oopAllClassVariables at: slotIndex ]