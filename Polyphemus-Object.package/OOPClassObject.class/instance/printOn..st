testing
printOn: aStream
	^ [ aStream << self className ] on: Error do: [ address printOn: aStream ]