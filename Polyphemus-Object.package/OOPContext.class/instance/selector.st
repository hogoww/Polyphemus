debugger
selector
	
	^self compiledCode selector ifNil: [self compiledCode defaultSelector].