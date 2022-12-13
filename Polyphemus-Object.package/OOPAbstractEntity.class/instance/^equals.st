accessing
= anotherObject
	| compareTo |
	"anotherObject isOop ifFalse:  [ ^false ]."
	compareTo := anotherObject isInteger ifTrue: [ anotherObject ] ifFalse: [ [anotherObject address] on: Error do: [ ^false ] ]. 

	^ compareTo = address