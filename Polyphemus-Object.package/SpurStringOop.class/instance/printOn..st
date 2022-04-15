printing
printOn: aStream
	^ aStream << self spurLayout asLocalByteArray asString