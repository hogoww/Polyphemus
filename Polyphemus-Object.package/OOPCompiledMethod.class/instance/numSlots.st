accessing
numSlots
	"Override because we want to remove bytecodes accesses"
	^ 1 + self numberOfLiterals "method header"