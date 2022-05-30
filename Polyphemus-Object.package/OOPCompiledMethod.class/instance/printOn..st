accessing
printOn: aStream
	self oopMethodClass printOn: aStream.
	aStream << ' >> #'.
	self selector printOn: aStream