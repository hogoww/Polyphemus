accessing
literalAt: anIndex
	"The ultimate is not counted and is the methodClass penultimate is selector"
	(anIndex between: 1 and: self numberOfLiterals) ifFalse: [ SubscriptOutOfBounds signal ].
	^ self slotAt: anIndex + 1