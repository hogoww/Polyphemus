debugger
numArgs

	"This can be a WideSymbol, this method is there for decompiler"

	self oopClassName = 'WideSymbol'
		ifTrue: [ ^self content numArgs]
		ifFalse: [ self error: 'You are in undefined world' ]