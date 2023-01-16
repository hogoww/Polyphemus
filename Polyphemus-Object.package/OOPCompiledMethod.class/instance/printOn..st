printing
printOn: aStream
	self oopMethodClass printOn: aStream.
	aStream << ' >> #'.
	self oopSelector printOn: aStream