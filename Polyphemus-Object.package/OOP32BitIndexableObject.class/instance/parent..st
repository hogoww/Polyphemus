debugger
parent: aRBMessageNode 

		"See numArgs comment, content is duplicated because other classes should not know content"
	
		| content |
		self oopClassName = 'WideSymbol'
		ifTrue: [ 
			content := self content.
			^content parent: aRBMessageNode ]
		ifFalse: [ self error: 'You are in undefined world' ]