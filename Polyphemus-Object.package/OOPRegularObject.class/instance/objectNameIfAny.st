printing
objectNameIfAny

	| className class |
	memory nilObject = address ifTrue: [ ^ #nilObject ].
	memory trueObject = address ifTrue: [ ^ #trueObject ].
	memory falseObject = address ifTrue: [ ^ #falseObject ].
	memory specialObjectsOop = address ifTrue: [ ^ #specialObjectArray ].

	class := self oopClass.
	class isClassOop
		ifFalse: [ className := 'Bad class' ]
		ifTrue: [ className := self oopClass oopClassName ].
	className = 'Bad class' ifFalse: [ ^ 'Instance of ' , className ].
	^ address printString