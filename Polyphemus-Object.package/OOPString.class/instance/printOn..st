printing
printOn: aStream
	^ aStream << self asLocalByteArray asString