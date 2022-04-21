accessing
printOn: aStream
	self methodClass printOn: aStream.
	aStream << ' >> #'.
	self selector printOn: aStream