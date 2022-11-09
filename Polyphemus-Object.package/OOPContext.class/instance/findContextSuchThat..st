query
findContextSuchThat: aFullBlockClosure 
	
		| context |
	context := self.
	[ context isNil ] whileFalse: [
		(aFullBlockClosure value: context) 
			ifTrue: [ ^ context ].
		context := context sender ].
	^ nil