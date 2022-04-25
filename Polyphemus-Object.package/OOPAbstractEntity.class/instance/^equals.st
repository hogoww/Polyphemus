inspection
= anotherObject
	| compareTo |
	compareTo := anotherObject isInteger ifTrue: [ anotherObject ] ifFalse: [ anotherObject address ]. 

	^ compareTo = address