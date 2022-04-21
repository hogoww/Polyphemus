accessing
literalAt: anIndex
	"The ultimate is not counted and is the methodClass penultimate is selector"
	self assert: anIndex <= (self numberOfLiterals + 1).
	^ self slotAt: anIndex