testing
isString

	self oopClassName = 'WideSymbol'
		ifTrue: [ ^ true ]
		ifFalse: [ self error: 'You are in undefined world' ]