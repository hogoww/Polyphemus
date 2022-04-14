testing
printOn: aStream
	^ aStream << ([ self className ] on: Error do: [ address printString ])