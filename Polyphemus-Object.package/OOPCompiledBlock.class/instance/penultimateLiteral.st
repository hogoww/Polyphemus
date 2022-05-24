accessing
penultimateLiteral
	"offset by one because the method header is in slot 1"
	^ self literalAt: self numberOfLiterals - 1