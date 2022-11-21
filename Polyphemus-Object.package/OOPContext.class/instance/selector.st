debugger
selector
	^self compiledCode oopSelector ifNil: [self compiledCode defaultSelector].