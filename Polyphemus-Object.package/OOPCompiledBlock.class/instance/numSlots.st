accessing
numSlots
	"Override because we want to remove bytecodes accesses"
	^ self numberOfLiterals + 1 "method header"