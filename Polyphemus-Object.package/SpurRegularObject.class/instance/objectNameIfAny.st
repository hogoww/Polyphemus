printing
objectNameIfAny
	| className |
	address = memory nilObject ifTrue: [ ^ #nilObject ].
	address = memory trueObject ifTrue: [ ^ #trueObject ].
	address = memory falseObject ifTrue: [ ^ #falseObject ].
	address = memory freeListsObj ifTrue:[ ^ #freeLists ].
	address = memory classTableRootObj ifTrue: [ ^ #classTable ].
	address = memory specialObjectsOop ifTrue: [ ^ #specialObjectArray ].
	address = memory rememberedSetObj ifTrue: [ ^ #rememberSet ].
	self isClassTablePage = 0 ifFalse: [ ^ #classTablePage ]. 


	className := self oopClass className.
	className = 'Bad class' ifFalse: [ ^ 'Instance of ', className ].
	^ address printString