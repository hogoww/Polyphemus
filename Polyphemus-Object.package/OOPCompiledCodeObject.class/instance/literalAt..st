accessing-literals
literalAt: anIndex
	"The ultimate is not counted and is the methodClass penultimate is selector"
	(anIndex between: 1 and: self numberOfLiterals) ifFalse: [ SubscriptOutOfBounds signal ].
	^ self reifiedSlotAt: anIndex + 1