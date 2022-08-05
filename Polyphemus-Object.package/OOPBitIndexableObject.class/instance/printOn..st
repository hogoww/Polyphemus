printing
printOn: aStream
	| className |
	className := self oopClass oopClassName.
	className = 'Bad class' 
		ifTrue: [ aStream << self descriptionString << '(' << address << ')' ]
		ifFalse: [ aStream <<  'Instance of ' << className ].