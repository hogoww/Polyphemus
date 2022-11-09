debugger
startpc
	^closureOrNil
		ifNil:	[self compiledCode initialPC]
		ifNotNil: [closureOrNil startpc]