testing
= anotherObject
	"if an oop is provided directly, we still allow the comparison"
	(anotherObject isKindOf: SmallInteger) ifTrue: [ ^ anotherObject = address ].
	
	^ anotherObject address value = address value