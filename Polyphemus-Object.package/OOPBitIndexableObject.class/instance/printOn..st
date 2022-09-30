printing
printOn: aStream
	| className |
	className := self oopClass oopName.
	className = 'Bad class' 
		ifTrue: [ aStream << self descriptionString << '(' << address << ')' ]
		ifFalse: [ aStream <<  'Instance of ' << className ].