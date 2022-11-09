debugger
endPC
	^closureOrNil
		ifNil:	[self compiledCode endPC]
		ifNotNil: [closureOrNil endPC]