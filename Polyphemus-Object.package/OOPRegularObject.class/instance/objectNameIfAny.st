printing
objectNameIfAny
	| className |
	memory nilObject = address ifTrue: [ ^ #nilObject ].
	memory trueObject = address ifTrue: [ ^ #trueObject ].
	memory falseObject = address ifTrue: [ ^ #falseObject ].
	memory specialObjectsOop = address ifTrue: [ ^ #specialObjectArray ].

	className := self oopClass className.
	className = 'Bad class' ifFalse: [ ^ 'Instance of ', className ].
	^ address printString